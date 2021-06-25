# encoding: UTF-8
require_relative "./helper"

class CGI::HTMLEntities::EntitiesTest < Test::Unit::TestCase

  def test_should_raise_exception_when_unknown_flavor_specified
    assert_raises CGI::HTMLEntities::UnknownFlavor do
      CGI::HTMLEntities.new('foo')
    end
  end

  def test_should_allow_symbol_for_flavor
    assert_nothing_raised do
      CGI::HTMLEntities.new(:xhtml1)
    end
  end

  def test_should_allow_upper_case_flavor
    assert_nothing_raised do
      CGI::HTMLEntities.new('XHTML1')
    end
  end

end
