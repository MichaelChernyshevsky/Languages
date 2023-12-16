
import pandas as pd
import requests
import os

def createFolder(name_folder):
    path = f'/Users/mihailcernysevskii/downloads/{name_folder}'
    try: 
        os.makedirs(path)
        return path
    except OSError:
        if not os.path.isdir(path):
            raise


def createFile():
    df = pd.DataFrame(
         {'name_img': [],
             'prompt': [],
            'link': [],
            })
    return df

def addToFile(df,prompt,url,name_img,path):
    
    response = requests.get(url)
    with open(f"{path}/{name_img}.jpg", "wb") as f:
        f.write(response.content)


    df.loc[ len(df.index )] = [name_img,prompt,url]
     


