require 'test/unit'

require 'rubygems'
require 'active_support'

$:.unshift File.dirname(__FILE__) + '/../lib'
require File.dirname(__FILE__) + '/../init'

class PrettyDatesTest < Test::Unit::TestCase
  def test_ordinal
    (1..31).each { |day| assert_equal(day.ordinalize, Time.local(2008,1,day).strftime("%o")) }
  end
  
  def test_day
    (1..31).each { |day| assert_equal(day.to_s, Time.local(2008,1,day).strftime("%D")) }
  end
  
  def test_hour
    (0..23).each { |hour| assert_equal(((h = hour.modulo(12)) == 0 ? '12' : h.to_s), Time.local(2008,1,1,hour).strftime("%i")) }
  end
  
  def test_am_pm
    (0..23).each { |hour| assert_equal(hour < 12 ? 'am' : 'pm', Time.local(2008,1,1,hour).strftime("%P")) }
  end
end
