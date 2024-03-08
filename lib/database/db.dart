import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  // Construtor com acesso privado
  DB._();

  // Criar uma instância de DB
  static final DB instance = DB._();

  // Instância do SQlite
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), "estoque.db");

    return await openDatabase(
      path,
      version: 1, // A versão do seu banco de dados
      onCreate: _createTables,
    );
  }

  _createTables(Database db, int version) async {
    await db.execute(_produto);
    await db.execute(_categoria);
    await db.execute(_estoque);
  }

String get _produto => '''
CREATE TABLE produto (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT,
  marca TEXT,
  sabor TEXT,
  preco DOUBLE,
  id_categoria INTEGER,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id)
)
''';

String get _categoria => '''
CREATE TABLE categoria (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT
)
''';

String get _estoque => '''
CREATE TABLE estoque (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_produto INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (id_produto) REFERENCES produto(id)
)
''';
}
