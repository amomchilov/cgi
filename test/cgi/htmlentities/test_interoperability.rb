# encoding: UTF-8
require_relative "./helper"

if ENV["RUN_INTEROPERABILITY_TESTS"]
  class CGI::HTMLEntities::InteroperabilityTest < Test::Unit::TestCase

    def test_should_encode_active_support_safe_buffer
      require 'active_support'
      string = "<p>This is a test</p>"
      buffer = ActiveSupport::SafeBuffer.new(string)
      coder = CGI::HTMLEntities.new
      assert_equal coder.encode(string, :named), coder.encode(buffer, :named)
    end
  end
end