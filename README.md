# Material Components for the web (MDC-Web) for Sass

[![Gem Version](https://badge.fury.io/rb/material_components_web-sass.svg)](http://badge.fury.io/rb/material_components_web-sass)
[![Build Status](https://travis-ci.org/rubysamurai/material_components_web-sass.svg?branch=master)](https://travis-ci.org/rubysamurai/material_components_web-sass)

> **Note:** MDC-Web is still in early stage of development. For production environment it is recommended to use previous version of MDC-Web called [Material Design Lite for Sass](https://github.com/rubysamurai/material_design_lite-sass) 

Material Components for the web ([MDC-Web](https://github.com/material-components/material-components-web/)) enable a reliable development workflow to build web projects based on [Material Design](https://www.material.io/) system.

`material_components_web-sass` is a Sass-powered version of MDC-Web for your Ruby applications. In addition to all of MDC-Web packages it includes [Material Icons](https://material.io/icons/), official icon set from Google, and [Roboto](https://fonts.google.com/specimen/Roboto) font, the recommended font for material design.

## Installation

### Ruby on Rails

Open your Rails application's `Gemfile` and add this line:

```ruby
gem 'material_components_web-sass'
```

Save `Gemfile` and execute `bundle` command to install the gem.

Open  `/app/assets/stylesheets/application.scss` file and add this line:

```scss
@import 'material-components-web';
```

> **Note:** Default Rails installation comes with `.css` file extension for stylesheet assests files, make sure you change it to `.scss` and remove all the `*= require_tree .` and `*= require_self` statements from file. If you wish to keep `application.css` file, you can create `custom.scss` file in the same folder and import `material-components-web` there.

Open  `app/assets/javascripts/application.js` file and add this line:

```
//= require material-components-web
```

Restart Rails web server if it was running.

## Usage

Individual Sass components can be included like this:

```scss
@import "@material/animation/mdc-animation";
@import "@material/button/mdc-button";
@import "@material/card/mdc-card";
@import "@material/checkbox/mdc-checkbox";
@import "@material/drawer/mdc-drawer";
@import "@material/elevation/mdc-elevation";
@import "@material/fab/mdc-fab";
@import "@material/form-field/mdc-form-field";
@import "@material/icon-toggle/mdc-icon-toggle";
@import "@material/layout-grid/mdc-layout-grid";
@import "@material/list/mdc-list";
@import "@material/menu/mdc-menu";
@import "@material/radio/mdc-radio";
@import "@material/ripple/mdc-ripple";
@import "@material/select/mdc-select";
@import "@material/snackbar/mdc-snackbar";
@import "@material/switch/mdc-switch";
@import "@material/textfield/mdc-textfield";
@import "@material/theme/mdc-theme";
@import "@material/toolbar/mdc-toolbar";
@import "@material/typography/mdc-typography";
@import "@material/fonts/material-icons";
@import "@material/fonts/roboto";
```

MDC-Web relying on module loader for importing individual JavaScript components and because of that there is no simple way to import specific JavaScript components using default Rails asset pipeline. PRs attempting to solve this issue are always welcome!

### Material Icons

An icon can be included using ligatures, a typographic feature that is supported in most modern browsers:

```html
<i class="material-icons">info</i>
```

Complete list of Material Icon names and codepoints can be found [here](https://material.io/icons/)

## Versioning

`material_components_web-sass` follows the upstream version of Material Components for the web. But last version number may be ahead, in case there is a need to release project specific changes.

Please always refer to the [CHANGELOG](https://github.com/rubysamurai/material_components_web-sass/blob/master/CHANGELOG.md) when upgrading.

## Credits

`material_components_web-sass` is inspired from [bootstrap-sass](https://github.com/twbs/bootstrap-sass) by Bootstrap team.

## License

Material Components for the web © Google, 2015. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

Material Icons © Google, 2016. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

Roboto © Google, 2015. Licensed under the [Apache-2](http://www.apache.org/licenses/LICENSE-2.0.html) license.

`material_components_web-sass` © Dmitriy Tarasov, 2016. Released under the [MIT](https://github.com/rubysamurai/material_components_web-sass/blob/master/LICENSE.txt) license.
