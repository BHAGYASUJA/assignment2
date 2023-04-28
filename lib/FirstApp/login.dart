import 'package:assignment3/FirstApp/home.dart';
import 'package:assignment3/FirstApp/signUp.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(DevicePreview(
  builder: (BuildContext context) => MaterialApp(
    useInheritedMediaQuery: true,
    home: logPage(),
    debugShowCheckedModeBanner: false,
  ),
));

class logPage extends StatefulWidget {
  const logPage({Key? key}) : super(key: key);

  @override
  State<logPage> createState() => _logPageState();
}

class _logPageState extends State<logPage> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String pswd;
  late String name;

  @override
  void initState() {
    check_if_already_login();
    getvalue();
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      pswd = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true); // null ?? second

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        // elevation:0;
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height*0.45,
                child: Image.network('https://static.vecteezy.com/system/resources/previews/002/144/111/original/cartoon-flat-girl-in-yoga-lotus-practices-meditation-practice-of-yoga-illustration-young-and-happy-woman-meditating-vector.jpg',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                controller: username_controller,
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                controller: password_controller,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forget password?',style: TextStyle(fontSize: 12.0),),
                    ElevatedButton(
                      onPressed: (){
                        debugPrint(uname);

                        String username = username_controller.text;
                        String password = password_controller.text;

                        if (username != '' &&
                            password != '' &&
                            username == uname &&
                            password == pswd) {
                          print('Successfull');
                          logindata.setBool('newuser', false);

                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Home()));
                        }
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>regFrom()));
              },
                child: Text.rich(
                  TextSpan(
                      text: 'Don\'t have an account',
                      children: [
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(
                              color: Color(0xffEE7B23)
                          ),
                        ),
                      ]
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );

  }
}
