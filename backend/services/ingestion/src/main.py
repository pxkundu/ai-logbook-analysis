from fastapi import FastAPI
import boto3
import os

app = FastAPI()
s3_client = boto3.client('s3')
BUCKET_NAME = os.getenv("BUCKET_NAME", "ai-logbook-data-dev")

@app.post("/upload")
async def upload_file(key: str):
    try:
        response = s3_client.head_object(Bucket=BUCKET_NAME, Key=key)
        return {"status": "File exists", "metadata": response['Metadata']}
    except s3_client.exceptions.ClientError:
        return {"status": "File not found"}
