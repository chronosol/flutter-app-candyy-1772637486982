import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/candy_board.dart';
import '../../domain/repositories/candy_repository.dart';
import '../../data/repositories/candy_repository_impl.dart';

class GameController extends AsyncNotifier<CandyBoard> {
  @override
  Future<CandyBoard> build() async {
    final repository = CandyRepositoryImpl();
    return await repository.fetchBoard();
  }
}

final gameControllerProvider =
    AsyncNotifierProvider<GameController, CandyBoard>(GameController.new);
