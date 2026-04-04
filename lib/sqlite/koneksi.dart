import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'buku.dart';

// $conn = mysqli_connect('localhost', 'root', '', 'perpustakaan')

Future<Database> openDb() async{
  final database = await openDatabase(
    'database_perpustakaan',
    version:  3,
    onCreate: (db, version) async{
      db.execute('''
          CREATE TABLE buku (
            bukuid INTEGER PRIMARY KEY AUTOINCREMENT,
            nama_buku TEXT NOT NULL,
            isbn INTEGER NOT NULL
          )
          ''');
    },
      onUpgrade: (db, oldVersion, newVersion) async{
        if (oldVersion < 2) {
          db.execute('''
          CREATE TABLE penerbit (
            penerbitid INTEGER PRIMARY KEY AUTOINCREMENT,
            nama_penerbit TEXT NOT NULL,
            alamat TEXT NOT NULL
          )
          ''');
        }

        if (oldVersion < 3) {
          db.execute('''
          CREATE TABLE pengarang (
            pengarangid INTEGER PRIMARY KEY AUTOINCREMENT,
            nama_pengarang TEXT NOT NULL
          )
          ''');
        }

      },
      onDowngrade: (db, oldVersion, newVersion) async{
        await db.execute('DROP TABLE IF EXISTS penerbit');
        await db.execute('DROP TABLE IF EXISTS buku');
        await openDb();
      },
  );
  return database;
}

class PenerbitQueryHandler{
  Future<Database> database() async {
    return openDb();
  }
}
// mysqli_query($conn, "SELECT * FROM buku")

class BukuQueryHandler{
  Future<Database> database() async {
    return openDb();
  }

  Future<int> tambahBuku(Buku buku) async{
    final db = await database();
    final id = await db.insert('buku', buku.toJson());
    return id;
  }

  Future<List<Buku>> ambilSemuaBuku() async{
    final db = await database();
    final List<Map<String, dynamic>> maps = await db.query('buku');
    return List.generate(maps.length, (i){
      return Buku.fromJson(maps[i]);
    });
  }

  Future<int> updateBuku(Buku buku) async {
    final db = await database();

    final result = await db.update(
      'buku',
      buku.toJson(),
      where: 'bukuid = ?',
      whereArgs: [buku.bukuid],
    );

    return result;
  }

  Future<int> hapusBuku(int bukuid) async {
    final db = await database();
    final result = await db.delete('buku', where: 'bukuid = ?', whereArgs: [bukuid]);

    return result;
  }

}


