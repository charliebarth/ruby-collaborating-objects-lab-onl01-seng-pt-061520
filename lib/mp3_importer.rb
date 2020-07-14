class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    f = Dir[@path + "/*.mp3"]
    f.each do |file|
      file[@path] = ""
    end
    Dir[@path + "/*.mp3"].select {|f| File.file? f}
    #Dir.entries("#{@path}" + "/*.mp3").select {|f| !File.directory? f}
    
  end 
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end