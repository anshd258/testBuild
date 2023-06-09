#!/bin/bash

# Clone the Git repository
git clone "$GIT_URL" /home/developer/app

# Move into the app directory
cd /home/developer/app

#get packages
flutter pub get
# Build the APK
flutter build apk --no-shrink --no-android-gradle-daemon



# Stop the container
echo "APK build and upload complete. Stopping the container..."
shutdown -h now