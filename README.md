# Flutter App with Node.js Backend and MongoDB

This project consists of a Flutter mobile app that communicates with a Node.js backend API, which uses MongoDB as the database.

## Project Structure

- `my_flutter_app/`: Flutter mobile application
- `backend/`: Node.js Express API server with MongoDB integration

## Prerequisites

- Flutter SDK installed
- Node.js installed
- MongoDB installed and running locally

## Setup Instructions

### 1. Install MongoDB

Download and install MongoDB Community Server from https://www.mongodb.com/try/download/community

Start MongoDB service (default port 27017).

### 2. Backend Setup

Navigate to the backend directory:

```bash
cd backend
npm install
```

Create a `.env` file in the backend directory with:

```
MONGODB_URI=mongodb://localhost:27017/myapp
PORT=3000
```

Start the backend server:

```bash
npm start
```

The API will be available at http://localhost:3000

### 3. Flutter App Setup

Navigate to the Flutter app directory:

```bash
cd my_flutter_app
flutter pub get
```

Run the app:

```bash
flutter run
```

For Android emulator, the backend URL in the code uses `10.0.2.2:3000` (emulator's localhost).

## API Endpoints

- GET /users: Fetch all users
- POST /users: Create a new user (body: {name, email})

## Notes

- Ensure MongoDB is running before starting the backend.
- For production, update the MongoDB URI and handle CORS properly.
- The Flutter app fetches users on startup and displays them in a list.
