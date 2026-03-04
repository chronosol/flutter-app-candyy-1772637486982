import '../entities/candy_board.dart';

abstract class CandyRepository {
  Future<CandyBoard> fetchBoard();
}
