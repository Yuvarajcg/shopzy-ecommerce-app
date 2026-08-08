import 'package:flutter/material.dart';

/// A button that plays a quick "pulse" (scale) animation and swaps its
/// label/icon for a moment when the product is added to the cart.
/// This is the project's dedicated "Add-to-Cart Animation".
class AnimatedAddToCartButton extends StatefulWidget {
  final VoidCallback onPressed;

  const AnimatedAddToCartButton({super.key, required this.onPressed});

  @override
  State<AnimatedAddToCartButton> createState() =>
      _AnimatedAddToCartButtonState();
}

class _AnimatedAddToCartButtonState extends State<AnimatedAddToCartButton>
    with SingleTickerProviderStateMixin {
  bool _justAdded = false;
  double _scale = 1.0;

  void _handleTap() async {
    widget.onPressed();

    setState(() {
      _scale = 0.92;
      _justAdded = true;
    });

    await Future.delayed(const Duration(milliseconds: 120));
    if (!mounted) return;
    setState(() => _scale = 1.0);

    await Future.delayed(const Duration(milliseconds: 900));
    if (!mounted) return;
    setState(() => _justAdded = false);
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
            color: _justAdded ? Colors.green.shade600 : primary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              ),
              child: _justAdded
                  ? const Row(
                      key: ValueKey('added'),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Added to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  : const Row(
                      key: ValueKey('add'),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_outlined,
                            color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
