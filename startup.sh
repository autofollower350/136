#!/bin/bash

echo "📦 Installing Chrome and ChromeDriver..."

# Install Chrome
wget -q https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chrome-linux64.zip
unzip -q chrome-linux64.zip
mv chrome-linux64 /opt/chrome
ln -sf /opt/chrome/chrome /usr/bin/google-chrome

# Install ChromeDriver
wget -q -O chromedriver.zip https://storage.googleapis.com/chrome-for-testing-public/136.0.7103.113/linux64/chromedriver-linux64.zip
unzip -q chromedriver.zip
mv chromedriver-linux64/chromedriver /usr/bin/chromedriver
chmod +x /usr/bin/chromedriver

echo "✅ Chrome and ChromeDriver installed"
ls -l /usr/bin/google-chrome
ls -l /usr/bin/chromedriver
