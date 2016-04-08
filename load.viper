# Package viper_ruby: Support for Ruby language in Viper
require viper_ruby
load ruby ruby # Loads the Ruby snippet collection
assocx .rb ruby # Associates .rb files with Ruby snippet collection
load spec spec
assocf /.+_spec\.rb/ spec
alias load_mini "new; name 'minitest results'; load_mini_json"