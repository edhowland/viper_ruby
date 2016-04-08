# viper_ruby.rb - requires for Viper package viper_ruby - Ruby language support for Viper editor

require_relative 'viper_ruby/version'
require_relative 'system/check_ruby_syntax'
require_relative 'system/compare_indent'
require_relative 'system/lint_pass1'
require_relative 'system/lint_pass2'
require_relative 'system/lint_pass3'
require_relative 'system/check_ruby_lint'
require_relative 'system/check_spec_syntax'
require_relative 'system/check_spec_lint'
require_relative 'tools/load_mini_json'

Viper::Session[:commands][:load_mini_json] = ->(b, *args) { load_mini_json(b, args[0]) }