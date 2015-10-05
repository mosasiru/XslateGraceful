# NAME

XslateGraceful - test Xslate cache level 1 when graceful restart using server starter

# SYNOPSIS

```
$ ./run
$  while sleep 1; do curl http://localhost:3000; done;
# => hello world
#    hello world
#    hello world

$ vim lib/XslateGraceful.pm
 please uncomment.
$ vim tmpl/hoge.tmpl
 please uncomment by changing 0 => 1.
# => Internal Server Error

$ kill -HUP `cat pid`
# => Internal Server Error
after old worker died,
$ => hello world [&quot;restarted&quot;]

 ```


# LICENSE

Copyright (C) yusuke-enomoto.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

mosa (mosaafi@gmail.com)
