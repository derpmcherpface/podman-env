#!/bin/bash
# sample entrypoint
#ollama serve &
echo hello world > /output.txt
exec $@
