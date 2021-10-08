class AccountData {
  String accountOwner;
  String expirationDate;
  double accountOwnerBalance;
  int cardNumber;

  AccountData(this.accountOwner, this.expirationDate, this.accountOwnerBalance,
      this.cardNumber);

  transfer(amount) {
    accountOwnerBalance -= amount;
  }
}

AccountData account =
    AccountData('Gerome Penalosa', '12/22', 100000.0, 5425233430102345);
