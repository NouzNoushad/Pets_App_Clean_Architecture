import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/core/utils/colors.dart';
import 'package:pet_app/core/utils/extensions.dart';
import 'package:pet_app/presentation/bloc/favorite_bloc/favorite_bloc.dart';

class FavoritePetsScreen extends StatefulWidget {
  const FavoritePetsScreen({super.key});

  @override
  State<FavoritePetsScreen> createState() => _FavoritePetsScreenState();
}

class _FavoritePetsScreenState extends State<FavoritePetsScreen> {
  @override
  void initState() {
    context.read<FavoriteBloc>().add(const FavoriteLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      appBar: AppBar(
        title: const Text('Favorite Pets'),
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          if (state is FavoriteLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is FavoriteLoadedState) {
            return ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                itemBuilder: (context, index) {
                  var favorite = state.favorites[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1.5, color: ColorPicker.gradient1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: context.height * 0.3,
                            width: context.width,
                            child: favorite.image != ""
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      favorite.image.toString(),
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                : Container(color: ColorPicker.lightColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            favorite.name.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemCount: state.favorites.length);
          }
          return Container();
        },
      ),
    );
  }
}
