#!/bin/sh
rm Gemfile.lock && \
	bundle update && \
	bundle install
