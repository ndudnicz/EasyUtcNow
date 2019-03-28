A timestamp module

### Requirement :
* crystal >= 0.27.2

### Installation :
Add this to your application's `shard.yml`:
```yaml
dependencies:
  crtimestamp:
    github: ndudnicz/crtimestamp
```

### Example :
```ruby
require "crtimestamp"

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
```shell
$> crystal -v
Crystal 0.27.2 [60760a546] (2019-02-05)

LLVM: 4.0.0
Default target: x86_64-unknown-linux-gnu
$> cd bench
$> crystal build --release bench.cr
$> ./bench
          Time.utc_now.to_unix  19.49M ( 51.31ns) (± 1.25%)  0 B/op   1.13× slower
   Crtimestamp.now_utc_to_unix  21.98M ( 45.49ns) (± 0.72%)  0 B/op        fastest
       Time.utc_now.to_unix_ms  19.59M ( 51.03ns) (± 0.93%)  0 B/op   1.12× slower
Crtimestamp.now_utc_to_unix_ms  21.86M ( 45.74ns) (± 0.98%)  0 B/op        fastest
        Time.utc_now.to_unix_f  19.47M ( 51.36ns) (± 1.57%)  0 B/op   1.12× slower
 Crtimestamp.now_utc_to_unix_f  21.88M ( 45.71ns) (± 0.95%)  0 B/op        fastest
```
