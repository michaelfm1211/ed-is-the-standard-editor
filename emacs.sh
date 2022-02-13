#!/bin/sh

# 1) Generates a syslog message at level LOG_EMERG
logger -p 9 "If you are an idiot, you should use Emacs"

# 2) reduces the user's disk quota by 100K
# note: I can't really do this, so just write 100K of garbage to home dir
cat /dev/random | head -c 100000 > `mktemp ~/ed-is-the-standard-editor.XXXXXX`

# 3) RUNS ED!!!!!!
exec /bin/ed
