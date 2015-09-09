require 'test_helper'

class SongTest < ActiveSupport::TestCase

def setup
  @song = Song.new(songtitle: "Bavaram Nemisheh", speed: "120", format: "mp3")
end

test "Song should be valid" do
  assert @song.valid?
end

test "Title should be present" do
  @song.songtitle = " "
  assert_not @song.valid?
end

test "Title length should not be too long" do
  @song.songtitle = "a" * 101
  assert_not @song.valid?
end

test "Format should be entered." do
  @song.format = " "
    assert_not @song.valid?
end

test "Filename should be entered." do
  @song.filename = " "
      assert_not @song.valid?
end

test "Artwork URL should be entered." do
  @song.artworkurl = " "
  assert_not @song.valid?
end

test "Artist ID should be entered." do
  @song.artist_id = " "
  assert_not @song.valid?
end


end
