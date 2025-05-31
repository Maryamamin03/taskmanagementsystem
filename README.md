# taskms
# 📋 Task Manager App (Flutter + Firebase)

A sleek and modern **Task Management App** built with **Flutter** and powered by **Firebase**. This app lets users register, log in, add tasks and subtasks, manage profiles, and contact support — all with real-time cloud sync.

---

## ✨ Features

### 🔐 Authentication
- Firebase Email/Password Authentication
- Sign Up / Log In screens with validation
- Secure user session management
- Logout functionality

### ✅ Task Management
- Add main tasks with:
  - Title
  - Icon selection
  - Color theme
  - Progress (left/done)
- Add subtasks to each task:
  - Time
  - Slot (Morning, Afternoon, etc.)
  - Individual subtask title and color

### 👤 Profile Management
- User profile form collects:
  - First Name
  - Last Name
  - Username
  - Phone Number
  - Email
- Stored securely in Firestore and editable

### 💬 Contact Us
- Contact form with:
  - Name
  - Email
  - Message
- Submissions are saved to Firestore (`contacts` collection)

---

## 🧠 Tech Stack

- **Flutter** (UI)
- **Firebase Auth** (User login/signup)
- **Cloud Firestore** (Task, profile, contact info storage)
- **Provider / setState** (State management)
- **Material Design** (Clean and responsive UI)

---

## 📁 Project Structure


A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
