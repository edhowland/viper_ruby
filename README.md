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

This package, like all Viper packages, requires Viper version 1.1 or greater. If this is not the version in the your Viper installation,
please re-install Viper with the current version.


## Adding this package to Viper runtime


Add the viper_ruby package to your ~/.viperrc file:

```
# adds the viper_ruby Ruby language support:
package viper_ruby
```


## Usage

This package adds the file associations :ruby and :spec to the file association.
If this package is loaded, you can run the commands 'check' and 'lint' on any file buffer
that match the ruby and spec association. E.g. '*.rb' and '*_spec.rb'.


## Running MiniTest with the minitest-reporters-json_reporter gem

If your project has tests or specs using MiniTest or MiniSpec, and you have installed the
'minitest-reporters-json_reporter' gem, you can examine the output of a test run within Viper itself.


To do this, see the instructions @ [https://github.com/edhowland/minitest-reporters-json_reporter](https://github.com/edhowland/minitest-reporters-json_reporte).


Run your tests and redirect stdout to a file like :spec-run.json

```
$ ruby my_spec.rb >spec-run.json
$ viper -e 'load_mini spec-run.json'
```

This command load_mini will create a new buffer, load and parse the 'spec-run.json' file and fill the buffer with the results.
The test run is summarized for you and any failures are enumerated followed by the enumeration of any skipped tests.

