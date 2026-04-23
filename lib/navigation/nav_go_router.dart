import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavGoRouter extends StatelessWidget {
  const NavGoRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Go Router"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Halaman indeks"),
            ElevatedButton(
                onPressed: () => context.go("/details/4"),
                child: Text("Pindah")
            ),
            ElevatedButton(
                onPressed: () => context.go("/search?q=ppbl&sort=age"),
                child: Text("Search")
            ),
            ElevatedButton(
                onPressed: () => context.go("/sidebar"),
                child: Text("Sidebar")
            ),
            ElevatedButton(
                onPressed: () => context.go("/navrail"),
                child: Text("Sidebar")
            )

          ],
        ),
      ),
    );
  }
}
