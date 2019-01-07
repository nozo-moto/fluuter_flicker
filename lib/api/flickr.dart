import 'dart:async';
import 'package:fluuter_flicker/model/photosets.dart';

abstract class FlickrAPI {
  Future<Photosets_getphotos> getPhotoset(String photosetID,String APIkey);
}