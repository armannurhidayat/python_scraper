import requests
from bs4 import BeautifulSoup
import csv

name = str(input('Cari Surat ? '))
# name = 'ar-rahman'
res = requests.get(f'https://litequran.net/{name}')
soup = BeautifulSoup(res.text, 'html.parser')

csv_file = open('scraper.csv', 'w')
csv_writer = csv.writer(csv_file)

# Title
surat = soup.find('h1', class_='page-title').text
csv_writer.writerow([surat])

csv_writer.writerow(['Ayat', 'Arab', 'Bacaan', 'Arti'])

for rec in soup.ol.find_all('li'):
    ayat = rec.find('span', class_='ayat')['title']
    arab = rec.find('span', class_='ayat').text
    bacaan = rec.find('span', class_='bacaan').text
    arti = rec.find('span', class_='arti').text

    csv_writer.writerow([ayat, arab, bacaan, arti])

csv_file.close()
