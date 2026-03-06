import 'package:flutter/material.dart';
import 'package:ppbl2026/state/simple_stateful.dart';
import 'package:ppbl2026/state/wishlist_provider.dart';
import 'package:provider/provider.dart';
import 'package:ppbl2026/state/keranjang_provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => KeranjangProvider()),
          ChangeNotifierProvider(create: (context) => WishlistProvider()),
        ],
        child: const MaterialApp(
          home: ContohState(),
        ), // The widget tree that needs access to the providers
      ),


  );
}
