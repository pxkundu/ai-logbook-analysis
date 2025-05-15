import pytest
from fastapi.testclient import TestClient
from src.main import app

client = TestClient(app)

def test_upload_endpoint():
    response = client.post("/upload", json={"bucket": "test-bucket", "key": "test.pdf"})
    assert response.status_code == 200
    assert "status" in response.json()
