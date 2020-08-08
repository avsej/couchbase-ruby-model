# Couchbase Model [![tests](https://github.com/couchbase/couchbase-ruby-model/workflows/tests/badge.svg)](https://github.com/couchbase/couchbase-ruby-model/actions?query=workflow%3Atests)

Couchbase Model helps to define shape of your data, and exposes tools to manipulate it using Couchbase Server APIs.

## Support and Feedback

If you find an issue, please file it in [our JIRA issue tracker](https://couchbase.com/issues/browse/RCBC).
Also you are always welcome on [our forum](https://forums.couchbase.com/c/ruby-sdk).

Please attach version information to ticket/post. To obtain this information use the following command:

    $ ruby -r 'couchbase/model' -e 'p Couchbase::VERSION'

## Installation

The library tested with the MRI 2.5, 2.6 and 2.7. Supported platforms are Linux and MacOS.

Add this line to your application's Gemfile:

```ruby
gem "couchbase-model", "1.0.0.alpha.1"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install --pre couchbase-model

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

## Generate Documentation

To generate documentation `yard` library is highly recommended.

    $ gem install yard

The following steps will generate API reference for selected git tag:

    $ rake doc

Now the API reference is accessible using web browser (where `VERSION` is current version of the SDK)

    $ firefox doc/couchbase-ruby-model-VERSION/index.html

## License

The gem is available as open source under the terms of the [Apache2 License](https://opensource.org/licenses/Apache-2.0).
