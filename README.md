# OptionPicker

When building query strings to pass on to an API it is nice to be able to manage the allowed options for each parameter in a nice way.

## Installation

Add this line to your application's Gemfile:

    gem 'option_picker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install option_picker

## Usage

Define your default option and an array of allowed options:

  SORT_DIR_OPTIONS = OptionPicker::Options.new('asc', ['asc', 'desc'])

Then pass in the value you want to test. The value will be returned if it is allowed, otherwise the default value will be returned.

  SORT_DIR_OPTIONS['asc']  # => 'asc'
  SORT_DIR_OPTIONS['desc'] # => 'desc'
  SORT_DIR_OPTIONS['foo']  # => 'asc'

You can always index by `String` or `Symbol`. So the following are identical:

  SORT_DIR_OPTIONS['desc']  # => 'desc'
  SORT_DIR_OPTIONS[:desc]   # => 'desc'

### Option Translation

Sometimes the option values you accept locally are not the same as those that you need to pass on. To a 3rd party API, for example. To aid in this, instead of a simple array of allowed values, you can use a `Hash` as the second argument to perform a translation:

  SORT_BY_OPTIONS = OptionPicker::Options.new('creationTimestamp', {
    created_on: 'creationTimestamp',
    published_on: 'publishedTimestamp',
    title: 'title'
  })

  SORT_BY_OPTIONS['created_on'] # => 'creationTimestamp'
  SORT_BY_OPTIONS['title']      # => 'title'
  SORT_BY_OPTIONS['foo']        # => 'creationTimestamp'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
