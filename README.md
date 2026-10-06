# quiz_application


<p align="justify">
  <img src="https://github.com/user-attachments/assets/76103069-9c46-46f0-b11d-63d8ccb1f70d" width="220"/>
   &nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/468ac162-692a-4f5e-8b38-fe3660e20224" width="220"/>
   &nbsp;&nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/17194cb3-948e-45f1-badc-ee4d4f686a6e" width="220"/>
   &nbsp;&nbsp;&nbsp;
 
</p>

A new Flutter project.

# 🧠 Quiz Master — Flutter Quiz Application

Aplikasi quiz sederhana yang dibangun menggunakan **Flutter & Dart** untuk menguji pemahaman mengenai konsep dasar Flutter, API, JSON, asynchronous programming, dan backend.

Project ini dibuat sebagai bagian dari proses belajar dan pengembangan kemampuan **Flutter Mobile Development**.

## 📱 About The Project

**Quiz Master** adalah aplikasi quiz interaktif yang memungkinkan pengguna untuk:

* Memulai quiz
* Menjawab beberapa pertanyaan pilihan ganda
* Mendapatkan soal dengan urutan jawaban yang diacak
* Melihat progress pengerjaan quiz
* Melihat jumlah jawaban benar dan salah
* Melihat persentase nilai
* Melihat detail jawaban setiap soal
* Mengulang quiz

## ✨ Features

### 🏁 Start Quiz

Halaman awal untuk memulai quiz.

### 📝 Multiple Choice Questions

Pengguna dapat memilih salah satu dari beberapa pilihan jawaban.

### 🔀 Randomized Answers

Pilihan jawaban diacak menggunakan Dart:

```dart
List<String> get shuffleAnswered {
  final shuffleList = List.of(answer);
  shuffleList.shuffle();
  return shuffleList;
}
```

Hal ini membuat posisi jawaban benar tidak selalu berada pada pilihan yang sama.

### 📊 Quiz Progress

Progress quiz ditampilkan menggunakan `LinearProgressIndicator`.

```dart
final progress = (currentIndexAnswer + 1) / question.length;
```

### 🏆 Quiz Result

Setelah semua pertanyaan selesai, aplikasi menampilkan:

* Total pertanyaan
* Jumlah jawaban benar
* Jumlah jawaban salah
* Persentase nilai
* Detail jawaban pengguna
* Jawaban yang benar

### 🔍 Question Summary

Setiap pertanyaan ditampilkan kembali pada halaman hasil untuk membandingkan:

**Your Answer** vs **Correct Answer**

Jawaban benar dan salah diberikan indikator visual yang berbeda.

### 🔄 Restart Quiz

Pengguna dapat mengulang quiz tanpa menutup aplikasi.

---

## 🛠️ Technologies

* **Flutter**
* **Dart**
* **Material Design**
* **StatefulWidget**
* **StatelessWidget**
* **setState()**
* **List & Map**
* **Getter**
* **Callback Function**
* **Object-Oriented Programming**
* **Asynchronous Programming Concepts**
* **JSON & API Concepts**

---

## 📂 Project Structure

```text
lib/
│
├── main.dart
│
├── data/
│   └── data.dart
│
├── models/
│   └── model_data.dart
│
└── ui/
    │
    ├── quiz.dart
    ├── start_screen.dart
    ├── question_screen.dart
    ├── answer_button.dart
    ├── result_screen.dart
    │
    └── summaryData/
        ├── questionSumarry.dart
        ├── summary_item.dart
        └── question_indentifier.dart
```

## 🧩 Application Flow

```text
Start Screen
     │
     ▼
Question Screen
     │
     ├── Choose Answer
     │
     ▼
Next Question
     │
     ▼
All Questions Completed
     │
     ▼
Result Screen
     │
     ├── Score
     ├── Correct / Wrong
     ├── Question Summary
     │
     ▼
Restart Quiz
```

## 🧠 What I Learned

Through this project, I practiced several important Flutter concepts:

### 1. StatefulWidget

Used to manage changing application state such as:

```dart
_activeScreen
currentIndexAnswer
_selectedAnswer
```

### 2. setState()

Used to notify Flutter that the state has changed and the UI needs to rebuild.

```dart
setState(() {
  currentIndexAnswer++;
});
```

### 3. Callback Function

The question screen sends the selected answer back to the parent widget.

```dart
final void Function(String answer) chooseAnswered;
```

This helped me understand how data can be passed between widgets.

### 4. List Manipulation

The application uses Dart collections to store:

* Questions
* Answers
* User answers
* Quiz summary

For example:

```dart
final List<String> _selectedAnswer = [];
```

### 5. Data Processing

The result screen processes the user's answers to calculate the score:

```dart
final numCorrectAnswer = summaryData
    .where((data) => data["user_answered"] == data["correct_answer"])
    .length;
```

### 6. Reusable Widgets

The UI is divided into smaller reusable widgets such as:

```text
AnswerButton
SummaryItem
QuestionIndentifier
Questionsumarry
```

This makes the project easier to maintain and understand.

---

## 📸 Screenshots

> Add screenshots of the application here.

Example:

```text
screenshots/
├── start_screen.png
├── question_screen.png
└── result_screen.png
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have installed:

* Flutter SDK
* Dart SDK
* Android Studio / VS Code
* Android Emulator or physical Android device

### Installation

Clone this repository:

```bash
git clone https://github.com/yourusername/quiz_application.git
```

Go to the project directory:

```bash
cd quiz_application
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

---

## 🎯 Future Improvements

Some features that can be added in the future:

* [ ] Timer for each question
* [ ] Quiz categories
* [ ] Difficulty levels
* [ ] Score history
* [ ] Local database
* [ ] Firebase integration
* [ ] REST API integration
* [ ] User authentication
* [ ] Leaderboard
* [ ] Dark/Light theme
* [ ] Animation and transitions

---

## 👨‍💻 Author

**Hendra Tampan Mangatur Sagala**

Bachelor of Computer Science / Informatics Engineering

Interested in:

* Flutter Development
* Mobile Application Development
* Dart
* REST API
* PHP & MySQL
* Software Development

---

## 📄 License

This project is created for learning and portfolio purposes.
