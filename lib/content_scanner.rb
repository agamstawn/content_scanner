class ContentScanner

  def initialize(folder_path)
    @target_path = folder_path
  end

  def check_params_folder
    return true if !@target_path.eql?("")
    false
  end

end
