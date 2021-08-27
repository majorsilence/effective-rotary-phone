
#!/usr/bin/env bash
set -e # exit on first error
set -u # exit on using unset variable

version=`cat VERSION`
echo "version: $version"

docker tag majorsilence/pygopherd:latest majorsilence/pygopherd:$version

docker push majorsilence/pygopherd:latest
docker push majorsilence/pygopherd:$version
