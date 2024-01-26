/// table information for "carts"
class OrderTableUtils {
  static String tableName = 'orders';
  static String columnId = 'id';
  static String columnCreatedAt = 'createdAt';
  static String columnProductId = 'productId';
  static String columnQuantity = 'quantity';
  static String columnSalesPartNo = 'sales_part_no';

  static get tableCreationQuery => "CREATE TABLE $tableName ("
      "$columnId INTEGER PRIMARY KEY,"
      "$columnProductId INTEGER NOT NULL,"
      "$columnQuantity INTEGER NOT NULL,"
      "$columnSalesPartNo INTEGER NOT NULL,"
      "$columnCreatedAt DATE DEFAULT (datetime('now','localtime')))";
}

class ProductsTableUtils {
  static String tableName = 'products';
  static String columnId = 'id';
  static String columnTimeStamp = 'timestamp';
  static String columnProductId = 'productId';
  static String columnQuantity = 'quantity';
  static String columnOrderId = 'orderId';
  static String columnSalesPartNo = 'sales_part_no';

  static get tableCreationQuery => "CREATE TABLE $tableName ("
      "$columnId INTEGER PRIMARY KEY,"
      "$columnTimeStamp DATE DEFAULT (datetime('now','localtime')),"
      "$columnOrderId INTEGER NOT NULL,"
      "$columnQuantity INTEGER NOT NULL,"
      "$columnSalesPartNo INTEGER NOT NULL,"
      "$columnProductId INTEGER NOT NULL)";
}

class DraftOrdersTableUtils {
  static String tableName = 'draft_orders';
  static String columnId = 'id';
  static String columnTimeStamp = 'timestamp';
  static String columnName = 'name';

  static get tableCreationQuery => "CREATE TABLE $tableName ("
      "$columnId INTEGER PRIMARY KEY,"
      "$columnTimeStamp DATE DEFAULT (datetime('now','localtime')),"
      "$columnName TEXT NOT NULL)";
}

