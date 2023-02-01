import 'dart:convert';

List<Client> clientFromJson(String str) =>
    List<Client>.from(json.decode(str).map((x) => Client.fromJson(x)));

String clientToJson(List<Client> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Client {
  Client({
    required this.distributeur,
    required this.nom,
    required this.contact,
    required this.adresse,
  });

  int distributeur;
  String nom;
  int contact;
  String adresse;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        distributeur: json["distributeur"],
        nom: json["nom"],
        contact: json["contact"],
        adresse: json["adresse"],
      );

  Map<String, dynamic> toJson() => {
        "distributeur": distributeur,
        "nom": nom,
        "contact": contact,
        "adresse": adresse,
      };
}
