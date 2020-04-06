class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path.delete_prefix("./")
  end
  
  def files
    files = Dir.chdir(@path) do
      Dir.glob("**/*.mp3")
    end
    files
  end
  
  def import
    files = Dir.chdir(@path) do
      Dir.glob("**/*.mp3")
    end
    files
  end
end