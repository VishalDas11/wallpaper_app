import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/model/photosModel.dart';

class ApiOperation{
   static List<PhotosModel> trendingWallpaper = [];
   static Future<List<PhotosModel>> getTrendingWallpapers()async{

     await http.get(Uri.parse("https://api.pexels.com/v1/curated"),
         // https://www.pexels.com/api/documentation/#photos-curated
     headers: {"Authorization" : "563492ad6f91700001000001f049bb7504c94606b7a95e3bb78c22dc"}
    ).then((value){
      Map<String, dynamic> jsonData= jsonDecode(value.body);
      List photos = jsonData["photos"];
      photos.forEach((element) {
        trendingWallpaper.add(PhotosModel.fromApi2App(element));
        // Map<String, dynamic> src = element['src'];
        // print(src['portrait']);
      }); 
    });
     return trendingWallpaper;

  }
}