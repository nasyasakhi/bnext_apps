
import 'package:dio/dio.dart';

Future<List<String>> getBannerImages() async {
  try {
    final dio = Dio();
    final response = await dio.get('http://localhost:4000/sliders/ads');

    if (response.statusCode == 200) {
      final data = response.data as List;
      return data
          .where((product) => product['image_url'].isNotEmpty)
          .map<String>((product) => 'http://localhost:4000/${product['image_url'][0]}')
          .toList();
    }
    return [];
  } catch (e) {
    print('Error fetching banners: $e');
    return [];
  }
}
