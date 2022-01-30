//koneksi data base
import 'package:http/http.dart';

class _listproduk extends state<listproduk> {
  Future<List> getData() async {
    final Response = await http.get(uri.parse(
        "https://id.000webhost.com/members/website/tokoonlinemuhammadrizky/database"));
  }
}
