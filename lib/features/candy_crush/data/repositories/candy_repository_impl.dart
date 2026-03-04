import 'dart:math';
import '../../domain/repositories/candy_repository.dart';
import '../../domain/entities/candy_board.dart';

class CandyRepositoryImpl implements CandyRepository {
  @override
  Future<CandyBoard> fetchBoard() async {
    final random = Random();
    final board = List.generate(8, (_) => List.generate(8, (_) => random.nextInt(5)));
    return CandyBoard(board: board);
  }
}
