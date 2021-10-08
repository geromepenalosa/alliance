import 'dart:math';

class TransactionRecorder {
  String name;
  String transactionType;
  String transactionDate;
  int transactionAmount;
  int transactionNumber;
  double accountBalance;

  TransactionRecorder(
      {required this.name,
      required this.transactionType,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionNumber,
      required this.accountBalance});
}

List<TransactionRecorder> userTransactions = [];

numberGenerator() {
  var randomize = new Random();
  int min = 10000000;
  int max = 20000000;
  int result = min + randomize.nextInt(max - min);
  return result;
}
