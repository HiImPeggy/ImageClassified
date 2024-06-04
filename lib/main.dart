import 'package:flutter/material.dart';
import './upload_img.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostureEstimationScreen(),
    );
  }
}

class PostureEstimationScreen extends StatelessWidget {
  const PostureEstimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 将Row中的内容置中对齐
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // 将Column中的内容置中对齐
              children: [
                const Text(
                  'Estimate Your Posture',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                Image.asset(
                  'assets/images.png', // 这里是你上传的图片文件路径
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Upload the photo\nto\nClassify your photo',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    // TODO: 实现上传图片的功能
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>MyApp3()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Upload pictures'),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    FlutterExitApp.exitApp();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Exit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}