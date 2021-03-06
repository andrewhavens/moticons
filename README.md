# RubyMotion Icons (a.k.a. Moticons)

Moticons is the easiest way to add icons to your RubyMotion project. It provides a simple interface for creating text-based or image-based icons.

Moticons is a wrapper around the [FontAwesomeKit CocoaPod](https://github.com/PrideChung/FontAwesomeKit).

Currently Moticons supports **6** different icon fonts.

- [FontAwesome 4.7](http://fontawesome.io) Our old friend, contains **675** icons
- [Foundation icons](http://zurb.com/playground/foundation-icon-fonts-3) Contains **283** icons.
- [Zocial](http://zocial.smcllns.com/) Contains **99** social icons.
- [ionicons 2.0.0](http://ionicons.com/) Contains **733** icons, lots of iOS 7 style outlined icons.
- [Octicons 2.4.1](https://octicons.github.com/) Contains **206** icons, built with love by Github.
- [Material 2.0.0](https://google.github.io/material-design-icons/) Contains **743** icons, built by Google for Material design.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'moticons'
```

And then execute:

    $ bundle && rake pod:install

## Usage

Moticons provides two global helper methods for creating icons: `icon_string` and `icon_image`.

Both methods require you to specify the name of the icon collection and the name of the font.

The collection names are:

* Font Awesome - `:awesome`
* Foundation - `:foundation`
* Zocial - `:zocial`
* Ionicons - `:ion`
* Octicons - `:octicon`
* Material - `:material`

The icon names are the typical, Ruby snake-cased version of the original name. For example, you would refer to the Font Awesome `cart-arrow-down` icon as `cart_arrow_down`.

You may specify collection and icon names as separate arguments:

    icon_image(:ion, :star)

Or you can combine them as a single argument:

    icon_image(:ion_star)

### Creating an icon as an `NSAttributedString`

    icon_string(:ion, :star, size: 40, color: UIColor.redColor)

Specifying size and color are optional.

### Creating an icon as a `UIImage`

    icon_image(:ion, :star, size: 40, color: UIColor.redColor)

Specifying size and color are optional.


## License

This gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT). Refer to each icon library for their license.

