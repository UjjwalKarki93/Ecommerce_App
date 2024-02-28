import 'package:ecommerce_app/common/widgets/texts/section_header.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
            sectionTitle: 'Shipping Address', buttonTitle: 'Change'),
        Text('Ujjwal Karki', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: 4),
            Text('+977 9812345678',
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.location_city_outlined,
                color: Colors.grey, size: 16),
            const SizedBox(width: 4),
            Expanded(
              child: Text('Balambu, Chandragiri - 12, Kathmandu, Nepal',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
      ],
    );
  }
}
