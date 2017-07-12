# YoutubeSearchThumbnail

Grab thumbnail from search page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'youtube_search_thumbnail'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youtube_search_thumbnail

## Usage
    # Youtube search url
    url = "https://www.youtube.com/results?search_query=cat"  
    # Thumbnail number as listed on page [1-19]
    number = 1
    #   default: small - 120x90
    #   mqdefault: medium - 320x180
    #   hqdefault: high - 480x360
    #   sddefault: 640x480
    #   maxresdefault: original
    size = "small"
    YoutubeSearchThumbnail.get(url,number,size)
It will return the link to the thumbnail
    
    https://img.youtube.com/vi/5dsGWM5XGdg/default.jpg


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/butilities/youtube_search_thumbnail. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

