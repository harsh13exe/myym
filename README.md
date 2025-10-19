Flutter MVVM Authentication Demo
A simple, clean-architecture demonstration project built with Flutter using the Model-View-ViewModel (MVVM) design pattern and the provider package for state management. This application showcases a basic user authentication flow (Login and Logout).
🚀 Features
Login Flow: Accepts mock credentials (user / password).
Logout Functionality: Clears the authentication state and returns the user to the login screen.
Real-time State Management: Uses ChangeNotifierProvider to instantly switch between the LoginView and HomeView when the authentication status changes.
Clean Separation of Concerns: Clearly separates UI (View), Business Logic (ViewModel), and Data Structure (Model).
📐 Architecture: MVVM Pattern
This project strictly adheres to the MVVM pattern for maintainability and scalability.
Component
Role
Files
Model
Holds the data structure (what the data looks like).
lib/model/auth_model.dart
View
The UI layer (widgets) that the user interacts with. It listens to the ViewModel.
lib/view/login_view.dart, lib/view/home_view.dart
ViewModel
Contains the business logic and state. It updates the Model and notifies the View of changes.
lib/viewmodel/auth_view_model.dart

Flow Diagram
View (LoginScreen) captures user input.
View calls a function (login) on the ViewModel (AuthViewModel), passing the data (AuthModel).
ViewModel executes the business logic (mock API call).
ViewModel updates its state (_isAuthenticated) and calls notifyListeners().
The root View (main.dart's Consumer) listens to this change and rebuilds, showing the HomeView.
When the user presses Logout on the HomeView, the process reverses, and the LoginView is shown.
🛠️ Prerequisites
Flutter SDK installed and configured.
A code editor (VS Code or Android Studio).
📦 Dependencies
The core functionality and state management rely on the official Flutter Provider package.
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0 # Used for efficient state management (MVVM)

🏃 Getting Started
Clone the repository:
git clone [YOUR_REPO_URL]
cd flutter_mvvm_auth_demo


Install dependencies:
flutter pub get


Run the application:
flutter run


Test Credentials
Use the following mock credentials to log in:
Field
Value
Username
user
Password
password


