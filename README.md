# Refile::Optimizer

[Refile](https://github.com/refile/refile) + [mini magick](https://github.com/refile/refile-mini_magick) + [image optimization](https://github.com/toy/image_optim)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "refile-optimizer"
```

Add this line for no rails apps:

```ruby
require "refile/optimizer"
```

Check [image_optim](https://github.com/toy/image_optim#gem-installation) for binaries instalation.

NOTE: For now, you need to require refile-mini_magick from master.

```ruby
gem "refile-mini_magick", github: "refile/refile-mini_magick"
```

## Usage

All the [mini-magick processing helpers](https://github.com/refile/refile-mini_magick#usage) are available plus:

* /attachments/:token/:backend\_name/**convertoptim**/jpg/:id
* /attachments/:token/:backend\_name/**filloptim**/500/500/:id
* /attachments/:token/:backend\_name/**fitoptim**/500/500/:id
* /attachments/:token/:backend\_name/**limitoptim**/500/500/:id
* /attachments/:token/:backend\_name/**padoptim**/500/500/:id
* /attachments/:token/:backend\_name/**resampleoptim**/500/500/:id

The image gets processed by mini-magic and then passed to image_optim to get its optimized version.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/stacksocial/refile-optimizer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
