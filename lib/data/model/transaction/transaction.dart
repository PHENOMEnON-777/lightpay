
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
sealed class Transaction with _$Transaction {
  factory Transaction({
   required String amount,
  }) = _Transaction;
	
  factory Transaction.fromJson(Map<String, dynamic> json) =>
			_$TransactionFromJson(json);
}
