import 'package:flutter/material.dart';
import 'package:test1/common/layout/default_layout.dart';
import 'package:test1/product/component/product_card.dart';
import 'package:test1/restaurant/component/restaurant_card.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: '불타는 떡볶이',
        child: CustomScrollView(
          slivers: [
            renderTop(),
            renderLabel(),
            renderProduct(),
          ],
        )


      /*Column(
          children: [
            RestaurantCard(
                image: Image.asset(
                  'asset/img/food/ddeok_bok_gi.jpg'
                ),
                name: '불타는 떡볶이',
                tags: ['떡볶이', '맛있음', '치즈'],
                ratingsCount: 100,
                deliveryTime: 30,
                deliveryFee: 3000,
                ratings: 4.76,
                isDetail: true,
              detail: '맛있는 떡볶이',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ProductCard(),
            ),
          ],
        ),*/
    );
  }

  SliverPadding renderLabel(){
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverToBoxAdapter(
        child: Text(
            '메뉴',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }

  renderProduct() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index){
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ProductCard(),
                );
              },
            childCount: 10,
          ),
      ),
    );
  }

  SliverToBoxAdapter renderTop() {
    return SliverToBoxAdapter(
      child: RestaurantCard(
        image: Image.asset(
            'asset/img/food/ddeok_bok_gi.jpg'
        ),
        name: '불타는 떡볶이',
        tags: ['떡볶이', '맛있음', '치즈'],
        ratingsCount: 100,
        deliveryTime: 30,
        deliveryFee: 3000,
        ratings: 4.76,
        isDetail: true,
        detail: '맛있는 떡볶이',
      ),
    );
  }
}
