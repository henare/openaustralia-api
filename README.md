# Open::Australia

http://github.com/kuperov/openaustralia_api

This is a ruby wrapper for the Open Australia website (http://openaustralia.org.au).

## Requirements

* An account on openaustralia.org
* An API key obtained from http://openaustralia.org/api

## Installation

Add this line to your application's Gemfile:

    gem 'openaustralia'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openaustralia

## Features/problems

* Wraps the current API calls
* So far no validation on validity of parameters or search terms

## Usage

    # spit out excerpts of what's been said
    # about the emissions trading scheme

    require 'openaustralia'

    api = OpenAustralia::Api.new 'YOUR-API-KEY-HERE'

    search = api.get_hansard :search => 'emissions trading'
    search.results.each do |result|
      puts result.body
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
