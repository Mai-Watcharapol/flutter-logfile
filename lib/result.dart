import 'item.dart';

class Result {

    bool isSuccess;
    String warn;
    List<Item> content;

    Result({
        required this.isSuccess,
        required this.warn,
        required this.content,
    });

    @override
    String toString() => 'Result { isSuccess: $isSuccess, warn: $warn, content: $content }';}

void main() {
    Item item1 = Item(
        id: "ID1",
        quantity: 10,
        name: "Example Name 1"
    );

    Item item2 = Item(
        id: "ID2",
        quantity: 20,
        name: "Example Name 2"
    );

    List<Item> itemList = [item1, item2];

    var data = Result(isSuccess: true, warn: "", content: itemList);
    print(data.toString());

}
