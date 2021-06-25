# encoding: UTF-8
$KCODE = 'u' unless "1.9".respond_to?(:encoding)

require File.expand_path("../performance", __FILE__)
require "profiler"

job = CGI::HTMLEntitiesJob.new

# Profiler__ was removed from the stdlib in Ruby 2.7
# https://github.com/ruby/ruby/commit/bc76d8a232bed2e245cd3997ebd9826938f7a738
puts "Encoding"
Profiler__::start_profile
job.encode(1)
Profiler__::print_profile($stdout)

puts "Decoding"
Profiler__::start_profile
job.decode(1)
Profiler__::print_profile($stdout)
