# 🏸 UPM CourtLink

**UPM CourtLink: UPM Smart Sports Facility Booking System with AI and Wallet Integration**

UPM CourtLink is a mobile-first Flutter application built for Universiti Putra Malaysia to streamline the booking of campus sports facilities like tennis courts. The app supports user and admin roles, a wallet-based payment system, smart booking recommendations, and cancellation with refund features — all structured around a clean Flutter UI architecture.

---

## 🚀 Features (v1.0 UI-Only)

### 👤 User Features
- 📲 Login/Register (UPM & Public)
- 🎾 Book sports facilities (tennis focus)
- ✅ Booking success confirmation screen
- 💰 In-app wallet UI (top-up, balance, transactions)
- 🕑 Booking history and cancellation screen
- 🙋‍♂️ User profile view
- 🤖 Chatbot mock (Dialogflow integration later)

### 🛠 Admin Features
- 🔐 Admin login screen
- 📋 View all bookings
- 🏟 Manage sports facilities (add/edit courts)
- 💳 View user transactions
- 📊 Analytics dashboard (mock UI only)

---

## 📁 Project Structure (v1.0 UI Only)

```plaintext
lib/
├── main.dart                        # App entry and route definitions

├── screens/                         # All app screens grouped by role

│   ├── admin/                       # Admin-side management tools
│   │   ├── admin_panel.dart
│   │   ├── analytics_screen.dart
│   │   ├── manage_facilities_screen.dart
│   │   ├── transactions_screen.dart
│   │   └── view_bookings_screen.dart

│   ├── auth/                        # Authentication (login/registration)
│   │   ├── admin_login_screen.dart
│   │   ├── login_selection_screen.dart
│   │   ├── public_register_screen.dart
│   │   ├── public_user_login_screen.dart
│   │   └── upm_login_screen.dart

│   ├── user/                        # UPM/Public user features
│       ├── booking_screen.dart
│       ├── booking_success_screen.dart
│       ├── cancel_booking_screen.dart
│       ├── history_screen.dart
│       ├── home_screen.dart
│       ├── profile_screen.dart
│       ├── select_sport_screen.dart
│       ├── tennis_booking_form_screen.dart
│       └── wallet_screen.dart

🛠️ Planned Development (v2.0+)
These features and services will be added in future versions:

Firebase Auth – Secure login and role-based access

Firestore – Booking, user, and transaction data storage

ToyyibPay – Wallet top-up and payment integration

Python Flask AI – Time slot recommendation engine

Dialogflow – Smart chatbot for booking assistance

Firestore Rules – Secure and role-based access control

👨‍🎓 Final Year Project
Author: Muhammad Jay Safan
University: Universiti Putra Malaysia
Project Title: UPM CourtLink: UPM Smart Sports Facility Booking System with AI and Wallet Integration
Session: 2025