import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/type_activite.dart';

final fakeTypeActivite = TypeActivite(
  id: 1,
  type: 'Vélo',
  imagePath: 'upload/2022/06/17/20220617180624-9d10a4a5.jpg',
);

final fakeActivite = Activite(
  distance: 10,
  temps: 30,
  date: DateTime(2022, 1, 1),
  typeActivite: fakeTypeActivite,
);
