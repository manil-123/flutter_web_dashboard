import 'package:hero_dashboard_web/models/user_data_model.dart';
import 'package:hero_dashboard_web/utils/random_token_generator.dart';

int screenIndex = 0;

final usersList = List.generate(
    200,
    (index) => UserDataModel(
          id: "1",
          firstName: "Manil",
          lastName: "Pun",
          email: "mak@gmail.com",
          fcmToken: getRandomToken(15),
          isVip: false,
        ));
