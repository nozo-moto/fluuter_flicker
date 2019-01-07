class Photo {
  const Photo(
    this.id,
    this.secret,
    this.server,
    this.farm,
    this.title,
    this.isprimary,
    this.ispublic,
    this.isfriend,
    this.isfamily
  );
  final String id;
  final String secret;
  final String server;
  final int farm;
  final String title;
  final int isprimary;
  final int ispublic;
  final int isfriend;
  final int isfamily;

  static fromJson(json) {
    // TODO これ配列だからなんとかする
    var result = new List<Photo>();
    json.forEach((e) => 
      result.add(
        new Photo(
          e['id'],
          e['secret'],
          e['server'],
          e['farm'],
          e['title'],
          e['isprimary'],
          e['ispublic'],
          e['isfriend'],
          e['isfamily']
        ),
      )
    );
    return result;
  }
}