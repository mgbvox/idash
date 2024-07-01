import 'package:cloud_firestore/cloud_firestore.dart';

abstract final class Collections {
 static const wellness = "wellness";
}

final db = FirebaseFirestore.instance;
