from bs4 import BeautifulSoup
import requests
import csv

url = f'https://kawalcorona.com/'

res = requests.get(url)
soup = BeautifulSoup(res.text, 'html.parser')

csv_file = open('scraper.csv', 'w')
csv_writer = csv.writer(csv_file)

# Header
title_list = []
for title in soup.find('table', class_='table-bordered').thead.tr.find_all('th', class_='atasbro'):
    title_list.append(title.text)

csv_writer.writerow(title_list)

no = 0
for data in soup.find('table', class_='table-bordered').tbody.find_all('tr'):
    no = no+1
    prov = data.findChildren()[1].text
    positif = data.findChildren()[2].text
    sembuh = data.findChildren()[3].text
    meninggal = data.findChildren()[4].text
    
    csv_writer.writerow([no, prov, positif, sembuh, meninggal])

csv_file.close()
