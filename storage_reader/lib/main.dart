import 'package:flutter/material.dart';
import 'package:storage_reader/app/app.dart';

void main() async{
  await StorageGuardApp.init();
  runApp(const StorageGuardApp());
}