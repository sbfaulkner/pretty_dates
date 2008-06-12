# PrettyDates
class Time
  # add support for extra time format specifiers
  def strftime_with_pretty_dates(format)
    format = format.gsub(/%[oDiP]/) do |match|
      case match
      when '%o' # ordinalized day of month
        day.ordinalize
      when '%D' # day of month without leading zero
        day.to_s
      when '%i' # hour of day in 12-hour clock without leading zero
        h = hour.modulo 12
        h == 0 ? '12' : h.to_s
      when '%P' # lowercase am/pm indicator
        hour < 12 ? 'am' : 'pm'
      end
    end
    strftime_without_pretty_dates(format)
  end
  alias_method_chain :strftime, :pretty_dates
end
