#!/bin/bash

echo "📦 Installing Python dependencies..."
pip install selenium

echo "📦 Installing Chrome and ChromeDriver..."

# Create local bin dirs
mkdir -p /tmp/chrome-bin
mkdir -p /tmp/chromedriver-bin

# Download and extract Chrome
wget -q https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chrome-linux64.zip
unzip -q chrome-linux64.zip
mv chrome-linux64/chrome /tmp/chrome-bin/chrome

# Download and extract ChromeDriver
wget -q -O chromedriver.zip https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chromedriver-linux64.zip
unzip -q chromedriver.zip
mv chromedriver-linux64/chromedriver /tmp/chromedriver-bin/chromedriver
chmod +x /tmp/chromedriver-bin/chromedriver

echo "✅ Chrome and ChromeDriver installed to /tmp"
ls -l /tmp/chrome-bin/chrome
ls -l /tmp/chromedriver-bin/chromedriver
