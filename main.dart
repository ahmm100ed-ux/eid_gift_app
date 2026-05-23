import 'package:flutter/material.dart';

void main() => runApp(const EidGiftApp());

class EidGiftApp extends StatelessWidget {
  const EidGiftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const EidHomePage(),
    );
  }
}

class EidHomePage extends StatefulWidget {
  const EidHomePage({super.key});

  @override
  State<EidHomePage> createState() => _EidHomePageState();
}

class _EidHomePageState extends State<EidHomePage> {
  int takbeerCount = 0;

  void showEidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('💌 رسالة التهنئة', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)),
          content: const Text(
            'تقبل الله طاعتكم وأتم بالعيد فرحتكم. كل عام وأنتم بخير وصحة وعافية! ✨🐑',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('إغلاق', style: TextStyle(color: Colors.deepPurple, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        title: const Text('هدية عيد الأضحى 🌙', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.deepPurple,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Text(
                    'إهداء خاص من: محمد الزبدي ✨',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Text(
                        '🕋 عداد تكبيرات العيد',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$takbeerCount',
                        style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton.icon(
                        onPressed: () => setState(() => takbeerCount++),
                        icon: const Icon(Icons.add, color: Colors.white),
                        label: const Text('الله أكبر ولله الحمد 📿', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: showEidDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB300),
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  '🎁 افتح الهدية المخصصة لك',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
