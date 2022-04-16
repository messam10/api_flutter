class View {
  int id;
  String lan, des;

  View(this.lan, this.des);

  View.fromJson(Map<dynamic, dynamic> json) {
    // id = json['ID']; // id
    lan = json['name'].toString(); //  post_header / title
    des = json['name'].toString(); //   post_body / body
  }
}