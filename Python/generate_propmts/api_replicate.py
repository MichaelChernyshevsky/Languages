import replicate

def get_img(prompt: str):
    try:
        output = replicate.run(
            ref = "imaigination/d5afdb62-6007-4917-84a9-f56976fd377d-342:f4d1a9691b9cd5e17a929f9fb62bff88225c19ad25b7692777921b3194bc47ef",
            input = {
                "prompt": prompt
                }
        )
        return output[0]

    except:
        return 'https://www.globalsign.com/application/files/9516/0389/3750/What_Is_an_SSL_Common_Name_Mismatch_Error_-_Blog_Image.jpg'

