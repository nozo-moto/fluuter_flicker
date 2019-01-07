import 'package:fluuter_flicker/api/flickr_impl.dart';
import "package:test/test.dart";

void main() {
  const photosetID = "72157690900917721";
  const APIkey = "a7ccd16085e06cc6e8dd0e56dfba65ad";
  test('flickr api test', () async {
    var result = await FlickrAPIImpl().getPhotoset(photosetID, APIkey);
    print(result);
  });
}