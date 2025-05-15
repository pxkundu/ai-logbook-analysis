import boto3
import json

def extract_text(bucket, key):
    textract = boto3.client('textract')
    response = textract.detect_document_text(
        Document={'S3Object': {'Bucket': bucket, 'Name': key}}
    )
    # Placeholder: Process Textract response
    return json.dumps(response)
