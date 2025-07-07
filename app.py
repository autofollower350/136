from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options

options = Options()
options.binary_location = "/opt/chrome/chrome"
options.add_argument("--headless")
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")

# Updated path for chromedriver
driver = webdriver.Chrome(service=Service("/opt/chromedriver"), options=options)

driver.get("https://www.google.com")
print("✅ Opened:", driver.title)
driver.quit()
