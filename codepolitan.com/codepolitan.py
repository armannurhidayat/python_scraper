from bs4 import BeautifulSoup
import requests
import csv

url = 'https://www.codepolitan.com/library'

res = requests.get(url)
soup = BeautifulSoup(res.text, 'html.parser')

csv_file = open('scraper.csv', 'w')
csv_writer = csv.writer(csv_file)
csv_writer.writerow(['Title', 'Judul', 'Link', 'Modul', 'Durasi','Siswa'])

for course in soup.find_all('section', attrs={'id': 'course-list'}):
    title = course.find('div', class_='container').h2.text
    print(f'================= {title}')
    for container in course.find_all('div', class_='container'):
        for content in container.find_all('div', class_='justify-content-md-center'):
            for feature in content.find_all('div', class_='feature'):
                judul = feature.find('div', class_='thumbnail-course').a.img['alt']
                poster = feature.find('div', class_='thumbnail-course').a.img['src']
                link = feature.find('div', class_='thumbnail-course').a['href']
                modul = feature.find('div', class_='course-stats').div.findChildren()[0]['title']
                durasi = feature.find('div', class_='course-stats').div.findChildren()[3]['title']
                try:
                    siswa = feature.find('div', class_='course-stats').div.findChildren()[6]['title']
                except:
                    siswa = None

                csv_writer.writerow([title, judul, link, modul, durasi, siswa])

csv_file.close()
