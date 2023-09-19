part of vets_module;

class VetsRepo {
  Future<List<MainVetsModel>> getVetsRepo() async {
    const response = '''
    {
    "vets":
    [
  {
    "name": "Vet 1",
    "id": "1",
    "price": 50.0,
    "completedService": 100,
    "experienceYears": 5,
    "image": "https://previews.123rf.com/images/edhar/edhar1112/edhar111200367/11480871-senior-handsome-man-doctor.jpg",
    "pio": "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
    "rating" : 3.5,
     "countRating" : 32,
    "reviews": [
      {
        "rate": 4.5,
        "content": "Great vet, very knowledgeable",
        "reviewsBy": "JohnDoe",
        "createdAt": "2023-09-08T18:37:00.260098"
      },
      {
        "rate": 5.0,
        "content": "Excellent service!",
        "reviewsBy": "JaneSmith",
        "createdAt": "2023-09-08T18:37:00.260098"
      }
    ]
  },
  {
    "name": "Vet 2",
    "id": "2",
    "price": 60.0,
    "completedService": 150,
    "experienceYears": 8,
    "image": "https://vethospital.okstate.edu/site-files/images/hospital-main-flex-juno.jpg",
    "pio": "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
    "rating" : 4.5,
    "countRating" : 20,
    "reviews": [
      {
        "rate": 4.0,
        "content": "Good vet, friendly staff",
        "reviewsBy": "AliceJohnson",
        "createdAt": "2023-09-08T18:37:00.260098"
      },
      {
        "rate": 4.8,
        "content": "Highly recommended!",
        "reviewsBy": "BobMiller",
        "createdAt": "2023-09-08T18:37:00.260098"
      }
    ]
  }
]
}
''';

    Map<String, dynamic> jsonResponse = jsonDecode(response);
    List jsonItems = jsonResponse["vets"];
    List<MainVetsModel> vets =
        jsonItems.map((e) => MainVetsModel.fromJson(e)).toList();
    return vets;
  }
}
