
import 'package:budget_tracer_practice/login.dart';
import 'package:budget_tracer_practice/signup.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class MyLandingPage extends StatefulWidget {
  const MyLandingPage({super.key});
  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}
class _MyLandingPageState extends State<MyLandingPage> {
  late AuthViewModel _authViewModel;
  void checkLogin() async{
    await Future.delayed(Duration(seconds: 0));
    if(_authViewModel.user==null){
      //  Navigator.of(context).pushReplacementNamed("/landingPage");
    }else{
      Navigator.of(context).pushReplacementNamed("/dashboard");
    }
  }
  @override
  void initState() {
    _authViewModel = Provider.of<AuthViewModel>(context, listen: false);
    checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/landing.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          
         Padding(padding: EdgeInsets.fromLTRB(20, deviceHeight/100*55, 20, 20),
         child:  Center(
              child: Container(
            decoration: BoxDecoration(
              
            ),
            width: 230,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF296157),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
              },
              child: Text(
                "Join Now",
                style: TextStyle(fontSize: 30),
              ),
            ),
          )),),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Center(
                child: InkWell(
                
              child: Text(
                
                "Already have an account?",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 6, 69, 16),
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                 Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginScreen()),
              ); 
              },
            )),
          )
        ],
      ),
    ));
  }
}
