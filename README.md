# Breast Cancer Prediction Microservice 🔬

A Flask-based microservice for breast cancer prediction using machine learning, containerized with Docker.

![Python](https://img.shields.io/badge/Python-3.12-3776AB?logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-2.0-000000?logo=flask&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)

## 📋 Overview

This microservice provides a REST API for predicting breast cancer diagnosis using the Wisconsin (Diagnostic) dataset model. It's part of the Week 11 Graded Assignment for microservices architecture.

## ✨ Features

- 🔮 ML-based breast cancer prediction
- 🐳 Docker containerization
- 🔄 REST API endpoints
- ❤️ Health check endpoint
- 📊 Model information endpoint

## 🚀 Quick Start

### Using Docker

```bash
# Build the image
docker build -t breast-cancer-prediction .

# Run the container
docker run -p 5000:5000 breast-cancer-prediction
```

### Local Development

```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # Linux/Mac
# venv\Scripts\activate   # Windows

# Install dependencies
pip install -r requirements.txt

# Run the app
python app.py
```

## 📡 API Endpoints

### Health Check
```http
GET /health
```
Returns: `ok`

### Model Info
```http
GET /info
```
Returns:
```json
{
  "name": "Breast Cancer Wisconsin (Diagnostic)",
  "version": "v1.0.0"
}
```

### Predict
```http
POST /predict
Content-Type: application/json

{
  "feature1": value1,
  "feature2": value2,
  ...
}
```
Returns: Prediction result

## 📁 Project Structure

```
├── app.py              # Flask application
├── ms/                 # Microservice module
│   ├── __init__.py
│   └── functions.py    # ML model functions
├── requirements.txt    # Python dependencies
├── Dockerfile          # Container definition
├── model_binary.dat.gz # Trained ML model
└── README.md
```

## 🐳 Docker Details

- **Base Image**: `python:3.12-slim`
- **Exposed Port**: 5000
- **Working Directory**: `/app`

## 📊 Model Information

- **Dataset**: Wisconsin Breast Cancer (Diagnostic)
- **Type**: Binary Classification
- **Features**: 30 diagnostic features
- **Output**: Malignant / Benign prediction

## 📄 Assignment Context

This project is part of:
- **Week 11 Graded Assignment**
- **Topic**: Microservices Architecture
- **Reference**: See `week10-12.docx`

## 🔧 Dependencies

Key dependencies include:
- Flask 2.0.2
- scikit-learn
- pandas
- numpy
- gunicorn

See `requirements.txt` for full list.

## 📄 License

Educational Purpose

---

Developed by [Rajmani Shukla](https://github.com/RajmaniShukla)
