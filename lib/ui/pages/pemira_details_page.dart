part of 'pages.dart';

class PemiraDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;

  final int id;

  PemiraDetailsPage({this.onBackButtonPressed, this.id});

  @override
  State<PemiraDetailsPage> createState() => _PemiraDetailsPageState();
}

class _PemiraDetailsPageState extends State<PemiraDetailsPage> {
  int selectedIndex = 0;
  var data;
  List kandidat;
  List listSearch;
  Map<String, dynamic> map;

  Future<ApiReturnValue<List<Kandidat>>> getData() async {
    final response =
        await http.get("http://127.0.0.1:8000/api/kandidats/${widget.id}");
    print(widget.id);

    setState(() {
      data = jsonDecode(response.body);
      kandidat =
          (data['data'] as List).map((e) => Kandidat.fromJson(e)).toList();
      log('data: $data');
      return ApiReturnValue(value: kandidat);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext) {
    return Container(
      child: Column(children: [
        Text(kandidat.toString()),
      ]),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text("Data Karyawan"),
//         ),
//         floatingActionButton: new FloatingActionButton(
//           backgroundColor: Colors.indigo,
//           child: new Icon(Icons.add),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                   child: kandidat == null
//                       ? Center(
//                           child: CircularProgressIndicator(),
//                         )
//                       : listSearch == null
//                           ? ItemList(
//                               list: kandidat,
//                             )
//                           : listSearch.length == 0
//                               ? Center(
//                                   child: Text("Data Yang di Cari Kosong"),
//                                 )
//                               : ItemList(
//                                   list: listSearch,
//                                 ))
//             ],
//           ),
//         ));
//   }
// }

// class ItemList extends StatelessWidget {
//   final List list;
//   ItemList({this.list});

//   @override
//   Widget build(BuildContext context) {
//     return new ListView.builder(
//       itemCount: list == null ? 0 : list.length,
//       itemBuilder: (context, i) {
//         return new Container(
//           padding: const EdgeInsets.all(10.0),
//           child: new GestureDetector(
//             onTap: () {},
//             child: new Card(
//               child: new ListTile(
//                 title: new Text(list[i]['noUrut']),
//                 leading: Container(
//                   width: 55,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(100.0),
//                     // image: DecorationImage(
//                     //   image: NetworkImage(
//                     //       'http://127/karyawan/uploads/${list[i]['gambar']}'),
//                     //   fit: BoxFit.cover,
//                     // ),
//                   ),
//                 ),
//                 subtitle: new Text(list[i]['nama']),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
