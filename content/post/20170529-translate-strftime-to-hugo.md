---
date: 2017-05-29
title: "Convert strftime Time Format to Hugo"
---

Convert strptime formats from PHP, Python, and Ruby to Hugo. <!--more-->

Most languages use some variation of [strptime](http://pubs.opengroup.org/onlinepubs/009695399/functions/strptime.html) to format date and time values.  Hugo is based on the [time package](https://golang.org/pkg/time/) from [Go](https://golang.org). It uses the concept of the magic date as represented by: 

```
Mon Jan 2 15:04:05 MST 2006
```

or

```
01/02 03:04:05PM '06 -0700
```

1, 2, 3, 4, 5, 6, 7.  Month, Day, Hour, Minute, Second, Year, Time zone offset.

To print your time, just re-arrange, or edit one of these magic times any way you want. Just want to print the month? The format is `Jan`, `January`, `1`, or `01` depending on how you want to format it. The *real* month will be filled in. The same goes for all the other parts of the time.

Once you get the hang of it, you'll find `January 2, 2006` a lot clearer than `%b %e, %Y`.

The table below translates all strptime formats to [Hugo](https://gohugo.io/).

| strftime | golang           | Description                          |
|----------|------------------|--------------------------------------|
| %a       | Mon              | Abbreviated weekday name             |
| %A       | Monday           | Full weekday name                    |
| %b       | Jan              | Abbreviated month                    |
| %B       | January          | Full month name                      |
| %c       | [Note 1](#note1) | Perferred local datetime             |
| %C       | [Note 1](#note1) | Century number                       |
| %d       | 02               | Day of month 01 to 31                |
| %D       | 01/02/06         | USA month, day, year                 |
| %e       | 2                | Day of month, no leading zero        |
| %E       | TBD              | Modifier, use alternative format     |
| %G       | [Note 2](#note2) | ISO week-based year, with century    |
| %g       | [Note 2](#note2) | ISO week-based year, without century |
| %F       | 2006-01-02       | ISO 8061 date                        |
| %h       | Jan              | Abbreviated month (same as %b)       |
| %H       | 15               | Hour 00 to 23                        |
| %I       | 03               | Hour 00 to 12                        |
| %j       | [Note 2](#note2) | Day of year 001 to 365               |
| %k       | 3                | Hour ' 0' to '23' with leading space |
| %l       | 4                | Hour ' 0' to '12' with leading space |
| %m       | 01               | Month number 01 to 12                |
| %M       | 04               | Minute 01 to 59                      |
| %n       | \n               | Newline character                    |
| %O       | TBD              | Modifier, use alternative format     |
| %p       | PM               | 'AM' or 'PM'                         |
| %P       | [Note 3](#note3) | 'am' or 'pm'                         |
| %r       | 03:04:05 PM      | same as `%I:%M:%S %p`                |
| %R       | 15:04            | same as `%H:%M`                      |
| %s       | [Note 4](#note4) | Seconds since Unix epoch             |
| %S       | 05               | Second of hour, 00 to 60             |
| %t       | \t               | Tab character                        |
| %x       | [Note 1](#note1) | Preferred                            |
| %X       | [Note 1](#note2) | Preferred                            |
| %y       | 06               | Year without century                 |
| %Y       | 2006             | Year with century                    |
| %z       | -0700            | +/-hhmm time zone offset             |
| %Z       | MST              | Time zone abbreviation               |
| %%       | %                | "%" character                        |

### Note 1 - "Perferred" locale-specific formats {#note1}

There is no concept of a "perferred locale" in Hugo at this time. Use an explicit format instead. See [Create a Multilingual Site](https://gohugo.io/tutorials/create-a-multilingual-site/) for more details.

### Note 2 - Week or Day of year {#note2}

These can be commputed using [Day](https://golang.org/pkg/time/#Time.Day) and [ISOWeek](https://golang.org/pkg/time/#Time.ISOWeek)

### Note 3 - Lower case versions of AM or PM {#note3}

Hugo only supports `AM` or `PM`. To do something different, create a custom implementation:

```
{{ if .Date.Hour < 12 }}am{{ else }}pm{{ end}}
```

### Note 4 - Unix timestamps {#note4}

Instead of a time *format*, use the [UTC](https://golang.org/pkg/time/#Time.UTC) and [Unix](https://golang.org/pkg/time/#Time.Unix) methods of the [Time](https://golang.org/pkg/time/#Time) object:

```
{{ .Date.UTC.Unix }}
```

## Common Time Formats

### RFC 3339, ISO 8061

This format is used in [Open Graph](http://ogp.me/#datetime), and [Google Schemas](https://developers.google.com/schemas/formats/datetime-formatting). [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) and [ISO 8061](https://en.wikipedia.org/wiki/ISO_8601) defines a number of variations, but the following works: 

```
{{ .Date.Format "2006-01-02T15:04:05Z07:00" }}
```

### RFC 1123 HTTP dates

[RFC 1123](https://tools.ietf.org/html/rfc1123) is used in various [HTTP headers](https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html). Note that it uses the old GMT timezone instead of UTC.

```
{{ .Date.UTC.Format "Mon, 02 Jan 2006 15:04:05 GMT" }}
```
