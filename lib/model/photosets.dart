import 'package:fluuter_flicker/model/photo.dart';

class Photoset {
  const Photoset(
    this.id,
    this.primary,
    this.owner,
    this.ownername,
    this.photo,
    this.page,
    this.per_page,
    this.perpage,
    this.pages,
    this.title,
    this.total
  );

  final String id;
  final String primary;
  final String owner;
  final String ownername;
  final List<Photo> photo;
  final int page;
  final String per_page;
  final String perpage;
  final int pages;
  final String title ;
  final int total;

  
  static fromJson(json) {
    var photo_list = Photo.fromJson(json['photo']);
    return new Photoset(
      json['id'],
      json['primary'],
      json['owner'],
      json['ownername'],
      photo_list,
      json['page'],
      json['per_page'],
      json['perpage'],
      json['pages'],
      json['title'],
      json['total']
    );
  }
}

class Photosets_getphotos {
  const Photosets_getphotos(
    this.photoset,
    this.stat
  );

  final Photoset photoset;
  final String stat;

  static fromJson(json) {
    var photoset_json = Photoset.fromJson(json['photoset']);
    return new Photosets_getphotos(
      photoset_json, 
      json['stat']
    );
  }
}