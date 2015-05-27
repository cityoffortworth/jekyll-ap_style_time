# jekyll-ap_style_time

Liquid filter for displaying Associated Press (AP) style time and date values.

## Usage

The `ap_time` filter returns time formatted in AP style, e.g. `2:23 p.m.`. It enforces rules such as replacing the time value with `noon` and `midnight` when appropriate.

```
{{ site.time | ap_time }}
```

The `ap_date` filter returns date formatted in AP style, e.g. `Jan. 1, 2015`. It enforces rules such abbreviating the month when appropriate.
```
{{ site.time | ap_date }}
```

The `ap_time_date` filter combines `ap_time` with `ap_date` formatting, e.g. `2:23 p.m. Jan. 1, 2015`.

```
{{ site.time | ap_time_date }}
```

See the [tests](https://github.com/cityoffortworth/jekyll-ap_style_time/blob/master/test/jekyll/ap_style_time/filter_test.rb) for more details.
