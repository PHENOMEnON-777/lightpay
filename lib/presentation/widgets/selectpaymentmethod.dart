import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:nfc_manager/nfc_manager.dart';

class SelectPaymentMethod extends StatefulWidget {
  const SelectPaymentMethod({super.key});

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  
  @override
  void initState() {
    super.initState();    
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Select Payment Method',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'All payment methods are secure and encrypted',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            // Payment Options
            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: _buildPaymentCard(
                  color: Theme.of(context).secondaryHeaderColor,
                  context,
                  icon: Icons.contactless_sharp,
                  title: 'Pay with NFC',
                  onTap: () async {
                    try {
                      final isAvailable = await NfcManager.instance.isAvailable();
                      if (isAvailable) {
                        Navigator.of(context).pushNamed(Pagenavigation.nfcpaymentscreen);
                      } else {
                        _showNfcNotAvailableDialog();
                      }
                    } catch (e) {
                      _showNfcNotAvailableDialog();
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            FadeTransition(
              opacity: _fadeAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: _buildPaymentCard(
                  color: Theme.of(context).secondaryHeaderColor,
                  context,
                  icon: Icons.qr_code_2_sharp,
                  title: 'Pay with QR Code',
                  onTap: () {
                    Navigator.of(context).pushNamed(Pagenavigation.qrcodepaymentscreen);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _showNfcNotAvailableDialog() {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('NFC Not Available !!!',style: TextStyle(color: Colors.amber),),
          content: const Text('NFC technology may not be available on this device or its disable in your settings.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
            TextButton(
              onPressed:(){
                AppSettings.openAppSettings(type: AppSettingsType.nfc,asAnotherTask: true);
              },
              child:Text('Settings')
            )
          ],
        );
      }
    );
  }

  Widget _buildPaymentCard(
    BuildContext context, {
    required IconData icon, 
    required String title, 
    required VoidCallback onTap,
    required Color color
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
          color: color,
          child: Center(
            child: ListTile(
              leading: Icon(
                icon,
                size: 50,
              ),
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showPaymentOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => const SelectPaymentMethod(),
  );
}