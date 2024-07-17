# Use a Python-based image
FROM python:3.9-slim

#Upgrade pip
RUN pip install --upgrade pip

# Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Specify working directory
WORKDIR /app

# Copy application code
COPY . .

# Run the application
CMD ["python", "src/predict.py"]