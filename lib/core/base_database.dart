/// Base class for all database classes
///
/// provides a blueprint for basic CRUD operations
abstract class BaseDatabase {
  // Insert a record
  Future<int> insert(String table, Map<String, Object?> values);

  // Update a record
  Future<int> update(
      String table, Map<String, Object?> values, String whereClause,
      [List<Object?>? whereArgs]);

  // Delete a record
  Future<int> delete(String table, String whereClause,
      [List<Object?>? whereArgs]);

  // Get all records
  Future<List<Map<String, Object?>>> query(String table);

  // Get a record by id
  Future<Map<String, Object?>> findById(String table, int id);
}
