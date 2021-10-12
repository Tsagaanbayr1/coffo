import 'package:coffo/core/core.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppSvg(
              Assets.assetsSvgGarbage,
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Material(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag_rounded,
                                    color: Colors.orange,
                                    size: 26,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      'You have 3 items in your list cart',
                                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                            color: Colors.orange,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        CartItem(),
                        Divider(),
                        CartItem(),
                        Divider(),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Items',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '\$ 102.50',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Discount',
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                              Text(
                                '-\$ 3.00',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                              Text(
                                '\$ 99.50',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Material(
                              color: Colors.black,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                              child: InkWell(
                                onTap: () {},
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Checkout',
                                    style: Theme.of(context).textTheme.button!.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Material(
            color: Colors.grey[100],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            elevation: 2,
            child: Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(5),
              child: Image.asset(Assets.assetsCoffeeEnvase),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Indonesian Beans',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Beans  •  500g',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 5),
                Text(
                  '25,000 \₮',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      iconSize: 30,
                      icon: Icon(
                        Icons.remove_circle_outline_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      iconSize: 30,
                      icon: Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
