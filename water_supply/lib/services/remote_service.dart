import 'package:water_supply/models/client.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:water_supply/views/login_page.dart';

class RemoteService {
  Future<List<Client>?> getClient() async {
    var client = http.Client();
    var uri = Uri.parse('http://127.0.0.1:8000/water/api/client/');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return clientFromJson(json);
    }
  }

  void loginController() async {
    // Effectuez une requête HTTP POST vers l'API Django Rest Framework
    var uri = Uri.parse('http://127.0.0.1:8000/api/token/');
    final response = await http.post(
      uri,
      body: {
        'username': LoginPage().userNameController.text,
        'password': LoginPage().passwordController.text,
      },
    );

    // Vérifiez si la réponse est valide et obtenez le token JWT
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      LoginPage().token = data['token'];

      // Stockez le token JWT dans les préférences locales de l'application
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', LoginPage().token);
    }
  }
}
