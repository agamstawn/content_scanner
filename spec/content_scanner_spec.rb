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

end
