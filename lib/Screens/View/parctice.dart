// random jokes
//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../Modal/Jokes_Modal.dart';
// import '../provider/Jokes_Provider.dart';
//
// class qoutehomepage extends StatelessWidget {
//   const qoutehomepage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: Provider.of<qouteprovider>(context).frommap(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             QouteModel? ha;
//             ha = snapshot.data;
//             return ListView.builder(
//               itemCount: ha!.results.length,
//               itemBuilder: (context, index) => Card(
//                 child: ListTile(
//                   title: Text(ha!.results[index].author),
//                   subtitle: Text(ha!.results[index].content),
//                   trailing: Text(ha.results[index].dateAdded),
//
//                 ),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//       floatingActionButton:  FloatingActionButton(onPressed: () {
//
//       },child: Icon(Icons.add),),
//     );
//   }
// }
//
//
//
//
// import 'package:flutter/material.dart';
//
// import '../Api_Helper/Api_Helper.dart';
// import '../Modal/Jokes_Modal.dart';
//
// class qouteprovider extends ChangeNotifier {
//   ApiHelperqoute apiHelperqoute = ApiHelperqoute();
//   QouteModel? qouteModel;
//
//   Future<QouteModel?> frommap() async {
//     final data = await apiHelperqoute.fatchdata();
//     QouteModel qouteModel = QouteModel.fromjson(data);
//     notifyListeners();
//     return qouteModel;
//
//   }
//
//   qouteprovider(){frommap();}
// }
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
//
// class QouteModel {
//   List<Results> results = [];
//
//   QouteModel({required this.results});
//
//   factory QouteModel.fromjson(Map m1) {
//     return QouteModel(
//         results:
//         (m1['results'] as List).map((e) => Results.fromjson(e)).toList());
//   }
// }
//
// class Results {
//   late String id, author, content, authorSlug, dateAdded, dateModified;
//   late int length;
//   late List tags;
//
//   Results(
//       this.id,
//       this.author,
//       this.content,
//       this.authorSlug,
//       this.dateAdded,
//       this.dateModified,
//       this.length,
//       this.tags,
//       );
//
//   factory Results.fromjson(Map m1) {
//     return Results(
//         m1['id'] ?? '',
//         m1['author'] ?? '',
//         m1['content'] ?? '',
//         m1['authorSlug'] ?? '',
//         m1['dateAdded'] ?? '',
//         m1['dateModified'] ?? '',
//         m1['length'] ?? '',
//         m1['tags'] ?? '');
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
// import 'package:http/http.dart';
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:practice/random%20jokes/Screens/View/Jokes_Homepage.dart';
// import 'package:practice/random%20jokes/Screens/provider/Jokes_Provider.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => ApiProvider(),),
//         ChangeNotifierProvider(create: (context) => qouteprovider(),),
//
//       ],
//       builder :  (context, child) => MyApp()));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       routes: {
//         '/':(context) => qoutehomepage(),
//       },
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
// random  user
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:practice/random%20jokes/Screens/View/Jokes_Homepage.dart';
// import 'package:practice/random%20jokes/Screens/provider/Jokes_Provider.dart';
// import 'package:practice/random%20user/Screens/Provider/randomuser_Provider.dart';
// import 'package:practice/random%20user/Screens/View/randomuser_view.dart';
// import 'package:provider/provider.dart';
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../Modal/randomuser_Modal.dart';
// import '../Provider/randomuser_Provider.dart';
//
// class homepage extends StatelessWidget {
//   const homepage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     var apiProvider = Provider.of<ApiProvider>(context, listen: false);
//     var apiProvidertrue = Provider.of<ApiProvider>(context, listen: true);
//     return Scaffold(
//       body: FutureBuilder(
//         future: Provider.of<ApiProvider>(context, listen: false).jsonparsing(apiProvidertrue.chnage),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             RendomModel? ha;
//             ha = snapshot.data;
//             return Center(
//               child: Container(
//                 height: 300,
//                 width: 300,
//                 decoration:
//                 BoxDecoration(border: Border.all(color: Colors.grey)),
//                 child: Column(
//                   children: [
//                     ...List.generate(
//                       ha!.resultsList.length,
//                           (index) => Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             Center(
//                               child: Container(
//                                 height: 100,
//                                 width: 100,
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                         fit: BoxFit.cover,
//                                         image: NetworkImage(ha!
//                                             .resultsList[index]
//                                             .picture
//                                             .medium)),
//                                     border: Border.all(color: Colors.grey)),
//                               ),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(' Name  :'),
//                                 Text('${ha.resultsList[index].name.title} . '),
//                                 Text('${ha.resultsList[index].name.first} '),
//                                 Text('${ha.resultsList[index].name.last}'),
//                               ],
//                             ),
//                             Text(ha.resultsList[index].email),
//                             Text(ha.resultsList[index].phone),
//                             Text(ha.resultsList[index].date.date),
//                             Text(
//                                 '${ha.resultsList[index].date.age}'.toString()),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Text(snapshot.error.toString());
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//       floatingActionButton: TextButton(
//         onPressed: () {
//           apiProvider.refresh('value');
//         },
//         child: Text(' check '),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
//
// import '../Api_Helper/Api_Helper.dart';
// import '../Modal/randomuser_Modal.dart';
//
//
// class ApiProvider extends ChangeNotifier{
//
//
//   Apihelper  apihelper = Apihelper();
//
//   late RendomModel? rendomModel;
//
//   Future<RendomModel?> jsonparsing( String change) async {
//     final data = await apihelper.Fatching();
//     RendomModel rendomModel =RendomModel.fromjson(data);
//     print(data);
//     return rendomModel;
//
//   }
//   // ApiProvider(){
//   //   jsonparsing();
//   // }
//
//   late String chnage='-';
//   void refresh(String value)
//   {
//     chnage=value;
//     notifyListeners();
//   }
//
// }
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// class  RendomModel{
//
//   List<Results>  resultsList=[];
//
//   RendomModel({required this.resultsList});
//
//   factory RendomModel.fromjson(Map m1) {
//     return RendomModel(
//         resultsList: (m1['results'] as List)
//             .map(
//               (e) => Results.fromjson(e),
//         )
//             .toList());
//   }
// }
// class Results{
//   late String   gender,email,nat,phone;
//   late Picture picture;
//   late Name name;
//   late  Date date;
//
//
//
//   Results(this.gender, this.email, this.nat, this.phone, this.picture,this.name,this.date,);
//
//   factory Results.fromjson(Map m1){
//     return Results(m1['gender'], m1['email'], m1['nat'], m1['phone'], Picture.fromjson(m1['picture']) , Name.fromjson(m1['name']), Date.fromjson(m1['dob']));
//   }
//
//
// }
//
// class Picture{
//
//   late String medium;
//
//   Picture(this.medium);
//   factory Picture.fromjson(Map m1){
//     return Picture(m1['medium']);
//   }
// }
//
// class  Name{
//   late  String title,first,last;
//
//   Name(this.title, this.first, this.last);
//   factory Name.fromjson(Map m1){
//     return Name(m1['title'], m1['first'], m1['last']);
//   }
// }
//
// class  Date{
//   late String date;
//   late int age;
//
//   Date(this.date, this.age);
//
//   factory Date.fromjson(Map m1){
//     return Date(m1['date'], m1['age']);
//   }
//
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:flutter/material.dart';
//
// class  Apihelper {
//
//   Future<Map> Fatching() async {
//     Uri url = Uri.parse('https://randomuser.me/api/');
//
//     Response response = await http.get(url);
//     if (response.statusCode == 200) {
//       final json = response.body;
//       final Map   data = jsonDecode(json);
//
//       return data;
//     }
//     else {
//
//       return {};
//
//     }
//   }
// }
//
//
