# nil_or [![Gem Version](https://badge.fury.io/rb/nil_or.svg)](http://badge.fury.io/rb/nil_or)

Delegates methods to the target unless nil.

## Installation

Add this line to your application's Gemfile:

    gem 'nil_or'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nil_or

## Usage

When am I going to need it? Instead of writing:

```ruby
date_of_birth = params[:date_of_birth] ? params[:date_of_birth].to_date : nil
```

Write:

```ruby
date_of_birth = params[:date_of_birth].nil_or.to_date
```

When x is not nil:

```ruby
x = 5
x.nil_or.to_s
=> "5"
x.nil_or + 2
=> 7
x.nil_or.times { |i| puts i }
...
```

But when it is nil:

```ruby
x = nil
x.nil_or.to_s
=> nil
x.nil_or + 2
=> nil
x.nil_or.shakalaka(1, 2) { does_nothing }
=> nil
```

## Contributing

1. Fork it ( https://github.com/odedniv/nil_or/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
