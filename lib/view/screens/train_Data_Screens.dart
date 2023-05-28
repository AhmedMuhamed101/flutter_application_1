import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class TrainSchedule {
  final String trainName;
  final String start;
  final Map<String, String> stations;
  final String end;
  final String tripType;
  final String trainType;

  TrainSchedule({
    required this.trainName,
    required this.start,
    required this.stations,
    required this.end,
    required this.tripType,
    required this.trainType,
  });

  factory TrainSchedule.fromJson(Map<String, dynamic> json) {
    return TrainSchedule(
      trainName: json['اسم القطار'],
      start: json['البدايه'],
      stations: Map<String, String>.from(json['المحطات']),
      end: json['النهايه'],
      tripType: json['نوع الرحله'],
      trainType: json['نوع القطر'],
    );
  }
}


class TrainSchedulePage extends StatefulWidget {
  @override
  _TrainSchedulePageState createState() => _TrainSchedulePageState();
}

class _TrainSchedulePageState extends State<TrainSchedulePage> {
  late Future<List<TrainSchedule>> futureTrainSchedules;

  @override
  void initState() {
    super.initState();
    futureTrainSchedules = fetchTrainSchedules();
  }

  Future<List<TrainSchedule>> fetchTrainSchedules() async {
    final response = await http.get(Uri.parse('YOUR_JSON_API_URL'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => TrainSchedule.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load train schedules');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Schedules'),
      ),
      body: FutureBuilder<List<TrainSchedule>>(
        future: futureTrainSchedules,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final trainSchedules = snapshot.data!;
            return ListView.builder(
              itemCount: trainSchedules.length,
              itemBuilder: (context, index) {
                final schedule = trainSchedules[index];
                return ListTile(
                  leading: SvgPicture.asset(
                    'assets/train_icon.svg',
                    width: 24,
                    height: 24,
                  ),
                  title: Text('Train: ${schedule.trainName}'),
                  subtitle: Text('Start: ${schedule.start}'),
                  trailing: Text('End: ${schedule.end}'),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}


//////////////////////////////////////////////////////////////////////////////////
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class MapData {
//   final String trainName;
//   final String startingPoint;
//   final Map<String, String> stations;
//   final String tripType;
//   final String trainType;

//   MapData({
//     required this.trainName,
//     required this.startingPoint,
//     required this.stations,
//     required this.tripType,
//     required this.trainType,
//   });
// }

// class FirestoreService {
//   static Future<List<MapData>> getListOfMaps() async {
//     final DocumentSnapshot snapshot = await FirebaseFirestore.instance
//         .collection("Trains")
//         .doc("Rusuis")
//         .get();

//     if (snapshot.exists) {
//       final Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
//       final Map<String, dynamic> trainData = data['1004'] as Map<String, dynamic>;

//       final Map<String, String> stations =
//           (trainData['المحطات'] as Map<String, dynamic>)
//               .map((key, value) => MapEntry(key, value.toString()));

//       return [
//         MapData(
//           trainName: trainData['اسم القطار'] ?? '',
//           startingPoint: trainData['البدايه'] ?? '',
//           stations: stations,
//           tripType: trainData['نوع الرحله'] ?? '',
//           trainType: trainData['نوع القطر'] ?? '',
//         ),
//       ];
//     }

//     return [];
//   }
// }

// class TrainDataScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<MapData>>(
//       future: FirestoreService.getListOfMaps(),
//       builder: (BuildContext context, AsyncSnapshot<List<MapData>> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator();
//         }

//         if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         }

//         final List<MapData> listOfMaps = snapshot.data ?? [];

//         return ListView.builder(
//           itemCount: listOfMaps.length,
//           itemBuilder: (BuildContext context, int index) {
//             final MapData mapData = listOfMaps[index];

//             return ListTile(
//               title: Text(mapData.trainName),
//               subtitle: Text(mapData.startingPoint),
//             );
//           },
//         );
//       },
//     );
//   }
// }






// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class SecondScreen extends StatefulWidget {
//   final String startingPoint;

//   SecondScreen({required this.startingPoint});

//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Trains with ${widget.startingPoint}'),
//       ),
//       body: FutureBuilder<QuerySnapshot>(
//         future: FirebaseFirestore.instance
//             .collection('Trains')
//             .where('1', isEqualTo: widget.startingPoint)
//             .get(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final trains = snapshot.data!.docs;
//             return ListView.builder(
//               itemCount: trains.length,
//               itemBuilder: (context, index) {
//                 final trainData = trains[index].data() as Map<String, dynamic>;
//                 // Access fields using null-aware operators
//                 final trainName = trainData['1'] as String?;
//                 final trainDescription = trainData['اسم القطار'] as String?;

//                 return ListTile(
//                   title: Text(trainName ?? ''),
//                   subtitle: Text(trainDescription ?? ''),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class TrainDataScreens extends StatelessWidget {
//   const TrainDataScreens({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(
// mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
            
//             children: [
//               TextButton(onPressed: (){fetchData();}, child: Text("fetchData")),
//               Text("${dataList}"),
//               Text("${dataList.length}"),
//               // Text("${dataList}"),
//               Text("data"),
//             ],
//           )
//         ],
//       )
//     );
//   }
// }

// List<String> dataList = [];
//   final CollectionReference ref =
//       FirebaseFirestore.instance.collection('Trains');

//   Future<List<String>> fetchData() async {
    
 
//       QuerySnapshot snapshot = await ref.get();
//       snapshot.docs.forEach((doc) {
//         // dataList.add(FieldValue)
//         dataList.add(doc['1004'].toString()); 
//          print(dataList.toString()) ;
        
//       });
      

//     return dataList;
//   }

// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';

// class TrainDataScreens extends StatelessWidget {
//   TrainDataScreens({super.key });

// final Query databaseRef = FirebaseDatabase.instance.ref().child("Trains");

//   @override  
 
//  Widget build(BuildContext context) {
//   return Scaffold(
//     body: Container(
//       child: FirebaseAnimatedList(
//         query: databaseRef,
//         itemBuilder: (BuildContext context,DataSnapshot snapshot,Animation<double> animation,int index) {
//           // print("data");
//           Map Trains = snapshot.value as Map;
//           Trains["key"] = snapshot.key;
//           print(Trains.toString());
//           return ref(Trains);
//         }),
//     ),
//   );

//   }

//  Widget ref(  Map  trains){
//   return Container(
//       width: double.infinity,
//       color: Colors.white,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(trains["key"],style: TextStyle(fontSize: 15),),
              
//               Text("البدايه",style: TextStyle(fontSize: 15),),
              
//               Text("Start",style: TextStyle(fontSize: 15),),
//             ],
//           )
//         ],
//       ),
//     );
  
//  }


// }
 
 