/*

Apparently Firestore needs a platform to run on:
https://stackoverflow.com/a/70473688/5745722

... so this needs to be an integration test.

 */

import 'package:idash/app.dart';
import 'package:idash/db.dart';
import 'package:idash/main.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:integration_test/integration_test.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // await initFirebase();

  group("db stuff", () {
    testWidgets('can write data', (tester) async {

      await tester.pumpWidget(const MyApp());
      //
      // Map<String, String> data = {"hello": "world"};
      // db.collection('test').add(data).then((doc) {
      //   print(doc);
      // });
    });
  });
}
