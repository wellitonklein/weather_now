import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main/main.dart';
import '../bloc/bloc.dart';

class SearchCityPage extends StatefulWidget {
  const SearchCityPage({super.key});

  @override
  State<SearchCityPage> createState() => _SearchCityPageState();
}

class _SearchCityPageState extends State<SearchCityPage> {
  late final CityBloc cityBloc;

  @override
  void initState() {
    cityBloc = cityBlocFactory();
    super.initState();
  }

  @override
  void dispose() {
    cityBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cityBloc,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Weather Now',
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                const SearchFieldWidget(),
                const SizedBox(height: 20),
                const ConsultButtonWidget(),
                const SizedBox(height: 20),
                const CityListWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({super.key});

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  late final TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cityBloc = context.read<CityBloc>();

    return BlocBuilder<CityBloc, CityState>(
      bloc: cityBloc,
      buildWhen: (previous, current) {
        return (previous.isLoading != current.isLoading) || current.searchField.isEmpty;
      },
      builder: (context, state) {
        if (state.searchField.isEmpty) {
          searchController.text = '';
        }

        return TextField(
          readOnly: state.isLoading,
          controller: searchController,
          onChanged: (value) {
            cityBloc.add(CityEvent.searchChanged(value: value));
          },
          decoration: InputDecoration(
            hintText: 'Consulta uma cidade aqui',
            suffixIcon: IconButton(
              tooltip: 'Limpar consulta',
              icon: const Icon(Icons.close),
              onPressed: () {
                cityBloc.add(const CityEvent.searchCleaned());
              },
            ),
          ),
        );
      },
    );
  }
}

class ConsultButtonWidget extends StatelessWidget {
  const ConsultButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cityBloc = context.read<CityBloc>();

    return BlocBuilder<CityBloc, CityState>(
      bloc: cityBloc,
      buildWhen: (previous, current) {
        return previous.isLoading != current.isLoading;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const LinearProgressIndicator();
        }

        return FilledButton(
          child: const Text('Consultar'),
          onPressed: () {
            cityBloc.add(const CityEvent.searchConsulted());
          },
        );
      },
    );
  }
}

class CityListWidget extends StatelessWidget {
  const CityListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cityBloc = context.read<CityBloc>();

    return BlocConsumer<CityBloc, CityState>(
      bloc: cityBloc,
      listenWhen: (previous, current) {
        return current.failureOrSuccess.isSome();
      },
      listener: (context, state) {
        final isFailure = state.failureOrSuccess.fold(
          () => true,
          (leftOrRigth) => leftOrRigth.isLeft(),
        );

        final message = state.failureOrSuccess.fold(
          () => '',
          (leftOrRigth) => leftOrRigth.fold(dartz.id, (success) => success),
        );

        final primaryColor = Theme.of(context).colorScheme.primary;
        final failureColor = Theme.of(context).colorScheme.error;

        final snackBar = SnackBar(
          content: Text(
            message,
            style: const TextStyle(color: Colors.black87),
          ),
          backgroundColor: isFailure ? failureColor : primaryColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black87, width: 2),
            borderRadius: BorderRadius.circular(28),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 15,
          ),
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: 'Fechar',
            onPressed: () {},
            textColor: Colors.white,
            backgroundColor: Colors.black87,
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      buildWhen: (previous, current) {
        return (previous.isLoading != current.isLoading) || (previous.cities != current.cities);
      },
      builder: (context, state) {
        if (state.cities.isNotEmpty) {
          return Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: state.cities.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 5);
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        '/weather-detail',
                        arguments: state.cities[index],
                      );
                    },
                    tileColor: Theme.of(context).cardColor,
                    title: Text(
                      '${state.cities[index].name} - ${state.cities[index].state}',
                    ),
                  );
                },
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
