import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GalerryScreen extends StatefulWidget {
  @override
  _GalerryScreenState createState() => _GalerryScreenState();
}
class _GalerryScreenState extends State<GalerryScreen> {

  List<Container> orangterkayadidunia = new List();
  var item = [
    {"nama" : "Amancio Ortega", "photo" : "Amancio_Ortega.jpg"},
    {"nama" : "Bernard Arnault", "photo" : "Bernard_Arnault.jpg"},
    {"nama" : "Bill Gates", "photo" : "Bill_Gates.jpg"},
    {"nama" : "Carlos Slim Helu", "photo" : "Carlos_Slim_Helu.jpg"},
    {"nama" : "Jack Ma", "photo" : "Jack_Ma.jpg"},
    {"nama" : "Jeff Bezos", "photo" : "Jeff_Bezos.jpg"},
    {"nama" : "Larry Ellison", "photo" : "Larry_Ellison.jpg"},
    {"nama" : "Mark Zuckerberd", "photo" : "Mark_Zuckerberg.jpg"},
    {"nama" : "Michael Bloomberg", "photo" : "Michael_Bloomberg.jpg"},
    {"nama" : "Warren Buffets", "photo" : "Warren_Buffets.jpg"},
  ];
  //method
  _DataList() async{
    for(var i=0; i<item.length; i++){
      final data = item[i];
      final String photo = data["photo"];
      orangterkayadidunia.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(

            child: Column(
              children: [
                Hero(
                  tag: data["nama"],
                  child: Image.asset('assets/$photo', height: 85.0,width: 125, fit:
                  BoxFit.contain,),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(data['nama'], style: TextStyle(fontSize: 14.0, fontWeight:
                FontWeight.bold, color: Colors.deepOrange),)
              ],
            ),
          ),
        ),
      ));
    }
  }
  //proses background
  @override
  void initState() {// TODO: implement initState
    super.initState();
    _DataList();
  }
  //menampilkan ke view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galerry'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(crossAxisCount: 2, children: orangterkayadidunia,),
    );
  }
}
