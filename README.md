# Ikachan::Client [![Build Status](https://travis-ci.org/studio3104/ikachan-client.png)](https://travis-ci.org/studio3104/ikachan-client)

post message to irc http gateway `ikachan`.

see: https://metacpan.org/module/ikachan

## Installation

Add this line to your application's Gemfile:

    gem 'ikachan-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ikachan-client

## Usage

#### Expamples

```ruby
require 'ikachan/client'

# ikachan server: http://localhost:4979
ikachan = Ikachan::Client.new('localhost')

# ikachan server: http://localhost
ikachan = Ikachan::Client.new('localhost', 80)

# use https, and not verify certificate
ikachan = Ikachan::Client.new('localhost', ssl: true)

# use https, and verify default certificate
ikachan = Ikachan::Client.new('localhost', ssl: ture, verify_ssl: true)

# use https, and verify specified certificate
ikachan = Ikachan::Client.new('localhost', ssl: ture, verify_ssl: true, ca_file: '/path/to/ca_file')
```

###### send NOTICE

```ruby
ikachan.notice('#channel', 'message')
```

###### send PRIVMSG

```ruby
ikachan.privmsg('#chennel', 'message')
```

###### JOIN

```ruby
ikachan.join('#channel')

# authenticate with channel password
ikachan.join('#channel', channel_keyword: 'channel password')
```

###### LEAVE

```ruby
ikachan.leave('#channel')
```

## Contributing

1. Fork it ( http://github.com/studio3104/ikachan-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
