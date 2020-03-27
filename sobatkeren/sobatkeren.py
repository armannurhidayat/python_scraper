from bs4 import BeautifulSoup
import requests
import csv

url = 'https://sobatkeren.club/'

res = requests.get(url)
soup = BeautifulSoup(res.text, 'html.parser')

csv_file = open('scraper.csv', 'w')
csv_writer = csv.writer(csv_file)


print("""
====================[ https://sobatkeren.club Scraper ]====================
1. Film Populer
2. TV Series
3. Movies Terbaru
""")
selected = int(input('Select Menu : '))


# featureds = [rec for rec in soup.find('div', attrs={'id': 'featured'})]

# for featured in featureds:
#     try:
#         judul = featured.find('div', attrs={'class': 'judul'}).text
#         link = featured.a['href']
#         kualitas = featured.find('span', attrs={'class', 'mli-mvi'}).text
#         rate = featured.find('span', attrs={'class', 'mli-rating'}).text[0:3]
#         duration = featured.find('span', attrs={'class', 'mli-rating'}).text[3:]
#         poster = featured.find('img', attrs={'class', 'mli-thumb'})['src']
#     except:
#         judul = None
#         kualitas = None



if selected == 1:
    csv_writer.writerow(['List Film Populer'])
    csv_writer.writerow(['Judul', 'Link', 'Kualitas', 'Rating', 'Duration', 'Poster'])

    featureds = [rec for rec in soup.find('div', attrs={'id': 'featured'})]

    for featured in featureds:
        try:
            judul = featured.find('div', attrs={'class': 'judul'}).text
            link = featured.a['href']
            kualitas = featured.find('span', attrs={'class', 'mli-mvi'}).text
            rate = featured.find('span', attrs={'class', 'mli-rating'}).text[0:3]
            duration = featured.find('span', attrs={'class', 'mli-rating'}).text[3:]
            poster = featured.find('img', attrs={'class', 'mli-thumb'})['src']
        except:
            judul = None
            kualitas = None

        csv_writer.writerow([judul, link, kualitas, rate, duration, poster])


elif selected == 2:
    csv_writer.writerow(['List TV Series'])
    csv_writer.writerow(['Judul', 'Link', 'Eps', 'Poster'])

    series = [rec for rec in soup.find('div', attrs={'id': 'series'})]

    for serie in series[1].find_all('div', attrs={'class': 'ml-item'}):
        judul = serie.a.find('div', attrs={'class': 'judul'}).text
        link = serie.a['href']
        eps = serie.a.find('span', attrs={'class': 'mli-eps'}).i.text
        poster = serie.a.find('img', attrs={'class': 'mli-thumb'})['src']

        csv_writer.writerow([judul, link, eps+' eps', poster])


elif selected == 3:
    csv_writer.writerow(['List Movies Terbaru'])
    csv_writer.writerow(['Judul', 'Link', 'Kualitas', 'Rating', 'Duration', 'Poster'])

    movies = [rec for rec in soup.find('div', attrs={'id': 'movies'})]

    for movie in movies[1].find_all('div', attrs={'class': 'ml-item'}):
        judul = movie.a.find('div', attrs={'class': 'judul'}).text
        link = movie.a['href']
        kualitas = movie.a.find('span', attrs={'class': 'mli-mvi'}).text
        rate = movie.a.find('span', attrs={'class': 'mli-rating'}).text[0:3]
        duration = movie.a.find('span', attrs={'class': 'mli-rating'}).text[3:]
        poster = movie.a.find('img', attrs={'class': 'mli-thumb'})['src']

        csv_writer.writerow([judul, link, kualitas, rate, duration, poster])

else:
    print('Ma\'af menu tidak ditemukan!')

csv_file.close()