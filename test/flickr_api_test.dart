import 'package:fluuter_flicker/api/flickr_impl.dart';
import "package:test/test.dart";
import 'package:dotenv/dotenv.dart' show load, clean, isEveryDefined, env;

void main() {
  load();
  var APIkey = env['FLICKR_APIKEY'];
  const photosetID = "72157690900917721";
  
  test('flickr api test', () async {
    var result = await FlickrAPIImpl().getPhotoset(photosetID, APIkey);
  });
}