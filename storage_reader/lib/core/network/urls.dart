const baseUrl = 'http://192.168.1.102:8000/api/v1';
const operationsUrl = '$baseUrl/user/operations';
String shopUrl(int userId)=> '$baseUrl/user-id-operations/$userId';
String operationUrl(int operationId) => '$operationsUrl/$operationId';
String productUrl(int productId) => '$baseUrl/products/$productId';
