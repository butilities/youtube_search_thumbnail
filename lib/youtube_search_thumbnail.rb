require "youtube_search_thumbnail/version"
require 'open-uri'
require 'nokogiri'
require 'video_thumb'
require 'celluloid\current'

module YoutubeSearchThumbnail


    def self.get(url, num=1, size="medium")
      result=[]
      url.delete!("^\u{0000}-\u{007F}")
      element = ".yt-lockup-title a"
      doc = Nokogiri::HTML(open(url))
      doc.css(element).each do |s|
        unless s.text.empty? then
          result<< "https://www.youtube.com#{s['href']}"
          # @songs.push(@stn.format_song(s.text.strip.sub(/^[0-9]./, '').titleize.strip))
        end
      end
      result[num-1]
      VideoThumb.get(result[num-1], size)
    end

    class Yst
      include Celluloid

      def get(url, num=1, size="medium")
        YoutubeSearchThumbnail::get(url,num,size)
      end


    end
end
