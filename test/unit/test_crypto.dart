import 'package:idash/db.dart';
import 'package:test/test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

void main() {
  final db = FakeFirebaseFirestore();

  test("simple", () {
    expect(1 + 1, 2);
  });

  test(
    'write',
    () async {
      final result =
          await db.collection(Collections.wellness).add({"hello": "world"});
      print(result.id);
      final gotten = db.collection(Collections.wellness).where({"id": result.id});
      print(gotten);
    },
  );
}
