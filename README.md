# Final-Year-Project
Plant-Disease-Detector

A Flutter installation is required to run this project. To install Flutter, visit the official installation documentation. Set up an editor of choice as specified here.

Download the project.

git clone https://github.com/Pels28/Final-Year-Project.git
Run the below command inside the project directory to install necessary packages.

flutter pub get
To run the project in debug mode

flutter run
To generate a release build

flutter build apk
Locate the app-release.apk file from the directory build/app/outputs/flutter-apk/ and install in your Android smartphone or emulator to use.

Usage
On launching the application, you will be presented with the usage instructons. It follows that to get a suggestion of a disease affecting a plant of interest, take a photo of the plant, or select a photo of the plant from your gallery.

The application then runs the TFLITE model in the background to get a suggestion of the disease. It displays the results on the next screen Suggestions

Important to note
The tflite model has been trained to detect only a subset of the diseases. They include:

  - Cassava bacterial blight.
  - Cassava brown streak virus disease.
  - Cassava green mite
  - Cassava healthy
  - Cassava mosaic virus disease
  - Citrus Black spot
  - Citrus canker
  - Citrus healthy
  - Citrus Melanose
  - Cocoa anthracnose
  - Cocoa cssvd
  - Cocoa healthy
  - Corn (maize) Cercospora leaf spot Gray leaf spot
  - Corn (maize) Common rust 
  - Corn (maize) healthy
  - Corn (maize) Northern Leaf Blight
  - Groundnut early leaf spot
  - Groundnut early rust
  - Groundnut healthy
  - Groundnut late leaf spot
  - Groundnut nutrition deficiency
  - Groundnut rust
  - Orange Haunglongbing (Citrus greening)
  - Palm brown spots
  - Palm healthy
  - Palm white scale phase1
  - Palm white scale phase2
  - Palm white scale phase3
  - Pepper bell Bacterial spot
  - Pepper bell healthy
  - Potato Early blight
  - Potato healthy
  - Potato Late blight
  - Rice bacterial leaf blight
  - Rice brown spot
  - Rice Leaf smut
  - Tomato Bacterial spot
  - Tomato Early blight
  - Tomato healthy
  - Tomato Late blight
  - Tomato Leaf Mold
  - Tomato Septoria leaf spot
  - Tomato Target Spot
  - Tomato mosaic virus
  - Tomato  Yellow Leaf Curl Virus
  - Tomato Two-spotted spider mite
  - Wheat healthy
  - Wheat septoria
  - Wheat stripe rust
  
The size of the dataset was only sufficient enough to make the model recognize selected diseases, but it faces problems with images of non-plants.

The application was built using Flutter and the tflite model was built using Tensorflow and Keras. The dataset was from KAGGLE, articles and other third party websites.


