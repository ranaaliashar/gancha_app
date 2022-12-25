class CategoryModel {
  String? title;
  String? assetimage;

  CategoryModel(
    {
     this.assetimage,
   required this.title,
    }
  );
}

List<CategoryModel> categories =[
  // CategoryModel(
  //   title: 'Burgers',
  //   image: 'https://freepngimg.com/save/152785-food-burger-junk-png-file-hd/2504x1056'
  // ),
  CategoryModel(
    title: 'Cereal Milk',

    assetimage: 'assets/cereal_milk.png'
  ),
  CategoryModel(
    title: 'Dental Herb',
    assetimage: 'assets/dental_herb.png'
  ),
  CategoryModel(
    title: 'Herb',
    // assetimage: 'assets/home_based.jpg'

    assetimage: 'assets/herb.png',
  ),
  CategoryModel(
    title: 'Organto',
    assetimage: 'assets/organto.png'
  ),
   CategoryModel(
    title: 'Neem',
    assetimage: 'assets/neem.png'
  ),
  //  CategoryModel(
  //   title: 'PACKED & BOTTLED',
  //   assetimage: 'assets/packed.jpg',
  // ),

];