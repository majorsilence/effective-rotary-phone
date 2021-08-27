#!/usr/bin/env bash
set -e # exit on first error
set -u # exit on using unset variable


docker build -f Dockerfile -t majorsilence/pygopherd:latest --rm=true .
