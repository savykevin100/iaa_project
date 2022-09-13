class Category {
  final String categoryImg;
  final String categoryName;
  final double maxBudget;
  final double alreadySpent;

  Category({
    required this.categoryImg,
    required this.categoryName,
    required this.maxBudget,
    required this.alreadySpent,
  });
}

List<Category> demoCategory = [
  Category(
      categoryImg: "assets/images/burger.png",
      categoryName: "Cuisine",
      maxBudget: 200,
      alreadySpent: 300.00),
  Category(
      categoryImg: "assets/images/taxi.png",
      categoryName: "Service Taxi",
      maxBudget: 200,
      alreadySpent: 15.00),
  Category(
      categoryImg: "assets/images/saving.png",
      categoryName: "Vêtements",
      maxBudget: 300,
      alreadySpent: 300.00),
  Category(
      categoryImg: "assets/images/burger.png",
      categoryName: "Education",
      maxBudget: 500,
      alreadySpent: 500)
];
