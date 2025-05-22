# UPM CourtLink

**UPM CourtLink: UPM Smart Sports Facility Booking System with AI and Wallet Integration**

UPM CourtLink is a mobile-first Flutter application built for Universiti Putra Malaysia to streamline the booking of sports facilities such as tennis courts. The system supports user authentication, wallet-based payments, AI-powered time slot recommendations, and admin features for managing facility availability and bookings.

---

## 🚀 Features

- 📅 **Smart Facility Booking** – View real-time availability and book time slots
- 💳 **In-App Wallet System** – Top-up credits and pay directly within the app
- 🤖 **AI Time Slot Recommendation** – Suggests best slots based on user history
- 🔔 **Notifications** – Booking confirmations, reminders, and alerts
- ❌ **Cancellations with Refunds** – Cancel with reason and receive wallet refunds
- 📊 **Admin Panel** – Manage bookings, view analytics, and control facilities

---

## 🛠️ Tech Stack

- **Flutter** – Cross-platform mobile/web frontend
- **Firebase** – Auth, Firestore (NoSQL DB), Cloud Functions
- **Python (Flask)** – AI recommendation engine
- **ToyyibPay** – Secure wallet top-up payment gateway

---

## 📂 Project Structure

```plaintext
lib/
├── main.dart
├── screens/            # All UI screens (login, home, booking, etc.)
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── booking_screen.dart
│   ├── wallet_screen.dart
│   ├── history_screen.dart
│   └── admin_panel.dart
├── services/           # Firebase and app logic
│   ├── auth_service.dart
│   ├── booking_service.dart
│   ├── wallet_service.dart
│   └── ai_service.dart
├── models/             # Data models (user, booking, transaction)
├── widgets/            # Reusable UI components
├── constants/          # Theme, colors, and string constants
