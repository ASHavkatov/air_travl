class ApiClient {
  Future<List<dynamic>> fetchSpecialOffers() async {
    return [
      {'id': 8, 'image': 'assets/images/offers/offers_8.png', 'order': 8},
      {'id': 1, 'image': 'assets/images/offers/offers_1.png', 'order': 1},
      {'id': 9, 'image': 'assets/images/offers/offers_9.png', 'order': 9},
      {'id': 6, 'image': 'assets/images/offers/offers_6.png', 'order': 6},
      {'id': 2, 'image': 'assets/images/offers/offers_2.png', 'order': 2},
      {'id': 3, 'image': 'assets/images/offers/offers_3.png', 'order': 3},
      {'id': 4, 'image': 'assets/images/offers/offers_4.png', 'order': 4},
      {'id': 5, 'image': 'assets/images/offers/offers_5.png', 'order': 5},
      {'id': 7, 'image': 'assets/images/offers/offers_7.png', 'order': 7},
    ];
  }

  Future<List<dynamic>> fetchPopularPlaces() async {
    return [
      {'id': 1, 'title': 'Parij', 'image': 'assets/images/places/paris.png', 'order': 2},
      {'id': 2, 'title': 'Makka', 'image': 'assets/images/places/makka.png', 'order': 1},
      {'id': 3, 'title': 'Malayziya', 'image': 'assets/images/places/malayziya.png', 'order': 3},
      {'id': 4, 'title': 'Dubay', 'image': 'assets/images/places/dubai.png', 'order': 4},
      {'id': 5, 'title': 'Parij', 'image': 'assets/images/places/paris.png', 'order': 5},
      {'id': 6, 'title': 'Makka', 'image': 'assets/images/places/makka.png', 'order': 6},
      {'id': 7, 'title': 'Malayziya', 'image': 'assets/images/places/malayziya.png', 'order': 7},
      {'id': 8, 'title': 'Dubay', 'image': 'assets/images/places/dubai.png', 'order': 8},
    ];
  }

  Future<dynamic> fetchPackageById(int packageId) async {
    return {
      'id': 1,
      'title': 'Umra Safari',
      'description': 'Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), Ovqat'
          ' (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, Zamzam suvi (5 litr)',
      'images': [
        'assets/images/offers/offers_1.jpg',
        'assets/images/offers/offers_2.jpg',
        'assets/images/offers/offers_3.jpg',
        'assets/images/offers/offers_4.jpg',
        'assets/images/offers/offers_5.jpg',
      ],
      'start_date': '2025-01-01',
      'end_date': '2025-01-15',
      'stays': [
        {
          'days': 10,
          'city': 'Madinada',
          'order': 1,
        },
        {
          'days': 5,
          'city': 'Makkada',
          'order': 2,
        },
      ],
      'features': [
        {
          'title': "Sug'urta",
          'order': 1,
        },
        {
          'title': 'Chipta',
          'order': 2,
        },
        {
          'title': 'Aviachipta',
          'order': 3,
        },
        {
          'title': 'Viza',
          'order': 4,
        },
        {
          'title': "Yo'lboshchi",
          'order': 5,
        },
        {
          'title': 'Feature 6',
          'order': 6,
        },
        {
          'title': 'Feature 7',
          'order': 7,
        },
        {
          'title': 'Feature 8',
          'order': 8,
        },
      ],
      'tariffs': [
        {
          'id': 1,
          'title': 'Ekonom',
          'priceAfter': 1200,
          'priceBefore': 1300,
          'features': [
            {
              'title': "Sug'urta",
              'image': 'assets/icons/plane.svg',
              'order': 1,
            },
            {
              'title': 'Chipta',
              'image': 'assets/icons/bus.svg',
              'order': 2,
            },
            {
              'title': 'Aviachipta',
              'image': 'assets/icons/medical.svg',
              'order': 3,
            },
            {
              'title': 'Viza',
              'image': 'assets/icons/people.svg',
              'order': 4,
            },
          ],
        },
        {
          'id': 2,
          'title': 'Standard',
          'priceAfter': 1400,
          'priceBefore': 1600,
          'features': [
            {
              'title': "Sug'urta",
              'image': 'assets/icons/plane.svg',
              'order': 1,
            },
            {
              'title': 'Chipta',
              'image': 'assets/icons/bus.svg',
              'order': 2,
            },
            {
              'title': 'Aviachipta',
              'image': 'assets/icons/medical.svg',
              'order': 3,
            },
            {
              'title': 'Viza',
              'image': 'assets/icons/people.svg',
              'order': 4,
            },
          ],
        },
        {
          'id': 3,
          'title': 'Premium',
          'priceAfter': 1200,
          'priceBefore': 1300,
          'features': [
            {
              'title': "Sug'urta",
              'image': 'assets/icons/plane.svg',
              'order': 1,
            },
            {
              'title': 'Chipta',
              'image': 'assets/icons/bus.svg',
              'order': 2,
            },
            {
              'title': 'Aviachipta',
              'image': 'assets/icons/medical.svg',
              'order': 3,
            },
            {
              'title': 'Viza',
              'image': 'assets/icons/people.svg',
              'order': 4,
            },
          ],
        },
      ],
      'calendar': [
        {
          'day': 1,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description': 'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description': 'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 2,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description': 'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description': 'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 3,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description': 'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description': 'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 4,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 5,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 6,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 7,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 8,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
        {
          'day': 9,
          'activities': [
            {
              'type': 'flight',
              'title': 'Uchish',
              'time': '8:30',
              'from': 'Toshkent',
              'to': 'Madina',
            },
            {
              'type': 'housing',
              'title': 'Mehmonxona',
              'time': '11:30',
              'hotel_name': 'New Madina Hotel',
              'description':
                  'New Madinah mehmonxonasining har bir xonasida vanna va xalat bilan jihozlangan shaxsiy ... ',
            },
            {
              'type': 'visit',
              'title': 'Ziyoratgoh',
              'time': '8:30',
              'place_name': 'Arofat tog\'i',
              'description':
                  'Arafot — Makkadan 20 km uzoqlikda joylashgan, 11 — 12 km va kengligi 6,5 km boʻlgan vodiy...',
            },
          ]
        },
      ]
    };
  }
}
