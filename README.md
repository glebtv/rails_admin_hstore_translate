# RailsAdminHstoreTranslate

## Changes

### 0.2
  
  No longer depend on hstore_translate to allow usage of [jsonb_translate](https://github.com/glebtv/jsonb_translate)

  RailsAdminHstoreTranslate adds tabbed interface to [rails_admin](https://github.com/sferik/rails_admin) for multilingual models (using [hstore_translate](https://github.com/Leadformance/hstore_translate) gem)

  Heavily based on [RailsAdminGlobalizeField](https://github.com/scarfacedeb/rails_admin_globalize_field) and [rails_admin_mongoid_localize_field](https://github.com/sudosu/rails_admin_mongoid_localize_field)

  It adds custom field type that you can use for hstore translations association.

  Only PostgreSQL is supported.

## Installation


Then add this gem and run `bundle`
``` ruby
  gem 'rails_admin_hstore_translate'
```


## Usage

> Don't forget to set I18n.available_locale config, because it uses that to determine what tabs to show

Add configuration to your model. `:locale` field is always required.
``` ruby
  config.model 'Post' do
    field :name do
      tabbed false
    end
    field :description do
      tabbed false
    end
  end
```

## Screenshot

![Screenshot](https://camo.githubusercontent.com/524bee72c730418105c4498ed4cdf40f861cfb1e/68747470733a2f2f7261772e6769746875622e636f6d2f7375646f73752f73637265656e73686f74732f6d61737465722f7261696c735f61646d696e5f6d6f6e676f69645f6c6f63616c697a655f6669656c64732e706e67)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

