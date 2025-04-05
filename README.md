# 💼 Flutter Business Card Application

A fully customizable and elegant Flutter business card app. 
This project features a modern layout with a profile picture, name, title, contact info, address, website, social media icons, and a QR code. 
Ideal for showcasing your personal or professional brand in mobile or web environments.

## ✨ Features

- Profile photo with `CircleAvatar`
- Full name and professional title
- Contact details: phone, email, address
- Personal website link
- Social media icon buttons (LinkedIn, GitHub, Instagram)
- Embedded QR code linking to your website
- Responsive and scrollable layout
- Card design with rounded corners and shadow

## 🚀 Technologies Used

- Flutter
- Dart
- [qr_flutter](https://pub.dev/packages/qr_flutter) for QR code generation
- Material Design 3

## 📁 Project Structure

```
lib/
 └── main.dart           # Complete UI and logic in one file
assets/
 └── profile.jpg         # Optional local profile image
```

## 🔧 Getting Started

1. Clone the repository:

```bash
git clone https://github.com/bektas-sari/flutter_business_card.git
cd flutter_business_card
```

2. Install dependencies:

```bash
flutter pub get
```

3. Add an image to the `assets/` directory (optional):

```yaml
# pubspec.yaml
flutter:
  assets:
    - assets/profile.jpg
```

4. Run the app:

```bash
flutter run
```

## 🧠 What You’ll Learn

- Creating professional layouts using Flutter widgets like `Card`, `Column`, `ListTile`
- Using `CircleAvatar` for profile images
- Handling icons and buttons for social links
- Adding QR codes with the `qr_flutter` package
- Building responsive and scrollable UI

## 🔮 Future Enhancements

- Integrate real social media links
- Add animations or transitions
- Theme switch (light/dark mode)
- Export card as a PDF

## 👨‍💻 Author

**(https://github.com/bektas-sari)**

This app is part of my Flutter learning and personal branding journey.

## 📝 License

This project is licensed under the MIT License.

