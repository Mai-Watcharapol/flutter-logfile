class Item {
  String id;
  int quantity;
  String name;

  Item({
    required this.id,
    required this.quantity,
    required this.name
  });

  @override
  String toString() => 'Item { id: $id, quantity: $quantity, name: $name }';
}

void main() {
  Item item1 = Item(
    id: "ID1",
    quantity: 10,
    name: "Example Name 1"
  );

  Item item2 = Item(
    id: "ID2",
    quantity: 20,
    name: "Example Name 2",
  );

  List<Item> itemList = [item1, item2];

  print(item1);
  print(item2);
  print(itemList);
}
