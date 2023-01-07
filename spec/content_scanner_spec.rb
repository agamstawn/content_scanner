require 'content_scanner'

describe 'ContentScanner' do
  it 'check params path folder is not empty' do
    cs = ContentScanner.new("xfolder")
    folder = cs.check_params_folder
    expect(folder).to be_truthy
  end

  it 'folder is not empty' do
    cs = ContentScanner.new("first_folder")
    files = cs.get_file_names
    expect(files).to_not eql([])
  end

  it 'scan first folder test' do
    cs = ContentScanner.new("first_folder")
    files = cs.scan_folder
    expect(files).to eql(["Hello", 3])
  end

  it 'scan seconf folder test get most appears same content' do
    cs = ContentScanner.new("second_folder")
    files = cs.scan_folder
    expect(files).to eql(["Hi", 3])
  end

  it 'scan third folder test with different extension' do
    cs = ContentScanner.new("third_folder")
    files = cs.scan_folder
    expect(files).to eql(["Bye", 2])
  end

end
