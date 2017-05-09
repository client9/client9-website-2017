---
Date: 2017-05-08
Draft: true
Title: "Convert time format to golang"
---

Converting time formats from PHP to golang.

| strftime | golang     | Description |
|----------|------------|-------------|
| %a       | Mon        | Abbreviated weekday name|
| %A       | Monday     | Full weekday name  |
| %b       | Jan        | Abbreviated month |
| %B       | January    | Full month name |
| %c       | n/a        | Perferred local datetime |
| %C       | n/a        | Century number |
| %d       | 02         | Day of month 01 to 31 |
| %D       | 01/02/06   | USA month, day, year  |
| %e       | 2          | Day of month, no leading zero |
| %f       | 2006-01-02 | ISO 8061 date|
| %H       | 15         | Hour 0 to 23 |
| %I       | 03         | Hour 0 to 12 |
| %j       | xxx        | Day of year 001 to 365 |
| %m       | 01         | Month number 01 to 12 |
| %M       | 04         | Minute 01 to 59 |
| %n       | \n         | Newline character |
| %s       | xxx        | Seconds since Unix epoch |
| %S       | 05         | Second of hour, 00 to 60 |
| %t       | \t         | Tab character |
| %x       |            | Preferred |
| %X       |            | Preferred |
| %y       | 06         | Year without century |
| %Y       | 2006       | Year with century |
| %z       | -0700      | +/-hhmm time zone offset |
| %Z       | MST        | Time zone abbreviation |
| %%       | %          | "%" character |

## Common Time Formats

| strftime | golang | description |
|----------|--------|-------------|
| xxx | 2006-01-02T15:04:05Z07:00 | RFC3339, ISO8061 |

end



