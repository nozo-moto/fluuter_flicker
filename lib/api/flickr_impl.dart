import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluuter_flicker/api/flickr.dart';
import 'package:fluuter_flicker/model/photosets.dart';

class FlickrAPIImpl implements FlickrAPI {
  // TODO get base url
  static const _BASE_URL = 'https://api.flickr.com/services/rest/';
  static const _METHOD_GETPHOSET = 'flickr.photosets.getPhotos';

  @override
  getPhotoset(String photosetID, String APIkey) async {
    var uri = Uri.parse(
        '${_BASE_URL}?method=${_METHOD_GETPHOSET}&api_key=${APIkey}&photoset_id=${photosetID}&format=json&nojsoncallback=1'
    );
    var res = await http.get(
      uri
    );
    return Photosets_getphotos.fromJson(jsonDecode(res.body));
  }
}