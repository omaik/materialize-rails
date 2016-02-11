[![Gem Version](https://badge.fury.io/rb/materialize-rails.svg)](https://badge.fury.io/rb/materialize-rails)

# materialize-rails

`materialize-rails` makes using [Materialize](http://materializecss.com) in your Rails 4+ app easy.

This gem may contain custom patches applied on top of the Materialize release. Such releases of `materialize-rails` are marked as such in the version number.

A lack of `custom[0-9]+` means that it only contains the original Materialize release.

## Installation

Add

```ruby
gem 'materialize-rails'
```

to your `Gemfile`. Then

```console
$ bundle install
```

and you're done.

## Usage

The Materialize files are available to your Rails 4+ app now, but you need to make sure your app actually uses them first.

### Stylesheets

Import the Materialize styles into your stylesheets.

```scss
@import "materialize";
```

This can be done in any `.scss` file that is part of your application.

### JavaScript

Add this line to your `app/assets/javascripts/application.js`:

```js
//= require materialize
```

Since Materialize depends on jQuery, that line needs to be included after jQuery, e. g.

```js
//= require jquery2
//= require materialize
```

## You want to contribute?

1. [Fork](https://github.com/Skudo/materialize-rails/fork) materialize-rails.
2. Add your contributions in a branch on your fork.
3. Push the changes in your branch.
4. Create a new pull request.

Please note that Materialize-based contributions should go to [their GitHub account](https://github.com/Dogfalo/materialize), so your changes can be included right at the source.