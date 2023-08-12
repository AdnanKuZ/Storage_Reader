const baseUrl = 'http://192.168.43.246:8000/api/v1';
const operationsUrl = '$baseUrl/user/operations';
String operationUrl(int operationId) => '$operationsUrl/$operationId';
String productUrl(int productId) => '$baseUrl/products/$productId';
