import "package:test/test.dart";
import 'package:fluuter_flicker/model/photo.dart';
import 'package:fluuter_flicker/model/photosets.dart';
import 'dart:convert';

void main() {
  test('photo convert test', () {
    var testjson = """
    { "photoset": { "id": "72157690900917721", "primary": "38950932455", "owner": "144403991@N07", "ownername": "nozo_moto", 
    "photo": [
      { "id": "38950932455", "secret": "0cf5592069", "server": "4627", "farm": 5, "title": "DSC_0494", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "28070569609", "secret": "0c96afca74", "server": "4747", "farm": 5, "title": "DSC_0276", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "38950929025", "secret": "c780df93e7", "server": "4625", "farm": 5, "title": "DSC_0258", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "28070566009", "secret": "f255c900a9", "server": "4670", "farm": 5, "title": "DSC_0232", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "38950923845", "secret": "3b58c0ff9d", "server": "4660", "farm": 5, "title": "DSC_6065", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "25976408638", "secret": "8328c97a0d", "server": "4651", "farm": 5, "title": "DSC_6244", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "39817522932", "secret": "af4b1824d2", "server": "4709", "farm": 5, "title": "DSC_6349", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "25976406178", "secret": "8948e67528", "server": "4660", "farm": 5, "title": "DSC_6034", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "38950916855", "secret": "5a1c661152", "server": "4677", "farm": 5, "title": "DSC_6230", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "39139730744", "secret": "77c164a141", "server": "4667", "farm": 5, "title": "DSC_6127", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "39139728184", "secret": "0b30cde90b", "server": "4714", "farm": 5, "title": "DSC_6207", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "39139725684", "secret": "142f3b72fc", "server": "4705", "farm": 5, "title": "DSC_6271", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "39139718944", "secret": "5ee7506270", "server": "4696", "farm": 5, "title": "DSC_6402", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "39849832701", "secret": "7d56ba5a31", "server": "4619", "farm": 5, "title": "DSC_6204", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "24979090287", "secret": "1f583f4644", "server": "4605", "farm": 5, "title": "DSC_6270", "isprimary": 0, "ispublic": 0, "isfriend": 0, "isfamily": 0 },
      { "id": "39849827961", "secret": "394c0cde6e", "server": "4606", "farm": 5, "title": "DSC_6290", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "39817500292", "secret": "16263088e5", "server": "4717", "farm": 5, "title": "DSC_6329", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 },
      { "id": "25976385048", "secret": "0b52a5d1ba", "server": "4720", "farm": 5, "title": "DSC_6426", "isprimary": 0, "ispublic": 1, "isfriend": 0, "isfamily": 0 }
    ], "page": 1, "per_page": "500", "perpage": "500", "pages": 1, "title": "キツネ写真集", "total": 18 }, "stat": "ok" }
    """;
    var json = jsonDecode(testjson);
    var result = Photo.fromJson(json["photoset"]["photo"]);
    var result1 =  Photoset.fromJson(json["photoset"]);
    var result2 = Photosets_getphotos.fromJson(json);
  });
}