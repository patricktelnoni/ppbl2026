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
                onPressed: () => context.go("/details/16"),
                child: Text("Pindah")
            ),
            ElevatedButton(
                onPressed: () => context.go("/search?q=Mobile Lanjutan&sort=age"),
                child: Text("Search")
            ),
            ElevatedButton(
                onPressed: () => context.go("/sidebar"),
                child: Text("Navigation Drawer")
            ),
            ElevatedButton(
                onPressed: () => context.go("/navrail"),
                child: Text("Navigation Rail")
            )

          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.business), label: 'Business'),
          NavigationDestination(icon: Icon(Icons.airplane_ticket_rounded), label: 'Flight'),
        ],
      ),
    );
  }
}
