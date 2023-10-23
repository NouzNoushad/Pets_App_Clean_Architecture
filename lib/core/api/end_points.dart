const String baseUrl = "https://api.thecatapi.com/v1";

// https://api.thecatapi.com/v1/breeds
// https://api.thecatapi.com/v1/images/search?breed_ids=0XYvRd7oD

class Endpoints {
  static const String breeds = 'breeds';
  static const String images = 'images/search';

  static imageEndpoint(String breedId) {
    return "$baseUrl/$images?breed_ids=$breedId";
  }
}
