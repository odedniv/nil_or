# nil_or [![Gem Version](https://badge.fury.io/rb/nil_or.svg)](http://badge.fury.io/rb/nil_or)

Delegates methods to the target unless nil.

## Getting started

    $ gem install nil_or

Or in your Gemfile:

    gem "nil_or"

## Usage

When am I going to need it? Instead of writing:

    date_of_birth = params[:date_of_birth] ? params[:date_of_birth].to_date : nil

Write:

    date_of_birth = params[:date_of_birth].nil_or.to_date

When x is not nil:

    x = 5
    x.nil_or.to_s
    => "5"
    x.nil_or + 2
    => 7
    x.nil_or.times { |i| puts i }
    ...

But when it is nil:

    x = nil
    x.nil_or.to_s
    => nil
    x.nil_or + 2
    => nil
    x.nil_or.shakalaka(1, 2) { does_nothing }
    => nil

## Contributing

1. Fork it ( https://github.com/odedniv/nil_or/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
