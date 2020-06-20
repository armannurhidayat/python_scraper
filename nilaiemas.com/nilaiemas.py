from bs4 import BeautifulSoup
import requests
import csv

url = 'https://nilaiemas.com'

res = requests.get(url)
soup = BeautifulSoup(res.text, 'html.parser')

csv_file = open('harga_emas.csv', 'w')
csv_writer = csv.writer(csv_file)
csv_writer.writerow(['Berat (gram)', 'Harga (Rupiah)'])

for table in soup.find_all('table', attrs={'class': 'table'}):
    for rec in table.find_all('tr'):
        berat = rec.find('td').text
        harga = rec.find('td', attrs={'class': 'text-right'}).text
        print(berat)
        print(harga)
        csv_writer.writerow([berat, harga])

csv_file.close()