
from templates import prefix,listTypesPerson,listStyle,listPlace
from api_replicate import get_img
from data import createFile,addToFile,createFolder
from tqdm import tqdm
import time






for person in listTypesPerson:
    for style in listStyle:
        row = 0
        df = createFile()
        path = createFolder(f'{person}'+'_'+f'{style}')
        name = person+'_'+style
        for place in tqdm(listPlace): 
            try:
                img = get_img(prompt= prefix + ' ' + person + ' ' + style + ' ' + place )
                addToFile(
                    df = df,
                    prompt = prefix + ' ' + person + ' ' + style + ' ' + place,
                    url = img,
                    path = path,
                    name_img= person + ' ' + style + ' ' + str(row),
                    )
            finally:
                row+=1
        df.to_excel(f'./{name}.xlsx')
    
    
    
