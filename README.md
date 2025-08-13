# 🌤️ Weather App - Flutter Assessment Implementation

A comprehensive weather application built with Flutter that demonstrates advanced mobile development concepts including location services, state management, local caching, and clean architecture.
## 📱 Screenshots
<img src="https://github.com/user-attachments/assets/6d185527-c662-40e2-9ac4-c7c008b69cd6" width="250">
<img src="https://github.com/user-attachments/assets/e49be0e1-900b-4ca0-91a2-29dd7b3709e3" width="250">
<img src="https://github.com/user-attachments/assets/e50da74b-f8ec-404b-bba4-c3c1df207750" width="250">
<img src="https://github.com/user-attachments/assets/1a5a6145-039b-42a2-9e16-2d14b8ef09ef" width="250">
<img src="https://github.com/user-attachments/assets/fd332b22-7438-48aa-8ef5-cfaf2ab1fa89" width="250">

## 🎯 Assessment Requirements Analysis

### ✅ **1. Launch & Permission Gate (First Run) - IMPLEMENTED**
- **LocationPermissionScreen** serves as the app's entry point
- Automatically requests foreground location permission on first launch
- **Smart Navigation Logic**: 
  - If permission granted → proceeds to Home screen using GPS coordinates
  - If permission denied → shows "Choose City" button → City Picker screen
  - Handles permanently denied permissions gracefully with user-friendly fallbacks

**Implementation**: `lib/features/location_permission/location_permission_screen.dart`

### ✅ **2. Home — Weather Dashboard - IMPLEMENTED**
- **Current Weather Display**: City name, date/time, temperature (°C), and weather condition
- **Pull-to-refresh functionality** for real-time updates
- **Refresh button** for manual data refresh
- **"Offline" badge** when data is served from cache
- **"Last updated: hh:mm"** timestamp display with 12-hour format (e.g., "2:30 PM")
- **Error banner** with retry functionality for failed requests
- **Beautiful UI** with gradient backgrounds and modern design

**Implementation**: `lib/features/home/presentation/view/home_body_widget.dart`

### ✅ **3. City Picker (Fallback) - IMPLEMENTED**
- **Text field** for city name input with search functionality
- **Static city list** featuring popular cities (Cairo, Amman, Kuwait City, Dubai)
- **Seamless navigation** back to Home screen with selected city coordinates
- **User-friendly interface** with clear selection options

**Implementation**: `lib/features/select_country/presentation/view/select_country_screen.dart`

### ✅ **4. State Management (BLoC/Cubit) - IMPLEMENTED**
- **Clean Architecture**: No business logic in Widgets
- **AppCubit**: Manages app-wide state (location, permissions, city data)
- **HomeCubit**: Handles weather data state management
- **Comprehensive States**: Loading, Success, Error, and Idle states
- **Proper separation of concerns** with repository pattern

**Implementation**: 
- `lib/core/utils/app_cubit/app_cubit.dart`
- `lib/features/home/presentation/view_model/cubit/home_cubit.dart`

### ✅ **5. Fake Weather API - IMPLEMENTED**
- **In-app service** with simulated 1-2s network latency
- **Deterministic weather payload** with realistic data
- **No real HTTP calls** - completely self-contained
- **Multiple error scenarios** (Network, Server, Unauthorized, etc.)
- **Real-time time formatting** using intl package (12:00 PM format)

**Implementation**: `lib/core/network/fake_weather_response.dart`

### ✅ **6. Local Storage with ObjectBox - IMPLEMENTED**
- **Single entity** for latest weather result storage
- **"Offline" badge visibility** when reading from cache
- **Automatic cache management** with schema migration handling
- **Generic CRUD operations** for flexible data handling
- **Persistent local storage** for offline functionality

**Implementation**: `lib/core/network/objectbox_service.dart`

### ✅ **7. GPS & Permissions - IMPLEMENTED**
- **Geolocator integration** for precise location services
- **Comprehensive permission flow** with user guidance
- **Fallback to manual city selection** when GPS unavailable
- **Location caching** in SharedPreferences for persistence
- **Smart navigation** based on permission status

**Implementation**: `lib/core/utils/app_cubit/app_cubit.dart`

## 🏗️ Architecture & Technical Implementation

### **Clean Architecture Structure**
```
lib/
├── core/                           # Core functionality
│   ├── network/                    # Network layer
│   │   ├── fake_weather_response.dart    # Fake API responses
│   │   ├── objectbox_service.dart        # Local database service
│   │   ├── http.dart                     # HTTP client
│   │   └── preferences.dart              # SharedPreferences wrapper
│   ├── resources/                  # App resources
│   │   ├── routs.dart                    # App routing
│   │   ├── app_them_data.dart           # Theme configuration
│   │   └── get_it.dart                  # Dependency injection
│   └── utils/                      # Utilities
│       └── app_cubit/                    # App-wide state management
├── features/                       # Feature modules
│   ├── location_permission/              # Permission gate
│   ├── home/                             # Weather dashboard
│   └── select_country/                   # City picker
└── main.dart                       # App entry point
```

### **State Management Flow**
```
AppCubit (Location States) → LocationPermissionScreen → 
├─ LocationSuccessState → Navigate to HomeScreen
├─ LocationPermissionDeniedState → Show Permission Request UI
├─ LocationServiceDisabledState → Show Enable Location UI
└─ LocationErrorState → Show Error UI with Retry
```

### **Data Flow Architecture**
```
HomeScreen → HomeCubit → HomeRepo → 
├─ HomeRemoteDataSource → Fake Weather API → Cache in ObjectBox
└─ HomeLocalDataSource → Retrieve from ObjectBox (Offline)
```

## 🚀 Setup & Installation

### **Prerequisites**
- Flutter SDK (3.27.3)
- Dart SDK (^3.6.1)
- Android Studio / VS Code
- Git

### **1. Clone the Repository**
```bash
git clone https://github.com/yourusername/weather-app.git
cd weather-app
```

### **2. Install Dependencies**
```bash
flutter pub get
```

### **3. Run Build Runner (Required for ObjectBox)**
```bash
flutter packages pub run build_runner build
```

### **4. Run the App**
```bash
flutter run
```

## 📱 Key Features & User Experience

### **Smart Location Handling**
- **Automatic GPS detection** on app launch
- **Permission management** with clear user guidance
- **Fallback mechanisms** for location-denied scenarios
- **City selection** when GPS unavailable

### **Weather Data Management**
- **Real-time weather updates** with pull-to-refresh
- **Offline capability** with cached data display
- **Error handling** with user-friendly retry options
- **Last updated timestamps** for data freshness

### **Cache Management**
- **Clear cache functionality** with beautiful floating action button
- **Confirmation dialogs** to prevent accidental data loss
- **Success/error feedback** with SnackBar notifications
- **Automatic cache updates** after successful API calls

### **User Interface**
- **Modern gradient backgrounds** for visual appeal
- **Responsive design** that works on all screen sizes
- **Lottie animations** for enhanced user experience
- **Intuitive navigation** between screens


## 🧪 Testing Scenarios

### **First Run Experience**
1. **Launch app** → Location permission request
2. **Grant permission** → GPS location → Home screen
3. **Deny permission** → City picker screen

### **Offline Mode Testing**
1. **Use app normally** with internet connection
2. **Disconnect internet** and pull to refresh
3. **"Offline" badge appears** with cached data
4. **Timestamp shows** when data was last updated

### **Error Handling Testing**
1. **Simulate network errors** to test error states
2. **Test permission edge cases** (denied, permanently denied)
3. **Verify retry functionality** works correctly
4. **Check error messages** are user-friendly

### **Cache Management Testing**
1. **Use app** to generate cached data
2. **Tap clear cache button** to see confirmation dialog
3. **Confirm clearing** and verify navigation to city picker
4. **Check success/error messages** display correctly

## 🔍 Advanced Features

### **Weather Icon Mapping**
- **Temperature-based icons** for hourly forecasts
- **Dynamic icon selection** based on weather conditions
- **Visual consistency** across the app

### **Time Formatting**
- **12-hour format** with AM/PM (e.g., "2:30 PM")
- **Real-time updates** for current time display
- **Localized formatting** using intl package

### **Responsive Design**
- **Adaptive layouts** for different screen sizes
- **Proper spacing** and typography scaling
- **Touch-friendly** button sizes and interactions

