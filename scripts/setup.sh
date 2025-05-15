#!/bin/bash
# Project setup script
echo "Installing dependencies..."
pip install -r backend/services/ingestion/requirements.txt
npm install --prefix frontend
terraform init infrastructure
