import 'package:quiz_application/models/model_data.dart';

List question = [
  Questions(
    text: "Apa fungsi utama FutureBuilder di Flutter?",
    answer: [
      "Menampilkan data yang berasal dari proses asynchronous",
      "Membuat database",
      "Mengubah JSON menjadi XML",
      "Membuat API",
    ],
  ),

  Questions(
    text:
        "Apa fungsi dari ApiService pada aplikasi Flutter yang kita pelajari?",
    answer: [
      "Menangani komunikasi antara Flutter dengan API/backend",
      "Mengatur warna aplikasi",
      "Mengatur database SQLite secara langsung",
      "Membuat widget",
    ],
  ),

  Questions(
    text:
        "Method HTTP apa yang biasanya digunakan untuk mengambil data dari API?",
    answer: ["GET", "SEND", "POST", "DELETE"],
  ),

  Questions(
    text: "Apa fungsi jsonDecode() pada Dart?",
    answer: [
      "Mengubah JSON menjadi struktur data Dart",
      "Mengubah object Dart menjadi JSON",
      "Menghapus data JSON",
      "Mengirim JSON ke MySQL",
    ],
  ),

  Questions(
    text:
        "Hasil jsonDecode() dari data JSON berbentuk array memiliki tipe utama?",
    answer: ["List", "String", "int", "bool"],
  ),

  Questions(
    text: "Apa kegunaan fromJson() pada Model Dart?",
    answer: [
      "Mengubah data JSON menjadi object/model Dart",
      "Menghapus data dari database",
      "Mengirim data ke API",
      "Membuat halaman Flutter",
    ],
  ),

  Questions(
    text: """Apa fungsi kode berikut? \n final shuffledList = List.of(answers);
shuffledList.shuffle();
return shuffledList;""",
    answer: [
      "Mengacak urutan jawaban",
      "Menghapus semua jawaban",
      "Mengurutkan jawaban berdasarkan abjad",
      "Menambahkan jawaban baru",
    ],
  ),

  Questions(
    text: "Dalam backend PHP + MySQL, apa fungsi utama API?",
    answer: [
      "Menjadi penghubung antara aplikasi Flutter dan database/server",
      "Menggantikan widget Flutter",
      "Mengatur layout aplikasi",
      "Mengubah Dart menjadi PHP",
    ],
  ),

  Questions(
    text: "Apa fungsi setState() pada Flutter ketika mengambil data dari API?",
    answer: [
      "Memberitahu Flutter bahwa state berubah sehingga UI dapat diperbarui",
      "Menutup aplikasi",
      " Membuat database baru",
      "Menghapus response API",
    ],
  ),

  Questions(
    text: """Perhatikan kode berikut:\n Future<ResponseMusik?> hasilResponse; 
    hasilResponse = ApiService().getAllDataMusik();""",
    answer: [
      "Karena pengambilan data dari API membutuhkan proses asynchronous",
      "Karena data API langsung tersedia tanpa proses asynchronous",
      "Karena Future digunakan untuk membuat database",
      "Karena Future hanya digunakan untuk List",
    ],
  ),
];
