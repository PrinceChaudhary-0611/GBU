import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(GBU());

class GBU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GBU(Gautam Buddha University ',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IctScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/logo.jpeg'),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
      ),
    );
  }
}

class IctScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICT Button',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Select Your School '),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'),
                fit: BoxFit.cover,
              )
          ),
          child: ListView(
          children: [
            Container(
            width: 150,
            height: 50,
            margin: EdgeInsets.only(left: 5.0, right: 10.0, bottom: 5.0, top: 5.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => TSpage()));
              },
              child: Text(
                'I.C.T',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ),
            ]
          ),
        ),
        ),
      );
      }
}

class TSpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Identify your self',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon:  IconButton(
                icon: const Icon(Icons.backspace),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => IctScreen()));
                } ,
              )
          ),
          title: Text('Identify your self'),
        ),
    body: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/ict.jpeg'),
      fit: BoxFit.cover,
        )
      ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(left: 305.0, right: 305.0, bottom: 50.0, top: 55.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: Text(
              'Professor',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          ),
            Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.only(left: 305.0, right: 305.0, bottom: 50.0, top: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => login()));
                },
                child: Text(
                  'Students',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ]
    )
        ),
      ),
    );
  }
}

class login extends StatelessWidget {
  get nameController => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login/SignUp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon:  IconButton(
              icon: const Icon(Icons.backspace),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => TSpage()));
              } ,
            )
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 100),
              child:Text('Sign In', style:TextStyle(fontSize:20),
              )),

            Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15,
            left: 350, right: 350),
            child: TextField(
                controller: nameController,
              decoration:InputDecoration(labelText:'User Name', icon: Icon(Icons.person),
                  border: OutlineInputBorder()
              )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01,
                    left: 350, right: 350),
                child: TextField(
                    obscureText: true,
                    controller: nameController,
                    decoration:InputDecoration(
                        labelText:'Password',
                        icon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                        )
                    )
                ),
              ),
              ]
            ),
              )
              )
    );
          }
}