#!/bin/bash

echo "📦 Installing Chrome and ChromeDriver..."

# Create local bin dir
mkdir -p /tmp/chrome-bin
mkdir -p /tmp/chromedriver-bin

# Download Chrome
wget -q https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chrome-linux64.zip
unzip -q chrome-linux64.zip
mv chrome-linux64/* /tmp/chrome-bin

# Download ChromeDriver
wget -q -O chromedriver.zip https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chromedriver-linux64.zip
unzip -q chromedriver.zip
mv chromedriver-linux64/chromedriver /tmp/chromedriver-bin/chromedriver
chmod +x /tmp/chromedriver-bin/chromedriver

echo "✅ Chrome and ChromeDriver installed to /tmp"
