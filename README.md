# 🧩 Flutter MVVM Authentication Demo

A simple, clean-architecture demonstration project built with **Flutter** using the **Model-View-ViewModel (MVVM)** design pattern and the **Provider** package for state management.  
This application showcases a basic **user authentication flow (Login and Logout)** implemented with real-time state updates.

---

## 🚀 Features

- 🔐 **Login Flow** – Accepts mock credentials (`user / password`).
- 🚪 **Logout Functionality** – Clears authentication state and redirects to the login screen.
- ⚡ **Real-time State Management** – Uses `ChangeNotifierProvider` to instantly switch between `LoginView` and `HomeView`.
- 🧱 **Clean Separation of Concerns** – Separates:
  - **UI (View)**
  - **Business Logic (ViewModel)**
  - **Data Structure (Model)**

---

## 📐 Architecture – MVVM Pattern

This project strictly follows the **MVVM** architecture for maintainability and scalability.

| Component | Role | Files |
|------------|------|-------|
| **Model** | Defines the data structure | `lib/model/auth_model.dart` |
| **View** | Handles UI and listens to ViewModel | `lib/view/login_view.dart`, `lib/view/home_view.dart` |
| **ViewModel** | Contains business logic and state | `lib/viewmodel/auth_view_model.dart` |

---

## 🔄 Flow Diagram

1. **View (LoginScreen)** captures user input.  
2. **View** calls `login()` on the **ViewModel (AuthViewModel)**, passing the `AuthModel`.  
3. **ViewModel** performs the mock authentication logic.  
4. **ViewModel** updates its internal state (`_isAuthenticated`) and calls `notifyListeners()`.  
5. **Root View** (`main.dart` using `Consumer`) listens to the change and rebuilds the UI to show **HomeView**.  
6. **Logout** reverses the process, returning the user to the **LoginView**.

---

## 🛠️ Prerequisites

Before running the app, ensure you have:

- ✅ Flutter SDK installed and configured  
- ✅ Code editor (VS Code or Android Studio)  
- ✅ Basic understanding of MVVM architecture  

---

## 📦 Dependencies

The project uses Flutter’s **Provider** package for efficient state management.

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
