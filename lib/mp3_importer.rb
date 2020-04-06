class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path.delete_prefix("./")
  end
  
  def files
    mp3_files = Dir.chdir(@path) do
      Dir.glob("**/*.mp3")
    end
    mp3_files
  end
  
  def import
    files
  end
end