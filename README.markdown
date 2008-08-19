# PrettyDates

Adds additional format specifiers to Time#strftime.

**%o** = ordinalized day of month (e.g. 1st, 2nd, 3rd...)
**%D** = day of month without leading zero
**%i** = hour of day in 12-hour format without leading 0
**%P** = lower-case am/pm indicator

## Example

    Time::DATE_FORMATS[:long] = "%B %o, %Y at %i:%M %P %Z"
    => June 1st, 2008 at 9:43 am EST

    Time::DATE_FORMATS[:short] = "%b %D %i:%M %P"
    => Jun 1 9:43 am

## Installation

    ./script/plugin install git://github.com/sbfaulkner/pretty_dates.git

## Legal

**Author:** S. Brent Faulkner <brentf@unwwwired.net>  
**License:** Copyright &copy; 2008 unwwwired.net, released under the MIT license
