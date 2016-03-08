# syntax_check_spec.rb - specs for syntax_check

require_relative 'spec_helper'

# TODO: class documentation
class SpecBuffer < Buffer
  def association
    :spec
  end
end

describe 'check ruby syntax for spec buffer' do
  let(:buf) { SpecBuffer.new "def my_puts hello\n  puts hello\nend\n" }
  subject { check_lang_syntax buf }

  specify { subject.must_equal nil }
end
