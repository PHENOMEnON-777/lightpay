import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/constants/pagenavigation.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/presentation/widgets/pincodeverification.dart';
import 'package:lightpay/presentation/widgets/selectpaymentmethod.dart';



enum Menuoptions {
  appmode,
  settings,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  bool _isBalanceVisible = false;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
    );

    // Start animations
    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          // Use when to handle different states
          return state.maybeWhen(
            orElse: () => CircularProgressIndicator(strokeWidth: 2,),
            loadinglogin: () => CircularProgressIndicator(strokeWidth: 2,),
            loginSuccess: (response) {
              return SingleChildScrollView(
        child: Column(
        children: [
          FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 30.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF1976D2), Color(0xFF42A5F5)],
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning,',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                             response.data?['user']?['name'] ?? 'User',// Dynamic user name from AuthState
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded)),
                          PopupMenuButton(
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                              onSelected: (Menuoptions value) {
                                setState(() {
                                  if (value == Menuoptions.appmode) {

                                  } else if (value == Menuoptions.settings) {
                                    Navigator.of(context).pushNamed(Pagenavigation.settingscreen);
                                  } 
                                });
                              },
                              itemBuilder: (_) => [
                                    PopupMenuItem(
                                      value: Menuoptions.appmode,
                                      child: Row(
                                        children: [
                                          Icon(Icons.dark_mode),
                                          Text('app mode'),
                                        ],
                                      )   
                                    ),
                                   
                                      const PopupMenuItem(
                                      value: Menuoptions.settings,
                                      child: Row(
                                        children: [
                                          Icon(Icons.settings),
                                          Text('Settings'),
                                        ],
                                      ),
                                    )
                                  ]
                                  ),               
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: screenHeight * 0.22,
                    width: screenWidth * 0.9,
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Balance',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 8),
                               AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                              child: FittedBox(
                                key: ValueKey(_isBalanceVisible),
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  _isBalanceVisible
                                      ? '${response.data?['user']?['balance']?.toString() ?? '0.00'} XfA'
                                                                  : '••••••',
                                  style: const TextStyle(
                                  color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                ),
                                 ),
                               ),
                             ),
                              ],
                            ),
                            GestureDetector(
                              onTap: ()async {
                                 bool pinVerified = await promptUserPinCode(context,(_){});
                                 if (pinVerified == true) { 
                                setState((){
                                 _isBalanceVisible = !_isBalanceVisible;
                                });
                                           }

                                HapticFeedback.lightImpact();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 200),
                                  child: Icon(
                                    _isBalanceVisible
                                        ? Icons.visibility_off_rounded
                                        : Icons.visibility_rounded,
                                    key: ValueKey(_isBalanceVisible),
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.trending_up,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '+12.5%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'vs last month',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Main Content
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Quick Actions Section
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: const Text(
                    'Quick Actions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Action Cards
                SlideTransition(
                  position: _slideAnimation,
                  child: Column(
                    children: [
                      _buildActionCard(
                        icon: Icons.payment_rounded,
                        title: 'Proceed to Payment',
                        subtitle: 'Make secure payments',
                        color: Colors.blue,
                        onTap: () {
                          showPaymentOptions(context);
                          HapticFeedback.selectionClick();
                        },
                      ),
                      const SizedBox(height: 16),
                      _buildActionCard(
                        icon: Icons.send_rounded,
                        title: 'Send Money',
                        subtitle: 'Transfer to friends & family',
                        color: Colors.green,
                        onTap: () {
                          Navigator.of(context).pushNamed(Pagenavigation.sendmoneyscreen);
                          HapticFeedback.selectionClick();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
            },
            loginFailure: (message) => _buildErrorScreen(message),
          );
        },
      ),
    );
  }

  Widget _buildErrorScreen(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Error: $message',
            style: TextStyle(
              fontSize: 16,
              color: Colors.red[600],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              // You can trigger a retry or navigate back to login
              Navigator.of(context).pushReplacementNamed(Pagenavigation.loginscreen);
            },
            child: const Text('Go to Login'),
          ),
        ],
      ),
    );
  }
  }

  Widget _buildHeaderIcon(IconData icon) {
    return GestureDetector(
      onTap: () => HapticFeedback.lightImpact(),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_outlined, size: 24),
          ],
        ),
      ),
    );
  }
