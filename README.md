# Calculator App

The Calculator App is an application that allows users to enter a specific code to access a hidden screen. In the hidden screen, users can hide images from their device's gallery and save selected images within the application they can also unhide the images if they want.

## Dart Files
The project consists of multiple Dart files, organized as follows:

1. `main.dart`: This serves as the entry point for the application.

### UI and Logic
2. `FirstScreen.dart`: This file contains the logic and user interface for the initial screen of the app and this screen give general calculator logics.

3. `Hide.dart`: Here, you'll find the implementation for the hidden screen, where users can manage their gallery images.

## Database and Data Model
4. `Database.dart`: We use the Sqflite database to enable offline functionality and enhance app performance.

5. `Photo.dart`: This file defines the data model for photos used within the application.

## Database Usage
We opted for the Sqflite database for its offline capabilities and speed. This choice ensures that the app can function efficiently without relying on an internet connection.

## Packages
The Calculator App relies on several packages to facilitate its functionality:

1. `math_expression`: Used to evaluate mathematical expressions.

2. `image_picker`: Enables users to pick images from their device's gallery.

3. `sqflite`: Provides the database functionality for offline data storage.

4. `path_provider`: Used to access the device's file system path.

6. `expression and contextmodel`: Used to solve the mathematical expressions for my caculator functions.

7. `typed_data`: Utilized for working with low-level binary data.

Please refer to the respective Dart files and package documentation for more details on their usage and implementation within the Calculator App.
