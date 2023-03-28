import 'package:flutter/material.dart';
import 'package:myfirst_app/login.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _emailText = TextEditingController();
  TextEditingController _passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('clicked');
            },
          ),*/
        title: Text(
          'Book App',
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            color: Color.fromARGB(255, 0, 73, 132),
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text(
                'Book Collections',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/bg2.jpg"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("welome to my app"),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailText,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: _passwordText,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var _email = _emailText.text;
                          var _password = _passwordText.text;

                          print("Email: " + _email);
                          print("Password: " + _password);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                        child: Text("Login"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Signup"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {
          print('button clicked');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Book store'),
              accountEmail: Text('bookstore@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('BS'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('J'),
                )
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        ),
      ],
      backgroundColor: Color.fromARGB(255, 168, 201, 218),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Add to cart',
          ),
        ],
        onTap: (int index) {
          print(index.toString());
        },
      ),
    );
  }
}
