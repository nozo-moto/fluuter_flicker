import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:fluuter_flicker/api/flickr.dart';
import 'package:fluuter_flicker/model/photosets.dart';

class FlickrAPIImpl implements FlickrAPI {
  // TODO get base url
  static const _BASE_URL = 'https://api.flickr.com/services/rest/';
  static const _METHOD_GETPHOSET = 'flickr.photosets.getPhotos';

  @override
  Future<Photosets_getphotos> getPhotoset(String photosetID,String APIkey) async {
    // TODO request to flickr
    var request = await HttpClient().getUrl(
      Uri.parse(
        '${_BASE_URL}?method={_METHOD_GETPHOSET}&api_key=${APIkey}&photoset_id=${photosetID}&format=json&nojsoncallback=1'
      )
    );
    var response = await request.close();
    var json = await response.transform(Utf8Decoder());
    return Photosets_getphotos.fromJson(json);
  }
}