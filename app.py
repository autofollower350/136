from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
import os

# Make sure the Chrome binary exists
chrome_path = "/usr/bin/google-chrome"
if not os.path.exists(chrome_path):
    raise Exception("❌ Chrome not found at expected path: " + chrome_path)

options = Options()
options.binary_location = chrome_path
options.add_argument("--headless")
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")

driver = webdriver.Chrome(service=Service("/usr/bin/chromedriver"), options=options)
driver.get("https://www.google.com")
print("✅ Opened:", driver.title)
driver.quit()
