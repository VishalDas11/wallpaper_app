class PhotosModel{
  String imgSrc;
  String PhotoName;

  PhotosModel({required this.imgSrc, required this.PhotoName});


  static PhotosModel fromApi2App(Map<String, dynamic> photoMap){
    return PhotosModel(imgSrc: photoMap['src'], PhotoName: photoMap['Photographer']['portrait']);
  }
}
