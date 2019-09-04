import 'package:flutter/material.dart';

main() => runApp(MyShipmentApp());

class MyShipmentApp extends StatefulWidget {
  @override
  _MyShipmentAppState createState() => _MyShipmentAppState();
}

class _MyShipmentAppState extends State<MyShipmentApp> {
  bool _checkBoxVal1 = true;
  bool _checkBoxVal2 = false;
  bool _checkBoxVal3 = false;
  bool _checkBoxVal4 = false;
  bool _checkBoxVal5 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.black),
          title: Center(
            child: Text(
              "S",
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
            ),
          ),
          actions: <Widget>[
            CircleAvatar(
              child: Image.asset("assets/profile_pic.png"),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(240, 240, 240, 5),
              child: ListTile(
                title: Text(
                  "Create Shipment",
                  style: TextStyle(fontSize: 25.0),
                ),
                subtitle: Text("Step 1 of 6 - Shipper"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: _pageNumber(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("*", style: TextStyle(color: Colors.red)),
                Text("Indicates Required Field"),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Shipper",
                    border: OutlineInputBorder(gapPadding: 5.0)),
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Location",
                    border: OutlineInputBorder(gapPadding: 5.0)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "BOL #",
                    border: OutlineInputBorder(gapPadding: 5.0)),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 5.0),
                child: _dropDownRow1()),
            _checkList(),
            Padding(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                child: _dropDownRow2()),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          onPressed: () {},
                          child: Text("Back",
                              style: TextStyle(color: Colors.teal)))),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed: () {},
                      child:
                          Text("Next", style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _divider() {
    return Container(width: 35.0, height: 1.0, color: Colors.grey);
    // A Container which divides the page numbers.
  }

  _pageNumber() {
    //  A Row containing various page numbers or tabs to switch between in a shipment form.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "1",
              style: TextStyle(color: Colors.white),
            ),
          )),
          decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid, width: 1, color: Colors.grey),
              shape: BoxShape.circle,
              color: Colors.black),
        ),
        _divider(),
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("2", style: TextStyle(color: Colors.grey)),
          )),
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        _divider(),
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("3", style: TextStyle(color: Colors.grey)),
          )),
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        _divider(),
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("4", style: TextStyle(color: Colors.grey)),
          )),
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        _divider(),
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("5", style: TextStyle(color: Colors.grey)),
          )),
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
        _divider(),
        Container(
          child: Center(
              child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("6", style: TextStyle(color: Colors.grey)),
          )),
          decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1, color: Colors.grey),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }

  _dropDownRow1() {
    // A Row with two dropdown menus and their labels
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Text("Service Mode",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              RaisedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text("LTL"), Icon(Icons.arrow_drop_down)],
                ),
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 15.0)),
        Expanded(
          child: Column(
            children: <Widget>[
              Text("Transit Service",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              RaisedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Select One..."),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  _checkList() {
    // A checklist containing list of items with checkboxes for the user to check.
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Pickup Services",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.green,
                  value: this._checkBoxVal1,
                  onChanged: (bool value) {
                    setState(() => this._checkBoxVal1 = value);
                  }),
              Text("Construction Site"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.green,
                  value: this._checkBoxVal2,
                  onChanged: (bool value) {
                    setState(() => this._checkBoxVal2 = value);
                  }),
              Text("Courier Service"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.green,
                  value: this._checkBoxVal3,
                  onChanged: (bool value) {
                    setState(() => this._checkBoxVal3 = value);
                  }),
              Text("Drayage Service"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.green,
                  value: this._checkBoxVal4,
                  onChanged: (bool value) {
                    setState(() => this._checkBoxVal4 = value);
                  }),
              Text("Dropped Trailer"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.green,
                  value: this._checkBoxVal5,
                  onChanged: (bool value) {
                    setState(() => this._checkBoxVal5 = value);
                  }),
              Text("Inside Service"),
            ],
          )
        ],
      ),
    );
  }

  _dropDownRow2() {
    // A Row with two dropdown menus and their labels
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Text("Date Pickup Requested",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              RaisedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Select Date..."),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 15.0)),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                "Date Pickup Actual",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Select Date..."),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
