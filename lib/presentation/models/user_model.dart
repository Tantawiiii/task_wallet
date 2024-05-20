class User {
  final int id;
  final String username;
  final int amount;
  final String lastTransactionDate;

  User({
    required this.id,
    required this.username,
    required this.amount,
    required this.lastTransactionDate,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      amount: map['amount'],
      lastTransactionDate: map['lastTransactionDate'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'amount': amount,
      'lastTransactionDate': lastTransactionDate,
    };
  }
}
