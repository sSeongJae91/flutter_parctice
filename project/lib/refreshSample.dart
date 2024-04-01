import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project/product.dart';

class RefreshSample extends StatefulWidget {
  const RefreshSample({super.key});

  @override
  State<RefreshSample> createState() => _RefreshSampleState();
}

class _RefreshSampleState extends State<RefreshSample> {
  late Future<List<Product>> productList;
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    productList = getProductData();
  }

  Future<List<Product>> getProductData() async {
    late List<Product> products;

    try {
      var response = await dio.get("https://dummyjson.com/products");
      products = response.data['products'].map<Product>((json) => Product.fromJson(json)).toList();
    } catch (e) {
      print(e);
    }

    return products;
  }

  Future<void> refreshData () async {
    productList = getProductData();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: RefreshIndicator(
        onRefresh: () => refreshData(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: FutureBuilder<List<Product>> (
            future: productList,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext con, int index) {
                    var data = snapshot.data[index];

                    return Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black26)
                      ),
                      child: Text("${data.title}(${data.description})"),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

//stful 입력 후 tab