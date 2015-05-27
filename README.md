# jekyll-ap_style_time

Liquid filter for displaying AP style time and date values.

## Usage

The `ap_time` filter applies a date and time formatting in AP style, e.g. `2:23 p.m. Jan. 10, 2015`. It also replaces the time value with `noon` and `midnight` when appropriate.

```
{{ site.time | ap_time }}
```

The `ap_date` filter only displays the date portion, e.g. `Jan. 10, 2015`.
```
{{ site.time | ap_date }}
```

See the [tests](https://github.com/cityoffortworth/jekyll-ap_style_time/blob/master/test/jekyll/ap_style_time/filter_test.rb) for more details.
