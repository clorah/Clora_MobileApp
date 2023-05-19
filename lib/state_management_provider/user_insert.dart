class UserInsert {
  String title;
  String description;

  UserInsert({required this.description, required this.title}); 

 Map<String, dynamic> toJson() {
return {
  "title" : title,
  "description" : description
};
  }
}
