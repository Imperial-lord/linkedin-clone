from nsfw_detector import predict
from urllib.request import urlretrieve
import os


def predict_nsfw_images(url):
    # Retrieve image from URL
    urlretrieve(url, 'file.jpg')

    # Load the model
    model = predict.load_model('./nsfw_mobilenet2.h5')

    # Predict single image
    prediction = predict.classify(model, 'file.jpg')

    # Remove the file from current directory
    os.remove('file.jpg')

    return prediction['file.jpg']


# Sample use case of the function
prediction = predict_nsfw_images(
    'https://m.economictimes.com/thumb/msid-88176845,width-1200,height-900,resizemode-4,imgsize-81188/google-india.jpg')
print(prediction)
