import 'package:flutter/material.dart';
import 'package:swalayan_online/view/main.view.dart';
import 'package:swalayan_online/view/widgets/text.form.global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login() {
      String email = emailController.text;
      String password = passwordController.text;

      if (email.isEmpty || password.isEmpty) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Please enter both email and password.'),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } else {
        // Navigate to the second page if login is successful
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    height: 360.0, // Tinggi Container WaveClipper
                    color: Colors.blue[200],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            // Menambahkan padding dan shadow pada gambar logo
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: const Image(
                                image: AssetImage('lib/assets/logo.png'),
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Shopping App',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 95,
                      ),
                      const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      TextFormGlobal(
                        controller: emailController,
                        text: 'Email',
                        obscure: false,
                        textInputType: TextInputType.emailAddress,
                        icon: Icons.person,
                        iconColor: const Color.fromARGB(255, 197, 156, 156),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormGlobal(
                        controller: passwordController,
                        text: 'Password',
                        obscure: true,
                        textInputType: TextInputType.text,
                        icon: Icons.lock,
                        iconColor: const Color.fromARGB(255, 197, 156, 156),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 140),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: login,
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      // Tambahkan widget baru di sini
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dont have account?',
                              style: TextStyle(
                                color: Color.fromARGB(137, 140, 94, 94),
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Aksi untuk tombol daftar
                                print('Navigasi ke halaman pendaftaran');
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 75,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 30);
    var secondControlPoint = Offset(size.width * 3 / 4, size.height - 80);
    var secondEndPoint = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, size.height - 10);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
