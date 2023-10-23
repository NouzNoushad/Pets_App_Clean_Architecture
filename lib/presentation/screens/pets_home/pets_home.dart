import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/presentation/bloc/pets_bloc/pets_bloc.dart';

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
                itemBuilder: (context, index) {
                  var pet = state.petModel[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(pet.name.toString()),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: state.petModel.length);
          }
          return Container();
        },
      ),
    );
  }
}
