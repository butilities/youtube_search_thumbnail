require 'test_helper'

class YoutubeSearchThumbnailTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil YoutubeSearchThumbnail::VERSION
  end

  def test_it_get_thumbnail
    url = "https://www.youtube.com/results?search_query=cat"
    a =YoutubeSearchThumbnail::Yst.new
    puts a.get(url,0,"small")
  end

  def test_it_get_thumbnail_async
    url = "https://www.youtube.com/results?search_query=cat"
    a =YoutubeSearchThumbnail::Yst.new
    puts a.future.get(url,0,"small")
  end

  def test_it_works_on_different_encoding
    url = "https://www.youtube.com/results?search_query=That\u{2019}S What I Like+Bruno Mars"
    a =YoutubeSearchThumbnail::Yst.new
    puts a.get(url,0,"small")
  end


end
