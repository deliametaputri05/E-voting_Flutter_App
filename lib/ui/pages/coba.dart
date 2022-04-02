import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BelajarGetData extends StatelessWidget {
  final String apiUrl = "http://192.168.43.86/api/pemira";

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    var data = jsonDecode(result.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar GET HTTP'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        // backgroundImage:
                        //     NetworkImage(snapshot.data[index]['foto']),
                      ),
                      title: Text(snapshot.data[index]['nama'] +
                          " " +
                          snapshot.data[index]['deskripsi']),
                      subtitle: Text(snapshot.data[index]['nama']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
