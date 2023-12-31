import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/core/utils/extensions.dart';
import 'package:pet_app/domain/entity/pet_favorite_entity.dart';
import 'package:pet_app/domain/entity/pet_entity.dart';
import 'package:pet_app/presentation/bloc/favorite_bloc/favorite_bloc.dart';
import 'package:pet_app/presentation/widgets/like_button.dart';

import '../../../../config/routes/route_constant.dart';
import '../../../../core/utils/colors.dart';

class PetCard extends StatefulWidget {
  final PetEntity pet;
  const PetCard({super.key, required this.pet});

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(RouteConstant.details, arguments: widget.pet),
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1.5, color: ColorPicker.gradient1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: context.height * 0.3,
                    width: context.width,
                    child: widget.pet.image != ""
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              widget.pet.image.toString(),
                              fit: BoxFit.fill,
                            ),
                          )
                        : Container(color: ColorPicker.lightColor),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: LikeButton(
                      onTap: () {
                        isLiked = !isLiked;
                        if (isLiked) {
                          PetFavoriteEntity petFavoriteModel = PetFavoriteEntity(
                             image: widget.pet.image.toString(),
                             id: widget.pet.id.toString(),
                             adaptability: widget.pet.adaptability!,
                             affectionLevel: widget.pet.affectionLevel!,
                             childFriendly: widget.pet.childFriendly!,
                            description: widget.pet.description!,
                            dogFriendly:  widget.pet.dogFriendly!,
                            energyLevel: widget.pet.energyLevel!,
                            grooming:  widget.pet.grooming!,
                            healthIssues:  widget.pet.healthIssues!,
                             intelligence: widget.pet.intelligence!,
                            name:  widget.pet.name!,
                            sheddingLevel:  widget.pet.sheddingLevel!,
                            socialNeeds:  widget.pet.socialNeeds!,
                            strangerFriendly:  widget.pet.strangerFriendly!);
                          context
                              .read<FavoriteBloc>()
                              .add(FavoriteAddedEvent(petFavoriteModel));
                        } else {
                          context.read<FavoriteBloc>().add(
                              FavoriteRemovedEvent(widget.pet.id.toString()));
                        }
                        setState(() {});
                      },
                      icon: isLiked
                          ? const Icon(
                              Icons.favorite,
                              color: ColorPicker.likeColor,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                              color: ColorPicker.whiteColor,
                            ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.pet.name.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
