# ActsAsHistoriable
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'acts_as_historiable', git: 'https://github.com/thanlanuot/acts_as_historiable'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install acts_as_historiable
```
## Migration
Generate migration
 ```bash
 $ rails acts_as_historiable:install:migrations
 ```
 
 And then run migrate as usual
 
 ```bash
 $ rake db:migrate
 ```
## Upgrade
Run this command to get the latest code from master branch
```bash
$ bundle update acts_as_historiable
```
## Add to model
Add this line into your model that you want to track its histories
```ruby
class YourModel < ApplicationRecord
  acts_as_historiable
  ...
end
```
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
