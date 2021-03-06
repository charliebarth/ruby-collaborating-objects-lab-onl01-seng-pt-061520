describe '#files' do
    it 'loads all the mp3 files in the path directory' do
      test_music_path = "./spec/fixtures/mp3s"
      music_importer = MP3Importer.new(test_music_path)

      expect(music_importer.files.size).to eq(4)
    end

    it 'normalizes the filename to just the mp3 filename with no path' do
      test_music_path = "./spec/fixtures/mp3s"
      music_importer = MP3Importer.new(test_music_path)

      expect(music_importer.files).to include("Action Bronson - Larry Csonka - indie.mp3")
      expect(music_importer.files).to include("Real Estate - Green Aisles - country.mp3")
      expect(music_importer.files).to include("Real Estate - It's Real - hip-hop.mp3")
      expect(music_importer.files).to include("Thundercat - For Love I Come - dance.mp3")
    end
  end