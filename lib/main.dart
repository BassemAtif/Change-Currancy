import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Change Money",
      home:HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  TextEditingController n4 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Change"),
        actions: [
          Container(
            child: Icon(Icons.account_balance),
          )
          ],),
      body:ListView(
        children: [
          //we'll create a container direct for each TextFeild//
          Container(
            padding: EdgeInsets.all(5),margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: n1,
              decoration: InputDecoration(
                labelText: "From",hintText: "Dollar..Euro..Pound",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )),),),
          Container(
            padding: EdgeInsets.all(5),margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: n2,
              decoration: InputDecoration(
                  labelText: "to",hintText: "Dollar..Euro..Pound",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  )),),),
          Container(
            padding: EdgeInsets.all(5),margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: n3,
              decoration: InputDecoration(
                  labelText: "Amount",hintText: "Enter Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  )),),),
          Container(
            margin: EdgeInsets.all(5),padding: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.black26),
            child: RaisedButton(
                child: Text("CHANGE"),
                onPressed:(){
                  String Coin1 = n1.text;
                  String Coin2 = n2.text;
                  double third = 1;
                  double Amount = double.parse(n3.text.toString());

                  if(Amount == 0 ){
                    n4.text = "0";
                  }
                  else if(Coin1 == "Dollar" || Coin1 == "dollar"){
                    if(Coin2 == "Euro" || Coin2 == "euro"){
                      third = Amount*18.71;
                      Amount = (Amount*0.95).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text("the Equivalent Pound = ${third}"),
                            duration: Duration(seconds: 10),
                        ),
                      );
                  }
                    if(Coin2 == "Pound" || Coin2 == "pound"){
                      third = Amount*0.95;
                      Amount = (Amount*18.71).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("the Equivalent Euro = ${third}"),
                          duration: Duration(seconds: 10),
                        ),
                      );
                    }
                  }
                  else if(Coin1 == "Euro" || Coin1 == "euro"){
                    if(Coin2 == "Dollar" || Coin2 == "dollar"){
                      third = Amount*19.71;
                      Amount = (Amount/0.95).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("the Equivalent Pound = ${third}"),
                          duration: Duration(seconds: 10),
                        ),
                      );
                    }
                    if(Coin2 == "Pound" || Coin2 == "pound"){
                      third = Amount/0.95;
                      Amount = (Amount*19.71).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("the Equivalent Dollar = ${third}"),
                          duration: Duration(seconds: 10),
                        ),
                      );
                    }
                  }
                  else if(Coin1 == "Pound" || Coin1 == "pound"){
                    if(Coin2 == "Euro" || Coin2 == "euro"){
                      third = Amount/18.71;
                      Amount = (Amount/19.71).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("the Equivalent Dollar = ${third}"),
                          duration: Duration(seconds: 10),
                        ),
                      );
                    }
                    if(Coin2 == "Dollar" || Coin2 == "dollar"){
                      third = Amount/19.71;
                      Amount = (Amount/18.71).toDouble();
                      n4.text=Amount.toString();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("the Equivalent Euro = ${third}"),
                          duration: Duration(seconds: 10),
                        ),
                      );
                    }
                  }
                  else{
                    n4.text = "UNDEFIND";
                  }
                  
                  
                } ),),
          Container(
            padding: EdgeInsets.all(5),margin: EdgeInsets.all(5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextField(
              controller: n4,
              decoration: InputDecoration(
                  labelText: "Equivalent Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  )),),),
        ],
      ),
    );
  }
}