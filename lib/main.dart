import 'dart:convert';

import 'package:demo/addCompany.dart';
import 'package:demo/models/Reg_Company_Model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ApiProvider apiProvider;

  
  static const baseUrl =
      'https://my-json-server.typicode.com/Rakshak1344/Db-Arcspace';
  // static const baseUrl =
  //     'localhost:3000/';

  final httpClient = http.Client();
  List data;
  Future<http.Response> createCompany() async {
    var postCompany = '$baseUrl/Companies';
    String jsonEncodedCompanyString = json.encode(RegisterCompany);

    var response = await this.httpClient.post(Uri.encodeFull(postCompany),
        headers: {
          "Accept": "application/json",
          'Content-Type': "application/json"
        },
        body: jsonEncodedCompanyString);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  Future<List> getCompanies() async {
    var getCompanies = '$baseUrl/Companies';
    try {
      var response = await this.httpClient.get(
        Uri.encodeFull(getCompanies),
        headers: {
          "Accept": "application/json",
          'Content-Type': "application/json"
        },
      );
      setState(() {
        data = jsonDecode(response.body);
      });
    } catch (e) {
      throw Center(child: Text('Something went wrong'));
    }
  }

  @override
  void initState() {
    this.getCompanies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddCompany()))),
        body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 10,
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  Container(
                    child: ListTile(
                      title: Text(
                        data[i]["company-name"],
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(data[i]["gstin"]),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
