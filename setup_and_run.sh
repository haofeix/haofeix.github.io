#!/bin/bash

# Setup and run script for Jekyll academic website
# This script helps you set up and preview your website locally

echo "Setting up your academic website..."

# Check if Ruby and Bundler are installed
if ! command -v ruby &> /dev/null; then
    echo "Ruby is not installed. Please install Ruby first."
    echo "On macOS: brew install ruby"
    exit 1
fi

if ! command -v bundle &> /dev/null; then
    echo "Bundler is not installed. Installing..."
    gem install bundler
fi

# Install Jekyll and dependencies
echo "Installing Jekyll and dependencies..."
bundle install

# Serve the site locally
echo "Starting local development server..."
echo "Your site will be available at: http://localhost:4000"
echo "Press Ctrl+C to stop the server"

bundle exec jekyll serve --livereload
