import requests
from bs4 import BeautifulSoup
import time
import random
import csv

#
url = 'https://pixabay.com/images/search/?order=ec&pagi='
headers = {
        # "Accept-Encoding": "gzip, deflate, br",
        "Accept-Language": "ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7",
        "Cache-Control": "max-age=0",
        "Sec-Fetch-Mode": "navigate",
        "Sec-Fetch-Site": "none",
        "Sec-Fetch-User": "?1",
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 OPR/98.0.0.0 (Edition Yx GX)",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",

    }

soupArray = []
elements = []
imageLink = []
imageTitle = []
work = True
error = False
countElements = 100


def parsing():
    def getStatus(currentPage,state):
         if state==200:
            status = "good"
         else:
            status = "error"
         print("-"*200,"\nPaage: ",currentPage,"\nStatus: ",status,)

    def splitOnBloc():
        for page in soupArray:
            for x in page:
                elements.append(str(x))

    def getImageLink():
        count = 0
        for element in elements:
            arrElement = element.split("src=\"")
            if ".jpg" in arrElement[1]:
                link = arrElement[1].split(".jpg")[0] + ".jpg"
            elif ".png" in arrElement[1]:
                link = arrElement[1].split(".png")[0] + ".png"
            imageLink.append(link)
            count+=1
        print("Current count: ",count)

    def getImageTitle():
        for element in elements:
            arrElement = element.split("<img alt=\"Free")
            if "photo and picture" in arrElement[1]:
                title = arrElement[1].split("photo and picture")[0]
            elif "illustration and picture" in arrElement[1]:
                title = arrElement[1].split("illustration and picture")[0]
            imageTitle.append(title)

    def writeDate():
        with open("pixabay.csv","w") as file:
            writer = csv.writer(file)
            for index in range(len(imageLink)):
                writer.writerow([imageLink[index],imageTitle[index]])


    def getData():
        splitOnBloc()
        getImageLink()
        getImageTitle()
        writeDate()
        imageLink.clear()
        imageTitle.clear()

    currentPage = 1
    while True:
        # get url
        _url = url + str(currentPage)
        # get page
        session = requests.Session()
        session.headers = headers
        response = session.get(_url)
        getStatus(currentPage,response.status_code)
        # get html soup
        html_soup = BeautifulSoup(response.text, 'html.parser')
        # get imageBloc
        allImages = html_soup.find_all('a', class_="link--WHWzm",href = True)
        soupArray.append(allImages)
        # processing

        if soupArray != []:
            getData()
            value = random.random()
            scaled_value = 1 + (value * (9 - 5))
            time.sleep(scaled_value)
            currentPage += 1
        else:
            error = True
            break

parsing()


