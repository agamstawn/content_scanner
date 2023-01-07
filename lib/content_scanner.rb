class ContentScanner

  def initialize(folder_path)
    @target_path = folder_path
  end

  def check_params_folder
    return true if !@target_path.eql?("")
    false
  end

  def get_file_names
    @files = Dir.entries("target/#{@target_path}/.") - %w{. ..}
  end

  def scan_folder
    # read file content
    contents = get_file_names.map{|file| File.open("target/#{@target_path}/#{file}").read}
    # hash for store the results of scanning
    result = Hash.new(0)
    # counting the same content
    contents.each do |v|
      result[v] += 1
    end
    # get final result (content, count of the same content)
    contents = result.max_by{|k,v| v}
  end

end
