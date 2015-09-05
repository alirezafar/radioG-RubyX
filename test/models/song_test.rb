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


end
