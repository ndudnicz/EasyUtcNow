A timestamp module

### Requirement :
* crystal >= 0.27.2

### Installation :
Add this to your application's `shard.yml`:
```yaml
crtimestamp:
  github: ndudnicz/crtimestamp
```

### Example :
```ruby
require "Timestamp"

puts Crtimestamp.now_utc_to_unix
```

### API :
#### Static Methods Summary

```ruby
.now_utc_to_unix :
Int64
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Returns the current utc epoch timestamp in second

```ruby
.now_utc_to_unix_ms :
Int64
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Returns the current utc epoch timestamp in msecond

```ruby
.now_utc_to_unix_f :
Float64
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Returns the current utc epoch timestamp in second as Float64

### Benchmark :
