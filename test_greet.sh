#!/bin/sh
# Test: greet.sh prints "hello, world" (issue #1)
expected="hello, world"
actual="$(sh "$(dirname "$0")/greet.sh")"
if [ "$actual" = "$expected" ]; then
  echo "ok"
else
  echo "FAIL: expected '$expected', got '$actual'" >&2
  exit 1
fi
