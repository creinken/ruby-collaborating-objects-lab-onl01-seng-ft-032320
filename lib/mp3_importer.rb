class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path.delete_prefix("./") + "/mp3s"
  end
  
  def files
    
  end
  
  def import
    files = Dir.chdir("spec/fixtures") do
      Dir.glob("**/*.mp3")
    end
    files
  end
end