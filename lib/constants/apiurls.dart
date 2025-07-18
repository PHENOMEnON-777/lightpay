
class Endpoints {
  // 🔧 Base URL de l'API (à adapter selon ton backend local ou distant)
  static const String baseUrl = 'http://38.242.228.212:8010/api'; // exemple

  // 🔐 Authentification
  static const String login = '$baseUrl/auth/login';
  static const String loginWithToken = '$baseUrl/auth/login-with-token';
  static const String register = '$baseUrl/auth/register';
  static const String registerMerchant = '$baseUrl/auth/register-merchant';
  static const String registerCustomer = '$baseUrl/auth/register-customer';
  static const String logout = '$baseUrl/auth/logout';

  static const String getUserById = '$baseUrl/user/get-user-by-id';

  // 👤 Utilisateur
  static const String userProfile = '$baseUrl/user/profile';
  static const String updateUserData = '$baseUrl/user/update-profile';
  static const String updateUserPassword = '$baseUrl/user/update-password';
  static const String updateUserPinCode = '$baseUrl/user/update-pin-code';

  // 💰 Transactions
  static const String getTransactionById = '$baseUrl/transaction/get-transaction-by-id';
  static const String handleTransaction = '$baseUrl/transaction/handle-approval';
  static const String initTransaction = '$baseUrl/transaction/init-payment';
  static const String getListTransactions = '$baseUrl/transaction/get-list-transactions-by-user-id';
  static const String sendMoneyToAnotherAccount = '$baseUrl/transaction/send-money-to-another-account';

  // 🔄 Rechargement
  static const String initRecharge = '$baseUrl/recharge/init-recharge';
  static const String getListRechargesByUserId = '$baseUrl/recharge/get-list-recharge-by-user-id'; 

  // 🏦 History
  static const String getHistoryByUserId = '$baseUrl/history/get-history-by-user-id';
  static const String getHistoryDetailById = '$baseUrl/history/get-history-detail-by-id';

  // 📡 Paiement NFC
  static const String nfcCreateTransaction = '$baseUrl/nfc/prepare';
  static const String nfcConfirmTransaction = '$baseUrl/nfc/confirm';
}
