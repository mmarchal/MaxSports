import 'package:max_sports/core/utils/navbar_item.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/entities/type_activite.dart';

const url = 'http://ns329111.ip-37-187-107.eu:3500/';

const fakeItem = NavbarItem.poids;

const fakeTypeActivite = TypeActivite(
  id: 1,
  type: 'Vélo',
  imagePath: 'upload/2022/06/17/20220617180624-9d10a4a5.jpg',
);

final fakeActiviteSuccess = Activite(
  distance: 10,
  temps: 30,
  date: DateTime(2022, 1, 1),
  typeActivite: fakeTypeActivite,
);

final Poids fakePoidsLast = Poids(
  date: DateTime(2022, 1, 1),
  poids: 80,
);

final Poids fakePoidsWithZero = Poids(
  date: DateTime(2022, 1, 1),
  poids: 0.0,
);

final Recap fakeRecap = Recap(
  poidsRecent: 80,
  dateRecent: DateTime(2022, 1, 1),
  poidsLate: 75,
  dateLate: DateTime(2022, 1, 2),
  difference: 5,
  etat: EtatPoids.perte,
);

const APIError genericError = APIError(
  title: 'Erreur',
  content: "La date et le poids doivent être renseigné !",
  systemMessage: '',
);
