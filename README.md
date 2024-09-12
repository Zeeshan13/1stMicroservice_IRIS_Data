# Iris Classification Microservice

The Iris dataset is a classic dataset in the field of machine learning and statistics. It contains 150 observations of iris flowers, each described by four features: sepal length, sepal width, petal length, and petal width. Each observation is labeled with one of three classes: Iris setosa, Iris versicolor, and Iris virginica. This dataset is widely used for classification tasks.

This project implements a microservice for classifying Iris flower species based on the famous Iris dataset. The microservice uses a machine learning model built with scikit-learn and is deployed using Docker and Google Cloud Run.

## Dataset

The Iris dataset is a well-known dataset used for pattern recognition and classification. It includes 150 records, each containing 4 features: sepal length, sepal width, petal length, and petal width, along with the species of Iris flowers as the target variable.

## Features

- **Sepal Length**
- **Sepal Width**
- **Petal Length**
- **Petal Width**

Target: The three Iris species classes: `Setosa`, `Versicolor`, and `Virginica`.

## Project Structure

├── app.py # Flask app for serving predictions

├── iris_model.pkl # Pre-trained machine learning model 

├── Dockerfile # Instructions for building Docker image 

├── requirements.txt # Python dependencies 

├── templates 

│ ├── index.html # Frontend form for input 



## Local Development

### Prerequisites

- Python 3.x
- Flask
- Docker

### Step-by-step Instructions

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/iris_classification_microservice.git
   cd iris_classification_microservice
   ```
   
2. **Install dependencies:**
   Install the necessary Python packages by running:

   ```bash
   pip install -r requirements.txt
   ```
3. **Run the application locally:**
   You can run the Flask app locally to test the microservice.

   ```bash
   python app.py
   ```
4. **Access the application:**
   Once the application is running, you can open it in your browser. You can input the values for Sepal Length, Sepal Width, Petal Length, and Petal Width to get a prediction of the Iris species.

### Dockerization

This project uses Docker to containerize the Flask application.

### Building the Docker Image 
```bash
docker build -t iris_classification
```
This command builds the Docker image with the tag iris_classification based on the instructions in the Dockerfile.

### Tagging the Image
```bash
docker tag iris_classification gcr.io/microservicezee/iris_classification
```
This command tags the local Docker image iris_classification for pushing to the Google Container Registry with the name gcr.io/microservicezee/iris_classification.

### Pushing the Docker Image
```bash
docker push gcr.io/microservicezee/iris_classification
```
This command pushes the Docker image to the Google Container Registry (GCR) in the project microservicezee.

### Deployment to Google Cloud Run

To deploy the microservice to Google Cloud Run, run the following command:

```bash
gcloud run deploy iris-classification-service --image gcr.io/microservicezee/iris_classification --platform managed --region us-central1 --allow-unauthenticated
```
This command deploys the Docker image to Google Cloud Run as a fully managed service. It will create a URL for the service that can be accessed from anywhere.

### Usage

Once deployed, you can access the Iris Classification Microservice through the generated Google Cloud Run URL for me it is : https://iris-classification-service-tftq37eyta-uc.a.run.app/. Input the required features (Sepal Length, Sepal Width, Petal Length, Petal Width), and the model will predict the species of the Iris flower.

### VS Code Setup
For local development, we used VS Code to build the model and microservice. The following steps were followed:

1. Developed the machine learning model in VS Code.
2. Tested locally using Flask on localhost.
3. Dockerized the project and pushed it to Google Cloud Platform for deployment.

### Technologies Used

- **Python:** Core programming language used for model building and API development.
- **Flask:** Web framework for serving the machine learning model as an API.
- **scikit-learn:** For model building.
- **Docker:** For containerizing the application.
- **Google Cloud Run:** For deploying the containerized application.
- **VS Code:** For local development and testing.




