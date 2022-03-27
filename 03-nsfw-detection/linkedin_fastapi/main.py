from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import uvicorn
import gunicorn
from pydantic import BaseModel
from model_nsfw_images import predict_nsfw_images
from model_nsfw_text import predict_nsfw_text
import numpy as np

app = FastAPI()

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# pydantic models


class request_body_nsfw_images(BaseModel):
    url: str


@app.get("/")
def welcome():
    return {"ping": "Hello developer. Go to /docs to see the Swagger documentation"}


@app.post("/predict_nsfw_images", status_code=200)
def get_prediction_nsfw_images(data: request_body_nsfw_images):
    '''
    Get prediction if the images are nsfw or not. The return type is a JSON in the following format (scores are examples)
    {'file.jpg': {'sexy': 4.3454722e-05, 'neutral': 0.00026579265, 'porn': 0.0007733492, 'hentai': 0.14751932, 'drawings': 0.85139805}}

    Only drawings and neutral are considered 'safe for work'
    '''

    prediction = predict_nsfw_images(data.url)

    if not prediction:
        raise HTTPException(status_code=400, detail="File could not be saved.")

    return prediction
