import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade600,
        title: Text('My App',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(16,),
        child: GridView.builder(
          itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                crossAxisCount: 2),
            itemBuilder: (BuildContext, index){
              return Container(
                padding: EdgeInsets.all(8,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8,),
                  color: Colors.blue.shade800
                ),
                child: TextButton(
                    onPressed: (){},
                    child: Text('Welcome',
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 16,
                      ),)),
              );
            }),
      ),
    );
  }
}
