import 'package:flutter/material.dart';

class NFCAnimationWidget extends StatefulWidget {
  final double size;
  final Color primaryColor;
  final Color backgroundColor;
  final IconData icon;
  final double iconSize;
  final bool isActive;
  final VoidCallback? onTap;
  final Duration animationDuration;
  final Duration pulseDuration;

  const NFCAnimationWidget({
    Key? key,
    this.size = 280.0,
    this.primaryColor = const Color(0xFF2196F3),
    this.backgroundColor = Colors.white,
    this.icon = Icons.nfc_outlined,
    this.iconSize = 50.0,
    this.isActive = true,
    this.onTap,
    this.animationDuration = const Duration(seconds: 2),
    this.pulseDuration = const Duration(milliseconds: 1000),
  }) : super(key: key);

  @override
  State<NFCAnimationWidget> createState() => _NFCAnimationWidgetState();
}

class _NFCAnimationWidgetState extends State<NFCAnimationWidget>
    with TickerProviderStateMixin {
  late AnimationController _waveController;
  late AnimationController _pulseController;
  late Animation<double> _waveAnimation1;
  late Animation<double> _waveAnimation2;
  late Animation<double> _waveAnimation3;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    if (widget.isActive) {
      _startAnimations();
    }
  }

  @override
  void didUpdateWidget(NFCAnimationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive != oldWidget.isActive) {
      if (widget.isActive) {
        _startAnimations();
      } else {
        _stopAnimations();
      }
    }
    
    // Update animation durations if they changed
    if (widget.animationDuration != oldWidget.animationDuration ||
        widget.pulseDuration != oldWidget.pulseDuration) {
      _updateAnimationDurations();
    }
  }

  void _initializeAnimations() {
    _waveController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _pulseController = AnimationController(
      duration: widget.pulseDuration,
      vsync: this,
    );

    _waveAnimation1 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: Curves.easeInOut,
      ),
    );

    _waveAnimation2 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: const Interval(0.2, 1.0, curve: Curves.easeInOut),
      ),
    );

    _waveAnimation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: const Interval(0.4, 1.0, curve: Curves.easeInOut),
      ),
    );

    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(
        parent: _pulseController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void _updateAnimationDurations() {
    _waveController.dispose();
    _pulseController.dispose();
    _initializeAnimations();
    if (widget.isActive) {
      _startAnimations();
    }
  }

  void _startAnimations() {
    _waveController.repeat();
    _pulseController.repeat(reverse: true);
  }

  void _stopAnimations() {
    _waveController.stop();
    _pulseController.stop();
  }

  void startAnimation() {
    if (mounted) {
      _startAnimations();
    }
  }

  void stopAnimation() {
    if (mounted) {
      _stopAnimations();
    }
  }

  void resetAnimation() {
    if (mounted) {
      _waveController.reset();
      _pulseController.reset();
      if (widget.isActive) {
        _startAnimations();
      }
    }
  }

  @override
  void dispose() {
    _waveController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Wave Animation 1
            if (widget.isActive) ...[
              AnimatedBuilder(
                animation: _waveAnimation1,
                builder: (context, child) {
                  return Container(
                    width: widget.size * _waveAnimation1.value,
                    height: widget.size * _waveAnimation1.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.primaryColor.withOpacity(
                          (1 - _waveAnimation1.value) * 0.9,
                        ),
                        width: 2,
                      ),
                    ),
                  );
                },
              ),
              // Wave Animation 2
              AnimatedBuilder(
                animation: _waveAnimation2,
                builder: (context, child) {
                  return Container(
                    width: widget.size * _waveAnimation2.value,
                    height: widget.size * _waveAnimation2.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.primaryColor.withOpacity(
                          (1 - _waveAnimation2.value) * 0.9,
                        ),
                        width: 2,
                      ),
                    ),
                  );
                },
              ),
              // Wave Animation 3
              AnimatedBuilder(
                animation: _waveAnimation3,
                builder: (context, child) {
                  return Container(
                    width: widget.size * _waveAnimation3.value,
                    height: widget.size * _waveAnimation3.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.primaryColor.withOpacity(
                          (1 - _waveAnimation3.value) * 0.9,
                        ),
                        width: 2,
                      ),
                    ),
                  );
                },
              ),
            ],
            // Center Icon with Pulse Animation
            AnimatedBuilder(
              animation: widget.isActive ? _pulseAnimation : const AlwaysStoppedAnimation(1.0),
              builder: (context, child) {
                return Transform.scale(
                  scale: widget.isActive ? _pulseAnimation.value : 1.0,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: widget.primaryColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: widget.primaryColor.withOpacity(0.3),
                          blurRadius: 20,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Icon(
                      widget.icon,
                      size: widget.iconSize,
                      color: widget.backgroundColor,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Extension class for additional animation states
enum NFCAnimationState {
  idle,
  scanning,
  success,
  error,
}

class NFCAnimationController extends StatefulWidget {
  final NFCAnimationState state;
  final double size;
  final Color primaryColor;
  final Color successColor;
  final Color errorColor;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final VoidCallback? onAnimationComplete;

  const NFCAnimationController({
    Key? key,
    this.state = NFCAnimationState.scanning,
    this.size = 280.0,
    this.primaryColor = const Color(0xFF2196F3),
    this.successColor = Colors.green,
    this.errorColor = Colors.red,
    this.backgroundColor = Colors.white,
    this.onTap,
    this.onAnimationComplete,
  }) : super(key: key);

  @override
  State<NFCAnimationController> createState() => _NFCAnimationControllerState();
}

class _NFCAnimationControllerState extends State<NFCAnimationController>
    with SingleTickerProviderStateMixin {
  late AnimationController _stateController;
  late Animation<double> _stateAnimation;

  @override
  void initState() {
    super.initState();
    _stateController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _stateAnimation = CurvedAnimation(
      parent: _stateController,
      curve: Curves.easeInOut,
    );

    _handleStateChange();
  }

  @override
  void didUpdateWidget(NFCAnimationController oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.state != oldWidget.state) {
      _handleStateChange();
    }
  }

  void _handleStateChange() {
    switch (widget.state) {
      case NFCAnimationState.success:
      case NFCAnimationState.error:
        _stateController.forward().then((_) {
          if (widget.onAnimationComplete != null) {
            widget.onAnimationComplete!();
          }
        });
        break;
      case NFCAnimationState.scanning:
      case NFCAnimationState.idle:
        _stateController.reverse();
        break;
    }
  }

  Color get _currentColor {
    switch (widget.state) {
      case NFCAnimationState.success:
        return widget.successColor;
      case NFCAnimationState.error:
        return widget.errorColor;
      case NFCAnimationState.scanning:
      case NFCAnimationState.idle:
        return widget.primaryColor;
    }
  }

  IconData get _currentIcon {
    switch (widget.state) {
      case NFCAnimationState.success:
        return Icons.check;
      case NFCAnimationState.error:
        return Icons.error;
      case NFCAnimationState.scanning:
      case NFCAnimationState.idle:
        return Icons.nfc_outlined;
    }
  }

  @override
  void dispose() {
    _stateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _stateAnimation,
      builder: (context, child) {
        return NFCAnimationWidget(
          size: widget.size,
          primaryColor: Color.lerp(widget.primaryColor, _currentColor, _stateAnimation.value)!,
          backgroundColor: widget.backgroundColor,
          icon: _currentIcon,
          isActive: widget.state == NFCAnimationState.scanning,
          onTap: widget.onTap,
        );
      },
    );
  }
}