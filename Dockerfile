# Use Python base image
FROM python:3.10-slim

# Set environment variable for NLTK
ENV NLTK_DATA=/app/nltk_data

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Download NLTK corpora (like punkt, stopwords)
RUN python -m nltk.downloader -d /app/nltk_data punkt stopwords

# Expose your app port
EXPOSE 5000

# Run the app (Flask or Streamlit)
CMD ["python", "app.py"]
