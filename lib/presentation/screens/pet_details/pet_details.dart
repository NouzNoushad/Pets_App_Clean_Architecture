import 'package:flutter/material.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/core/utils/extensions.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
import 'package:pet_app/presentation/screens/pet_details/components/pet_status.dart';

class PetDetailsScreen extends StatelessWidget {
  final PetEntity petModel;
  const PetDetailsScreen({super.key, required this.petModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      appBar: AppBar(
        title: Text(petModel.name.toString()),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [ColorPicker.gradient1, ColorPicker.gradient2]),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: context.height * 0.35,
            width: context.width,
            child: petModel.image != ""
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      petModel.image.toString(),
                      fit: BoxFit.fill,
                    ),
                  )
                : Container(color: ColorPicker.lightColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  petModel.name.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  petModel.description.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                PetStatus(
                    title: 'Adaptability', status: petModel.adaptability!),
                PetStatus(
                    title: 'Affection Level', status: petModel.affectionLevel!),
                PetStatus(
                    title: 'Child Friendly', status: petModel.childFriendly!),
                PetStatus(title: 'Dog Friendly', status: petModel.dogFriendly!),
                PetStatus(
                    title: 'Stranger Friendly',
                    status: petModel.strangerFriendly!),
                PetStatus(title: 'Energy Level', status: petModel.energyLevel!),
                PetStatus(title: 'Grooming', status: petModel.grooming!),
                PetStatus(
                    title: 'Health Issues', status: petModel.healthIssues!),
                PetStatus(
                    title: 'Intelligence', status: petModel.intelligence!),
                PetStatus(title: 'Social Needs', status: petModel.socialNeeds!),
                PetStatus(
                    title: 'Shedding Level', status: petModel.sheddingLevel!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
