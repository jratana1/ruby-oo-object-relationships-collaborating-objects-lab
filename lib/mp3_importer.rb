class MP3Importer
    attr_accessor :path

    def initialize (path)
        @path = path
    end

    def files
        files = Dir.glob("**/*.mp3")
        files.map {|file| File.basename(file)}
    end

    def import
        self.files.each {|file| Song.new_by_filename(file)}
    end
end