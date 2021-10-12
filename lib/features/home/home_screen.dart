import 'package:coffo/core/core.dart';
import 'package:coffo/features/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UsernameAvatar(),
            if (MediaQuery.of(context).size.width >= 600)
              Row(
                children: [
                  const Expanded(
                    child: Categories(),
                  ),
                  const Expanded(
                    child: Searchbar(),
                  ),
                ],
              )
            else ...[
              const Searchbar(),
            ],
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        const PopularItems(),
                        const SpesialOfferTitle(),
                        const SpesialOffer(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                  if (MediaQuery.of(context).size.width < 600) const Categories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpesialOfferTitle extends StatelessWidget {
  const SpesialOfferTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Spesial offer 🔥',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class SpesialOffer extends StatelessWidget {
  const SpesialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shadowColor: Colors.black12,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  Assets.assetsPackages,
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Discount Sales',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.local_offer_rounded,
                            color: Colors.orange,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Get three coffee beans for the subcribe kopiku',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
  }
}

class PopularItems extends StatelessWidget {
  const PopularItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                color: Colors.white,
                shadowColor: Colors.black12,
                elevation: 10,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 200,
                        width: 150,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Image.asset(Assets.assetsCoffeeEnvase),
                      ),
                      Text('Indonesian Beans'),
                      Text('Coffee Beans'),
                      Row(
                        children: [
                          Expanded(child: Text('\$ 35.00')),
                          IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            iconSize: 40,
                            icon: Icon(
                              Icons.add_circle_rounded,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              color: Colors.white,
              shadowColor: Colors.black12,
              elevation: 10,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                width: 150,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 200,
                      width: 150,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Image.asset(Assets.assetsCoffeeTaste),
                    ),
                    Text('Ethiopia Beans'),
                    Text('Coffee Beans'),
                    Row(
                      children: [
                        Expanded(child: Text('\$ 35.00')),
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          iconSize: 40,
                          icon: Icon(
                            Icons.add_circle_rounded,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15, left: 10),
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.whatshot,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Popular',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Newest',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Recommended',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.all(5),
                    child: AppSvg(
                      Assets.assetsSvgMagnifyingGlass,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UsernameAvatar extends StatelessWidget {
  const UsernameAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Wahidun!',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                Text(
                  'Find your best beans',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
