class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    
  end
  
  def import
    mp3_files = Dir.glob("*.mp3", base:)
  end
end