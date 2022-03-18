class Category{
  final String? name;
  final String? courses;
  final String? images;

  Category(this.name, this.courses, this.images);
}
List<Category> categories = categoriesData
    .map((item) => Category(item!["courses"],item!["name"],item!["images"]))
   .toList();
var  categoriesData  =         [
  {"name":"المدارس",'courses': "23",'images': "assets/images/25.jpg"} ,
  {"name":"القران الكريم",'courses': "60",'images': "assets/images/30.jpg"} ,
  {"name":"المواد الدراسية",'courses': "4",'images': "assets/images/35.jpg"} ,
  
] ;