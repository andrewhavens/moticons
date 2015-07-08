# RubyMotion Icons (a.k.a. Moticons)

Moticons is the easiest way to add icons to your RubyMotion project. It provides a simple interface for creating text-based or image-based icons.

Moticons is a wrapper around the [FontAwesomeKit CocoaPod](https://github.com/PrideChung/FontAwesomeKit).

Supported icon collections include:

* [Font Awesome](http://fortawesome.github.io/Font-Awesome/)
* [Foundation](http://zurb.com/playground/foundation-icon-fonts-3)
* [Zocial](http://zocial.smcllns.com)
* [Ionicons](http://ionicons.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'moticons'
```

And then execute:

    $ bundle

## Usage

Moticons provides two global helper methods for creating icons: `icon_string` and `icon_image`.

Both methods require you to specify the name of the icon collection and the name of the font.

The collection names are:

* Font Awesome - `:awesome`
* Foundation - `:foundation`
* Zocial - `:zocial`
* Ionicons - `:ion`

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

