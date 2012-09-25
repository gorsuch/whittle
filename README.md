# Whittle

Whittle is a command line utility that takes `key=value` input pairs and stores them within Postgresql's `hstore`.

This is very much a work in progress!

## Installation

Add this line to your application's Gemfile:

    gem 'whittle'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whittle

## Usage

```bash
$ echo app=test n=1 foo=bar name=michael | whittle
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
