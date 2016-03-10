# viper_ruby

Viper package forthe programming language Ruby

## Version 0.2.0

## Abstract

Adds support for the  programming language Ruby  to the Viper Programmer's Editor. [Viper GitHub page](https://github.com/edhowland/viper)
This package adds the commands check and lint for the Ruby and MiniSpec language files.


## Installation

Install this package in your packages directory for your Viper runtime: ~/.viper/packages:

```
cd ~/.viper/packages
git clone git@github.com:edhowland/viper_ruby.git
```

### System Requirements

This package, like all Viper packages, requires Viper version 1.1 or greater. If this is not the version in the viper master
branch, switch to feature/1.1.0 before installing Viper.



## Adding this package to Viper runtime

Install this package like any other Viper package. Typically, you would git clone 
this repository into your ~/.viper/packages folder.

Then add the viper_ruby package to your ~/.viperrc file:

```
# adds the viper_ruby Ruby language support:
package viper_ruby
```


## Usage

This package adds the file associations :ruby and :spec to the file association.
If this package is loaded, you can run the commands 'check' and 'lint' on any file buffer
that match the ruby and spec association. E.g. '*.rb' and '*_spec.rb'.

