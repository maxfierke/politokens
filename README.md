# Politokens

[![Gem Version](https://badge.fury.io/rb/politokens.svg)](http://badge.fury.io/rb/politokens)
[![Build Status](https://travis-ci.org/maxfierke/politokens.svg?branch=master)](https://travis-ci.org/maxfierke/politokens)
[![Coverage Status](https://coveralls.io/repos/maxfierke/politokens/badge.svg)](https://coveralls.io/r/maxfierke/politokens)

Generate Heroku-like memorable random names to use in your apps or anywhere else, but with a geopolitical twist. Fork of [Haikunator](https://github.com/usmanbashir/haikunator)

## Installation

Add this line to your application's Gemfile:

    gem 'politokens'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install politokens

## Usage

Politokens is pretty simple. There is nothing to configure and it only has a single method, `.politoke`:

```ruby
Politokens.politoke # => "courteous-honduras-4520"

# Token range
Politokens.politoke(100) # => "warmhearted-slovenia-93"

# Don't include the token
Politokens.politoke(0) # => "forceful-denmark"

# Use a different delimiter
Politokens.politoke(9999, '.') # => "courageous.laos.7447"

# No token, no delimiter
Politokens.politoke(0, ' ') # => "thoughtful ghana"
```

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/maxfierke/politokens/issues)
- Fix bugs and [submit pull requests](https://github.com/maxfierke/politokens/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
