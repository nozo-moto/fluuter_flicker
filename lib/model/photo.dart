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
  final String isprimary;
  final String ispublic;
  final String isfriend;
  final String isfamily;

  static fromJson(json) {
    // TODO これ配列だからなんとかする
    return new Photo(
      json['id'],
      json['secret'],
      json['server'],
      json['farm'],
      json['title'],
      json['isprimary'],
      json['ispublic'],
      json['isfriend'],
      json['isfamily']
    );
  }
}