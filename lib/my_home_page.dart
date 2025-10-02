import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.info,color: Colors.black,size: 20,),
            
          )
        ],
        centerTitle: false,
        title: const Text("Continue as a Guest",style: TextStyle(
     color: Color(0xff2041bb)
        ),
        ),
        backgroundColor: Colors.white,
        leading:const Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),child: Column(children: [
        Image.asset('assets/images/idea.png'),
        const SizedBox(height: 20,),
        const SizedBox(
          width: 300,
          child: Text(
            "Explore all existing jobs roles based on your interest",
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(130, 30),
                elevation: 4,
                backgroundColor: const Color(0xff2041bb),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              onPressed: () {},
              child:const Text(" Login",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,

              ),),
            ),
            TextButton(
              onPressed: () {},
              child:const Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black)),
        
            ),
          ],
        )
      ],),),
    );
  }
}