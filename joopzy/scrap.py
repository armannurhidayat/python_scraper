from bs4 import BeautifulSoup
import requests
import sys
import os
import pandas as pd


product_list = []
for index in range(1, 20):
	url = f'https://www.joopzy.com/products/page/{index}'
	res = requests.get(url)
	soup = BeautifulSoup(res.text, 'html.parser')
	
	for product in soup.find_all('div', attrs={'class': 'product'}):
		product_dic = {}
		product_dic['name']	= product.find('div', attrs={'class','title-wrapper'}).text
		try:
			product_dic['price'] = product.find_all('span', attrs={'class','woocommerce-Price-amount amount'})[1].text
		except:
			product_dic['price'] = product.find_all('span', attrs={'class','woocommerce-Price-amount amount'})[0].text
		product_dic['img_url']	= product.find('div', attrs={'class','image-fade_in_back'}).img['data-lazy-src']
		product_dic['link']	= product.find('div', attrs={'class','image-fade_in_back'}).a['href']
		product_list.append(product_dic)

		print(product_dic['name'])
		r = requests.get(product_dic['img_url'])
		BASE_DIR = sys.path[0]
		with open(f"{BASE_DIR}/images/{product_dic['name']}.jpg", 'wb') as f:
			f.write(r.content)

df = pd.DataFrame(product_list)
# df.head()
df.to_excel('scrap.xlsx', index=False)