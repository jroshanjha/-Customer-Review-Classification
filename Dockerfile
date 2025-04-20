# Base Python image
FROM python:3.10-slim

# Set environment variable for NLTK
ENV NLTK_DATA=/app/nltk_data

# Set work directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Download NLTK data
RUN mkdir -p /app/nltk_data && \
    python -m nltk.downloader -d /app/nltk_data punkt stopwords

# Expose Flask or Streamlit port
EXPOSE 5000

# Run Flask or Streamlit
CMD ["python", "app.py"]
