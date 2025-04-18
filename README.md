# -Customer-Review-Classification

# 💬 Sentiment Analysis System – Customer Review Classification

Objective: Analyze customer reviews and classify them as positive or negative.
I have download dataset from Kaggle <br>
🧹 Data Preprocessing:
1. Removed white spaces, punctuation, and stop words to clean and normalize textual data. 

2. Handled case normalization and noise reduction for better token consistency.

# 🧠 Text Processing & Feature Engineering:
1. Utilized NLTK for tokenization, stemming, and lemmatization to reduce words to their base form.

2. Applied Bag of Words (BoW) and TF-IDF vectorization to convert text into meaningful numerical feature vectors.

# 🤖 Model Training:
1. Trained various ML models including Logistic Regression, Naive Bayes, and SVM for sentiment prediction.

2. Compared model performance using metrics such as Accuracy, Precision, Recall, and F1-score.

# 📈 Results:
1. Achieved high classification accuracy in distinguishing between positive and negative reviews.

2. Demonstrated effectiveness of feature engineering and preprocessing in improving model performance.

# 🤖 Skills: 
Python EDA , Stastics ,Data Cleaning and Preprocessing,  Supervised Learning , Product Review Sentiment Analysis , Model Building , Future engineer , Sentiment Analysis ,NLP , Predictive Modeling, Kaggle 



# Created Environment Variables & activate:-
conda create -p venv python==3.10 -y 
conda activate venv/

## Create Virtual Environments & activate:- 
python -m venv my_code
my_code/Scripts/activate


# Install required packages:-
pip install -r requirements.txt

# Testing End Points:- 

URL:- http://localhost:5000
Text:- 

"Terrible experience, I want a refund"
"text": "I really loved this product!"
"text":"this is good but Worst product ever"
"Worst product ever but this is good"
"This dog food is amazing!"

# 🧪 Testing API end points 
<!-- 🧪 How to Use the API
🧠 cURL example: -->

curl -X POST http://localhost:5000/api/predict \
     -H "Content-Type: application/json" \
     -d '{"text": "I really loved this product!"}'


POSTMAN :- 

1. Create a new request
2. Select POST as the request method
3. Enter the URL of the API endpoint
4. Select the JSON body option
5. Enter the JSON data in the body field
6. Click the Send button to send the request
7. Check the response in the response body field
# 🚀 API Endpoints
// {
// "review":{
//   "text":"Terrible experience, I want a refund"}
  
// }

// {"text": "I really loved this product!"}


// {"text":"this is good but Worst product ever"}

// {"text": "Worst product ever but this is good"}

// {"text":"This dog food is amazing!"}