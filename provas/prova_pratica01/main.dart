import 'dart:convert';
import 'package:http/http.dart' as http;

class Item {
  final int id;
  final String name;
  final String description;

  Item({required this.id, required this.name, required this.description});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Sabrinna do Nascimento',
      description: json['description'] ?? 'Sem descrição',
    );
  }

  @override
  String toString() {
    return 'ID: $id\nName: $name\nDescription: $description\n';
  }
}

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future<List<Item>> fetchItems() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((item) => Item.fromJson(item)).toList();
      } else {
        throw Exception('Falha ao carregar os dados: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Erro de rede: $e');
    }
  }
}

void main() async {
  final apiService = ApiService('https://jsonplaceholder.typicode.com/posts');

  try {
    List<Item> items = await apiService.fetchItems();

    for (var item in items.take(3)) {
      print(item);
    }
  } catch (e) {
    print('Erro: $e');
  }
}
