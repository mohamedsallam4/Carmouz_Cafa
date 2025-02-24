/*import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:application_87/homePage/Drawer.dart'; // تأكد من استيراد الـ Drawer

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<StatefulWidget> createState() => _OrderState();



  static fromMap(Map<String, dynamic> map) {}

  Map<String, Object?> toMap() {}
}

class _OrderState extends State<Order> {
  int _selectedIndex = 0;

  List<Map<String, dynamic>> items = []; // لتخزين العناصر من قاعدة البيانات

  // Database Variables
  late Database _database;

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  // فتح وتهيئة قاعدة البيانات
  Future<void> _initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'cafe_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY, name TEXT)',
        );
      },
      version: 1,
    );
    _loadItems();
  }

  // تحميل العناصر من قاعدة البيانات
  Future<void> _loadItems() async {
    final List<Map<String, dynamic>> maps = await _database.query('items');

    setState(() {
      items = maps;
    });
  }

  // إدخال عنصر جديد في قاعدة البيانات
  Future<void> _insertItem(String name) async {
    await _database.insert(
      'items',
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    _loadItems(); // تحديث العناصر بعد الإضافة
  }

  // تعديل عنصر موجود في قاعدة البيانات
  Future<void> _updateItem(int id, String name) async {
    await _database.update(
      'items',
      {'name': name},
      where: 'id = ?',
      whereArgs: [id],
    );
    _loadItems(); // تحديث العناصر بعد التعديل
  }

  // حذف عنصر من قاعدة البيانات
  Future<void> _deleteItem(int id) async {
    await _database.delete(
      'items',
      where: 'id = ?',
      whereArgs: [id],
    );
    _loadItems(); // تحديث العناصر بعد الحذف
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerr(), // تأكد من أن Widget الـ Drawer موجودة بشكل صحيح
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [Image.asset("images/homepage.jpg")],
            ),
          ),
          if (_selectedIndex == 0) ...[
            // فقط في قسم "Drinks"
            const Divider(),
            TextButton(
              onPressed: () {
                _insertItem("New Coffee"); // إضافة عنصر جديد
              },
              child: const Text("Add Coffee to Database"),
            ),
            Text(
              "Saved Items:",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]['name']), // عرض اسم العنصر
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            _showEditDialog(context, items[index]['id'],
                                items[index]['name']);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            _deleteItem(items[index]
                                ['id']); // حذف العنصر باستخدام الـ ID
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  // دالة لإظهار مربع حوار لتعديل العنصر
  void _showEditDialog(BuildContext context, int id, String currentName) {
    TextEditingController _controller =
        TextEditingController(text: currentName);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Item'),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(labelText: 'Item Name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                String newName = _controller.text;
                if (newName.isNotEmpty) {
                  _updateItem(id, newName); // تعديل العنصر باستخدام الـ ID
                  Navigator.of(context).pop(); // إغلاق مربع الحوار
                }
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // إغلاق مربع الحوار بدون حفظ
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
*/
