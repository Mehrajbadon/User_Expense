import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> myList = [];
  List<String> myage = [];
  String name = "";
  String age = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Expense List"),),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (BuildContext context,int index){
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(myList[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
                                    Text(myage[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlue),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),

                        ],
                      ),
                    );


                  },
                ),
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Mehraj",
                      labelText: "Name",
                    ),
                    onChanged: (Name){
                      name = Name;
                      setState(() {

                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "21",
                      labelText: "Age",
                    ),
                    onChanged: (Age){
                      age = Age;
                      setState(() {

                      });
                    },
                  ),
                  GestureDetector(
                    onTap: (){
                      myList.add(name);
                      myage.add(age);
                      setState(() {

                      });
                    },
                    child: Card(
                      child: Container(
                        height: 40,
                        width: 70,

                        child: Center(
                          child: Text(
                            "ADD",style: TextStyle(
                              color: Colors.black,fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

