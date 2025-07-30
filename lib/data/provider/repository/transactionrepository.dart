

import 'package:lightpay/data/model/appresponsemodel.dart/appresponse.dart';
import 'package:lightpay/data/model/transaction/sendmoney/sendmoney.dart';
import 'package:lightpay/data/model/transaction/transaction.dart';
import 'package:lightpay/data/provider/server/transactionserverservices.dart';

class TransactionRepository {
 final TransactionServerServices transactionServerServices;
  const TransactionRepository({required this.transactionServerServices});
  Future<AppResponse<Map<String,dynamic>>> initiatTransaction({required Transaction transaction}) async {
  try {
    final response = await transactionServerServices.initiatTransaction(transaction: transaction);
    return response;
  } catch (e) {
    rethrow;
  }
}

Future<AppResponse<Map<String,dynamic>>> sendMoney({required SendMoney sendmoney}) async {
  try {
    final response = await transactionServerServices.sendMoney(sendmoney: sendmoney);
    return response;
  } catch (e) {
    rethrow;
  }
}
}