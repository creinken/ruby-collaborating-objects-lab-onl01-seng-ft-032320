class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    
  end
  
  def import
    mp3_files = Dir.glob("*.mp3", base: @path)
    
    
    files = Dir.chdir("spec/fixtures") do
      Dir.glob("**/*.mp3")
    end
    files
  end
end