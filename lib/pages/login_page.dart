import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

//things done
// changedd the login page to statefulwidget
// put the animated container
// converted it into circular
// after pressing using a simple bool

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
      
            SizedBox(
              height: 20.0,
            ),
      
            Text("Welcome $name",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
      
            SizedBox(
              height: 20.0,
            ),
      
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "UserName",
                  ),

                  //to get the call back

                  onChanged: (value){
                    name = value;
                    // only use in stateful
                    setState(() {
                      
                    });
                  },
                ),
            
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  

                  
                ),
      
                SizedBox(
                  height: 20.0,
                ),

                InkWell(
                  // onTap: (){Navigator.pushNamed(context, MyRoutes.homeRoute);},
                  onTap: ()async{setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context,MyRoutes.homeRoute);
                  
                  },

                  //after 1 sec it shld to homepage
                  
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton? 50:150,// for animation otherwise it was normal 6

                    height: 50,
                    //color: Colors.deepPurple, //if decoration is there so it is present there
                    alignment: Alignment.center,
                    child:changeButton
                    ?Icon(Icons.done,color: Colors.white,)
                    :Text("Login",
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // borderRadius: BorderRadius.circular(6)
                      shape: changeButton
                      ?BoxShape.circle
                      :BoxShape.rectangle,
                    ),
                  ),
                )

                // and for this container to make it clickable we have too wrap with inkwell

                // to animate the container







      
                // ElevatedButton(onPressed: (){
                //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                // }, child: Text("Login"),style: TextButton.styleFrom(minimumSize: Size(125, 40)))
            
                ],
              ),
            )
      
           
          ],
        ),
      )
    );
  }
}