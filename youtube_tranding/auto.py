import mysql.connector
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

config = {
  'user'    : 'root',
  'password': 'root',
  'host'    : 'localhost',
  'port'    : 8889,
  'database': 'yt_trending',
  'raise_on_warnings': True
}

url = 'https://www.youtube.com/feed/trending?gl=ID&hl=id'
path_driver = "/Users/armannurhidayat/Desktop/selenium/driver/chromedriver"
chrome_options = Options()
chrome_options.add_argument("--incognito")
driver = webdriver.Chrome(executable_path=path_driver, options=chrome_options)
driver.get(url)

video_title = driver.find_elements_by_xpath('//*[@id="video-title"]')
for rec in video_title:
    title = rec.text
    link = rec.get_attribute('href')
    # Insert SQL
    print('{} - {}'.format(title, link))
    cnx = mysql.connector.connect(**config)
    cursor = cnx.cursor(dictionary=True)
    cursor.execute("INSERT INTO `trand` (`title`,`url`) VALUES ('{}', '{}')".format(title, link))
    cnx.commit()
    time.sleep(2)