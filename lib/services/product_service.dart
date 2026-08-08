import '../models/product.dart';

/// Provides local product data for the app.
/// In a production app this could be swapped out for an API/JSON call,
/// but for this project everything is stored locally as requested.
class ProductService {
  static final List<Product> _products = [
    Product(
      id: 'p1',
      name: 'Wireless Headphones',
      category: 'Electronics',
      price: 2499,
      rating: 4.5,
      imageUrl: 'https://picsum.photos/seed/p1/600/600',
      description:
          'Immerse yourself in rich, room-filling sound with these over-ear '
          'wireless headphones. Featuring active noise cancellation and a '
          '30-hour battery life, they are built for all-day comfort.',
      specifications: {
        'Battery Life': '30 hours',
        'Connectivity': 'Bluetooth 5.2',
        'Noise Cancellation': 'Active',
        'Weight': '250 g',
      },
    ),
    Product(
      id: 'p2',
      name: 'Smart Watch Series X',
      category: 'Electronics',
      price: 5999,
      rating: 4.7,
      imageUrl: 'https://picsum.photos/seed/p2/600/600',
      description:
          'Track your fitness, heart rate, and sleep with a vibrant AMOLED '
          'display and a battery that lasts up to 7 days on a single charge.',
      specifications: {
        'Display': '1.4" AMOLED',
        'Battery Life': '7 days',
        'Water Resistance': '5 ATM',
        'Sensors': 'Heart Rate, SpO2, GPS',
      },
    ),
    Product(
      id: 'p3',
      name: 'Portable Bluetooth Speaker',
      category: 'Electronics',
      price: 1799,
      rating: 4.3,
      imageUrl: 'https://picsum.photos/seed/p3/600/600',
      description:
          'A compact speaker that delivers surprisingly powerful, punchy '
          'sound. Fully waterproof, making it perfect for outdoor use.',
      specifications: {
        'Battery Life': '12 hours',
        'Waterproof Rating': 'IPX7',
        'Connectivity': 'Bluetooth 5.0',
        'Weight': '400 g',
      },
    ),
    Product(
      id: 'p4',
      name: 'Classic Denim Jacket',
      category: 'Fashion',
      price: 2199,
      rating: 4.4,
      imageUrl: 'https://picsum.photos/seed/p4/600/600',
      description:
          'A timeless denim jacket made from premium cotton twill. '
          'Pairs perfectly with almost anything in your wardrobe.',
      specifications: {
        'Material': '100% Cotton Denim',
        'Fit': 'Regular',
        'Care': 'Machine Wash Cold',
        'Sizes': 'S, M, L, XL',
      },
    ),
    Product(
      id: 'p5',
      name: 'Running Sneakers',
      category: 'Fashion',
      price: 3299,
      rating: 4.6,
      imageUrl: 'https://picsum.photos/seed/p5/600/600',
      description:
          'Lightweight running sneakers with responsive cushioning and a '
          'breathable mesh upper for long, comfortable runs.',
      specifications: {
        'Material': 'Mesh & EVA Foam',
        'Sole': 'Rubber, Non-slip',
        'Weight': '260 g (per shoe)',
        'Sizes': '6 - 11 UK',
      },
    ),
    Product(
      id: 'p6',
      name: 'Leather Crossbody Bag',
      category: 'Fashion',
      price: 2799,
      rating: 4.2,
      imageUrl: 'https://picsum.photos/seed/p6/600/600',
      description:
          'A minimalist crossbody bag crafted from genuine leather, with '
          'enough room for your daily essentials.',
      specifications: {
        'Material': 'Genuine Leather',
        'Strap': 'Adjustable',
        'Dimensions': '22 x 16 x 6 cm',
        'Color': 'Tan Brown',
      },
    ),
    Product(
      id: 'p7',
      name: 'Ceramic Coffee Mug Set',
      category: 'Home',
      price: 899,
      rating: 4.5,
      imageUrl: 'https://picsum.photos/seed/p7/600/600',
      description:
          'A set of 4 handcrafted ceramic mugs, microwave and dishwasher '
          'safe, perfect for your morning coffee ritual.',
      specifications: {
        'Material': 'Ceramic',
        'Set Size': '4 mugs',
        'Capacity': '300 ml each',
        'Care': 'Dishwasher Safe',
      },
    ),
    Product(
      id: 'p8',
      name: 'Scented Soy Candle',
      category: 'Home',
      price: 549,
      rating: 4.1,
      imageUrl: 'https://picsum.photos/seed/p8/600/600',
      description:
          'Hand-poured soy wax candle with a warm vanilla and sandalwood '
          'fragrance, with a burn time of up to 40 hours.',
      specifications: {
        'Wax Type': 'Soy Wax',
        'Burn Time': '40 hours',
        'Fragrance': 'Vanilla Sandalwood',
        'Weight': '220 g',
      },
    ),
    Product(
      id: 'p9',
      name: 'Cozy Throw Blanket',
      category: 'Home',
      price: 1299,
      rating: 4.6,
      imageUrl: 'https://picsum.photos/seed/p9/600/600',
      description:
          'Ultra-soft, plush throw blanket that adds warmth and texture '
          'to any couch or bed.',
      specifications: {
        'Material': 'Microfiber Fleece',
        'Dimensions': '150 x 200 cm',
        'Care': 'Machine Washable',
        'Color': 'Ivory',
      },
    ),
    Product(
      id: 'p10',
      name: 'Hydrating Face Serum',
      category: 'Beauty',
      price: 999,
      rating: 4.4,
      imageUrl: 'https://picsum.photos/seed/p10/600/600',
      description:
          'A lightweight, fast-absorbing serum enriched with hyaluronic '
          'acid to lock in moisture and leave skin glowing.',
      specifications: {
        'Volume': '30 ml',
        'Key Ingredient': 'Hyaluronic Acid',
        'Skin Type': 'All Skin Types',
        'Cruelty Free': 'Yes',
      },
    ),
    Product(
      id: 'p11',
      name: 'Matte Lipstick Set',
      category: 'Beauty',
      price: 1199,
      rating: 4.3,
      imageUrl: 'https://picsum.photos/seed/p11/600/600',
      description:
          'A set of 3 long-wearing matte lipsticks in versatile everyday '
          'shades, formulated to be non-drying.',
      specifications: {
        'Set Size': '3 shades',
        'Finish': 'Matte',
        'Wear Time': 'Up to 8 hours',
        'Cruelty Free': 'Yes',
      },
    ),
    Product(
      id: 'p12',
      name: 'Natural Bamboo Hairbrush',
      category: 'Beauty',
      price: 399,
      rating: 4.0,
      imageUrl: 'https://picsum.photos/seed/p12/600/600',
      description:
          'An eco-friendly hairbrush with soft bamboo bristles that '
          'gently detangle hair while reducing static and breakage.',
      specifications: {
        'Material': 'Bamboo & Boar Bristle',
        'Suitable For': 'All Hair Types',
        'Eco Friendly': 'Yes',
        'Handle': 'Ergonomic Wood',
      },
    ),
  ];

  static List<Product> getAllProducts() => List.unmodifiable(_products);

  static List<Product> getFeaturedProducts() =>
      _products.where((p) => p.rating >= 4.5).toList();

  static List<Product> getByCategory(String category) {
    if (category == 'All') return getAllProducts();
    return _products.where((p) => p.category == category).toList();
  }

  static List<String> getCategories() {
    final categories = _products.map((p) => p.category).toSet().toList();
    categories.sort();
    return ['All', ...categories];
  }

  static List<Product> search(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return getAllProducts();
    return _products
        .where((p) =>
            p.name.toLowerCase().contains(q) ||
            p.category.toLowerCase().contains(q))
        .toList();
  }
}
