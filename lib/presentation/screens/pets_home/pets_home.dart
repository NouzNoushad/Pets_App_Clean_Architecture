import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/config/routes/route_constant.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/presentation/bloc/pets_bloc/pets_bloc.dart';
import 'package:pet_app/presentation/screens/pets_home/components/pet_card.dart';

class PetsHomeScreen extends StatefulWidget {
  const PetsHomeScreen({super.key});

  @override
  State<PetsHomeScreen> createState() => _PetsHomeScreenState();
}

class _PetsHomeScreenState extends State<PetsHomeScreen> {
  @override
  void initState() {
    context.read<PetsBloc>().add(const PetsLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      appBar: AppBar(
        title: const Text('Kitty Kats'),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [ColorPicker.gradient1, ColorPicker.gradient2]),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteConstant.favorite);
              },
              icon: const Icon(Icons.favorite))
        ],
      ),
      body: BlocConsumer<PetsBloc, PetsState>(
        listener: (context, state) {
          if (state is PetsErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          if (state is PetsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is PetsLoadedState) {
            return ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                itemBuilder: (context, index) {
                  var pet = state.petEntity[index];
                  return PetCard(pet: pet);
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemCount: state.petEntity.length);
          }
          return Container();
        },
      ),
    );
  }
}
