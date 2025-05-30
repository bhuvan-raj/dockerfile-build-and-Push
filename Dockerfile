# Use a lightweight Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY app.py .

# Expose the app port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
