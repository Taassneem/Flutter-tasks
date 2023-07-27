import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/businessCard': (context) => const BusinessCardPage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (emailController.text == 'tasneemradwan@gmail.com' &&
        passwordController.text == 'fluttercourse') {
      Navigator.pushNamed(context, '/businessCard');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Invalid Credentials'),
            content: const Text('Please enter valid email and password.'),
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card'),
      ),
      body: const Center(
        child: RootWidget(),
      ),
    );
  }
}
class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'First task for flutter',
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        appBar:AppBar(
          title: const Text('Bussines Card'),
          backgroundColor: Colors.black,
        ),
        
        backgroundColor: Colors.blueGrey,
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('lib/images/tasneem.jpeg'),
                ),   
              const Text('Tasneem Radwan ',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 35
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text('Student CS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 30,
                width: 300,
                decoration: const BoxDecoration(
                    color: Colors.white,
                   // borderRadius: BorderRadius.circular(35)
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.phone),
                SizedBox(
                    width: 30,
                  ),
                  Text('01149834479')],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 30,
                width: 300,
                decoration: const BoxDecoration(
                    color: Colors.white,
                   // borderRadius: BorderRadius.circular(35)
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.email),
                SizedBox(
                    width: 30,
                  ),
                  Text('tasnemradwan87@gmail.com')],
                ),
              ),
              
              
            ],
          ),

        ),
      )),
    );
  }
}
