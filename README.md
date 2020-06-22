A timestamp module

![](https://img.shields.io/badge/version-0.2.0-blue.svg?style=for-the-badge)
![](https://img.shields.io/badge/crystal--lang-0.35.0-black.svg?style=for-the-badge)

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
Crystal 0.34.0 [4401e90f0] (2020-04-06)

LLVM: 8.0.0
Default target: x86_64-unknown-linux-gnu
$> cd bench
$> crystal build --release bench.cr
$> ./bench
             Time.utc.to_unix  31.26M ( 31.99ns) (± 0.60%)  0.0B/op   1.20× slower
  Crtimestamp.now_utc_to_unix  37.40M ( 26.74ns) (± 0.09%)  0.0B/op        fastest
          Time.utc.to_unix_ms  27.65M ( 36.17ns) (± 0.71%)  0.0B/op   1.35× slower
Crimestamp.now_utc_to_unix_ms  37.40M ( 26.73ns) (± 0.08%)  0.0B/op        fastest
           Time.utc.to_unix_f  31.31M ( 31.94ns) (± 0.73%)  0.0B/op   1.21× slower
Crtimestamp.now_utc_to_unix_f  37.75M ( 26.49ns) (± 0.48%)  0.0B/op        fastest
```
