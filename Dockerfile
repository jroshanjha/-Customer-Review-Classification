# # Use Python base image
# FROM python:3.10-slim

# # Set environment variable for NLTK
# ENV NLTK_DATA=/app/nltk_data

# # Set working directory
# WORKDIR /app

# # Copy all files
# COPY . .

# # Install Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Download NLTK corpora (like punkt, stopwords)
# RUN python -m nltk.downloader -d /app/nltk_data punkt stopwords

# # Expose your app port
# EXPOSE 5000

# # Run the app (Flask or Streamlit)
# CMD ["python", "app.py"]


FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    gfortran \
    musl-dev \
    libopenblas-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt

RUN mkdir /var/log/app
RUN touch /var/log/app/app.log
RUN touch /var/log/app/access.log

ENV FLASK_LOG_FILE=/var/log/app/app.log
ENV FLASK_ACCESS_LOG_FILE=/var/log/app/access.log
    g++ \
    gfortran \
    musl-dev \
    libopenblas-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]