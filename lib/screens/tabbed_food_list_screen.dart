import 'package:flutter/material.dart';
import 'package:nortvis_task/constants/common_exception.dart';
import 'package:nortvis_task/constants/theme_constants.dart';
import 'package:nortvis_task/constants/toaster.dart';
import 'package:nortvis_task/models/category_dish.dart';
import 'package:nortvis_task/models/food_category.dart';
import 'package:nortvis_task/providers/food_provider.dart';
import 'package:nortvis_task/widgets/common_app_drawer.dart';
import 'package:nortvis_task/widgets/foo_list_tile.dart';
import 'package:provider/provider.dart';

class TabbedFoodListScreen extends StatefulWidget {
  const TabbedFoodListScreen({super.key});

  @override
  State<TabbedFoodListScreen> createState() => _TabbedFoodListScreenState();
}

class _TabbedFoodListScreenState extends State<TabbedFoodListScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  bool isLoading = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0), () async {
      _fetchFood();
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbed Screens'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const CommonAppDrawer(),
      body: (_tabController != null && !isLoading)
          ? Column(
              children: [
                Consumer<FoodProvider>(
                  builder: (context, foodModal, child) => TabBar(
                      indicatorColor: Colors.red,
                      isScrollable: true,
                      controller: _tabController,
                      tabs: foodModal.foodCategories
                          .map((category) => Tab(
                                child: Text(category.menuCategory),
                              ))
                          .toList()),
                ),
                const SizedBox(
                  height: 10,
                ),
                Consumer<FoodProvider>(
                  builder: (context, foodModal, child) => Expanded(
                    child: TabBarView(
                        controller: _tabController,
                        children: foodModal.foodCategories
                            .map((category) =>
                                buildCategoryDishesListView(category))
                            .toList()),
                  ),
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  void _fetchFood() async {
    try {
      FoodProvider foodProvider =
          Provider.of<FoodProvider>(context, listen: false);
      setState(() {
        isLoading = true;
      });
      await foodProvider.fetchRecipes();
      setState(() {
        _tabController = TabController(
            length: foodProvider.foodCategories.length, vsync: this);
        isLoading = false;
      });
    } on CommonException catch (e) {
      setState(() {
        isLoading = false;
      });
      Toaster.showToaster(
          context: context, content: Text(e.message), type: "error");
    }
  }

  Widget buildCategoryDishesListView(FoodCategory category) {
    String categoryId = category.menuCategoryId;
    FoodProvider foodProvider =
        Provider.of<FoodProvider>(context, listen: false);
    List<CategoryDishes> categoryDishes =
        foodProvider.getFoodByCategoryId(categoryId);
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ThemeConstants.scaffoldHorizontalPadding - 8),
        child: FoodListTile(
          dish: categoryDishes[index],
          categoryId: categoryId,
        ),
      ),
      itemCount: categoryDishes.length,
    );
  }
}
