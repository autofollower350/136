import os
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

chrome_path = "/tmp/chrome-bin/chrome"
chromedriver_path = "/tmp/chromedriver-bin/chromedriver"

# Validate Chrome installation
if not os.path.exists(chrome_path):
    raise Exception("❌ Chrome not found at: " + chrome_path)

# Set options
options = Options()
options.binary_location = chrome_path
options.add_argument("--headless")
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")

# Set ChromeDriver service
service = Service(chromedriver_path)

# Launch browser
driver = webdriver.Chrome(service=service, options=options)
driver.get("https://www.google.com")

print("✅ Opened:", driver.title)

driver.quit()
