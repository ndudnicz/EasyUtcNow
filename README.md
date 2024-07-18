A timestamp module
Faster and easier way to get an utc timestamp than calling standard Time lib

![](https://img.shields.io/badge/version-1.0.0-blue.svg?style=for-the-badge)
![](https://img.shields.io/badge/crystal--lang-1.13.1-black.svg?style=for-the-badge)

### Installation :
Add this to your application's `shard.yml`:
```yaml
dependencies:
  EasyUtcNow:
    github: ndudnicz/EasyUtcNow
```

### Example :
```ruby
require "EasyUtcNow"

puts EasyUtcNow.now_utc_to_unix
```

### API :
#### Static Methods Summary :

```ruby
.now_utc_to_unix :
Int64
```
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Returns the current utc epoch timestamp in second

```ruby
.now_utc_to_unix_ms_f :
Float64
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
Crystal 1.13.1 (2024-07-12)

LLVM: 18.1.8
Default target: aarch64-apple-darwin23.5.0
$> cd bench
$> crystal build --release bench.cr
$> ./bench
             Time.utc.to_unix  71.93M ( 13.90ns) (± 1.53%)  0.0B/op   1.15× slower
   EasyUtcNow.now_utc_to_unix  82.46M ( 12.13ns) (± 3.96%)  0.0B/op        fastest
          Time.utc.to_unix_ms  58.34M ( 17.14ns) (± 2.67%)  0.0B/op   1.41× slower
EasyUtcNow.now_utc_to_unix_ms  82.19M ( 12.17ns) (± 1.26%)  0.0B/op        fastest
           Time.utc.to_unix_f  72.33M ( 13.83ns) (± 1.05%)  0.0B/op   1.15× slower
 EasyUtcNow.now_utc_to_unix_f  83.02M ( 12.05ns) (± 1.16%)  0.0B/op        fastest
```
