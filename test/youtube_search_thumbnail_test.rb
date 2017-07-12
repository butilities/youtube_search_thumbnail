require 'test_helper'

class YoutubeSearchThumbnailTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::YoutubeSearchThumbnail::VERSION
  end

  def test_it_get_thumbnail
    url = "https://www.youtube.com/results?search_query=cat"
    puts YoutubeSearchThumbnail::get(url,0,"small")
  end
end
