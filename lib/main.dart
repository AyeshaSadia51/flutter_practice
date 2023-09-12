import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Practice App',
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text('BKash Profile',style: TextStyle(fontSize: 25),),
        leading: Icon(Icons.person,size: 32,),
        actions: [Icon(Icons.add_ic_call,size: 32,)],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onLongPress: () { print('Tap & Hold the ElevatedButton to Send Money');} ,
                onPressed: (){ print('Tapped Send Money');},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )
                ),
                child: Text('Send Money')),
            TextButton(
                onLongPress: () { print('Hold the TextButton to Send Money');} ,
                onPressed: (){ print('Tapped Send Money');},
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.pinkAccent,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),
                child: Text('Resend Money')
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,
              size: 40,
              color: Colors.purple,)),
            OutlinedButton(
                onPressed: (){},
                onLongPress: (){},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.pinkAccent,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )
                ),
                child: Text('Outline Button')),


            TextField(
              style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                fillColor: Colors.pinkAccent,
                filled: true,
                hintText: 'Enter your @userID',
                hintStyle: TextStyle(color: Colors.white70),
                label: Text('UserID'),
                labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                suffixIcon: Icon(Icons.person,color: Colors.white,),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                fillColor: Colors.pinkAccent,
                filled: true,
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.white70),
                label: Text('Password'),
                labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                suffixIcon: Icon(Icons.password,color: Colors.white,),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                ),
                disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            ),
                focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }

}