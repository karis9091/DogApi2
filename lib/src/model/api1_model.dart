class DogModel {
  String url;
  String status;

  DogModel({
    this.url,
    this.status,
  });

  factory DogModel.fromJson(Map<String, dynamic> dog) {
    return DogModel(
      url: dog['url'],
      message: dog['status'],
    );
  }
}
