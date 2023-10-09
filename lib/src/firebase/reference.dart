import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

final fireStore = FirebaseFirestore.instance;
final auth = FirebaseAuth.instance;
 Reference get firebaseStorage => FirebaseStorage.instance.ref();

final batch = fireStore.batch();

final productCatRef = fireStore.collection('Product Categories');
 DocumentReference productTypeRef({
  required pCatId,
  required pTypeId,
 })=> productCatRef.doc(pCatId).collection('Product Type').doc(pTypeId);

 DocumentReference productRef({
  required pCatId,
  required pTypeId,
  required pId,
 }) => productTypeRef(pCatId: pCatId, pTypeId: pTypeId).collection("Product").doc(pId);