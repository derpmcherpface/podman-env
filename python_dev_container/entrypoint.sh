#!/bin/bash
# sample entrypoint
echo hello world > /output.txt
exec $@
