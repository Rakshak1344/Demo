// import 'dart:convert';


// import 'package:http/http.dart' as http;

// class ApiProvider {
//   static const baseUrl =
//       'https://my-json-server.typicode.com/Rakshak1344/Db-Arcspace';

//   final httpClient = http.Client();
//   List data;
//   // Future<http.Response> createCompany() async {
//   //   var postCompany = '$baseUrl/Companies';
//   //   String jsonEncodedCompanyString = json.encode(RegisterCompany);
//   //   var response = await this.httpClient.post(Uri.encodeFull(postCompany),
//   //       headers: {
//   //         "Accept": "application/json",
//   //         'Content-Type': "application/json"
//   //       },
//   //       body: jsonEncodedCompanyString);
//   //   print("${response.statusCode}");
//   //   print("${response.body}");
//   //   return response;
//   // }
//   @override
//   Future<List> getCompanies() async {
//     var getCompanies = '$baseUrl/Companies';
//     // String jsonDecode = json.decode(getCompanies);
//     var response = await this.httpClient.get(
//       Uri.encodeFull(getCompanies),
//       headers: {
//         "Accept": "application/json",
//         'Content-Type': "application/json"
//       },
//     );
//     return data = jsonDecode(response.body);
//   }
// }
