import "package:fluuter_flicker/api/flickr_impl.dart";
import 'package:flutter/material.dart';
import "package:fluuter_flicker/model/photosets.dart";
import 'package:dotenv/dotenv.dart' show load, clean, isEveryDefined, env;
import 'package:transparent_image/transparent_image.dart';


var flicker = FlickrAPIImpl();
// TODO Api key をなんとかする
var Apikey = "";
const photosetID = "72157690900917721";
void main() async =>  runApp(MyApp(
  images: await flicker.getPhotoset(photosetID, Apikey)
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Photosets_getphotos images;
  MyApp({@required this.images});

  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Flickr';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: images.photoset.photo.length,
          itemBuilder: (context, index) {
            return _buildImage(
              images.photoset.photo[index].farm, 
              images.photoset.photo[index].server, 
              images.photoset.photo[index].id, 
              images.photoset.photo[index].secret
            );
          },
        )
      ),
    );
  }

  Widget _buildImage(int farm, String server, String id, String secret) {
    var imageUrl = 'http://farm${farm}.staticflickr.com/${server}/${id}_${secret}.jpg';

    return ListTile (
      leading: Image.network(
        imageUrl,
      ),
    );
  }
}

