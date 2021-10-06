class HomeScreenTransactions {
  String name;
  String transactionType;
  String trasactionDate;
  double transactionAmount;

  HomeScreenTransactions(this.name, this.transactionType, this.trasactionDate,
      this.transactionAmount);
}

List<HomeScreenTransactions> homeScreenTransaction = hsData
    .map(
      (data) => HomeScreenTransactions(
        data['name'] as String,
        data['transactionType'] as String,
        data['transactionDate'] as String,
        data['transactionAmount'] as double,
      ),
    )
    .toList();

var hsData = [
  {
    "name": "Gerome Penalosa",
    "transactionType": "Deposit",
    "transactionDate": "Sep23",
    "transactionAmount": 2000.0,
  },
  {
    "name": "Romeo Moreno",
    "transactionType": "Deposit",
    "transactionDate": "Sep23",
    "transactionAmount": 3000.0,
  },
  {
    "name": "Robert Moreno",
    "transactionType": "Deposit",
    "transactionDate": "Sep23",
    "transactionAmount": 3000.0,
  },
  {
    "name": "Romeo Moreno",
    "transactionType": "Deposit",
    "transactionDate": "Sep23",
    "transactionAmount": 3000.0,
  },
  {
    "name": "Romeo Moreno",
    "transactionType": "Deposit",
    "transactionDate": "Sep23",
    "transactionAmount": 3000.0,
  },
];
