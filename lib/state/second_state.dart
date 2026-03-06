import 'package:flutter/material.dart';
import 'keranjang_provider.dart';
import 'package:provider/provider.dart';
import 'wishlist_provider.dart';

class SecondState extends StatefulWidget {
  const SecondState({super.key});

  @override
  State<SecondState> createState() => _SecondStateState();
}

class _SecondStateState extends State<SecondState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple State"),
      ),
      body: Column(
        children: [
          const Text("Halaman dua"),
          Consumer<KeranjangProvider>(
            builder: (context, counterProvider, child) {
              return Text("${counterProvider.keranjangCount}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                context.read<KeranjangProvider>().increment();
              },
              child: const Text("Naikan nilai")),

          Consumer<WishlistProvider>(
            builder: (context, counterProvider, child) {
              return Text("${counterProvider.wishlistCount}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                context.read<WishlistProvider>().increment();
              },
              child: const Text("Tambah Wishlist")
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Kembali")),
        ],
      ),
    );
  }
}
