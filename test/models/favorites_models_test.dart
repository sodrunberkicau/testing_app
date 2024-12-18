import 'package:test/test.dart';
import 'package:testing_app/models/favorites_model.dart';

void main() {
  group('Testing Favorites Model', () {
    // Arrange (Menginstansiasi object dari class FavoritesModel)
    FavoritesModel favorites = FavoritesModel();

    test(
      'A new item should be added',
      () {
        // arrange
        int number = 26;

        // act
        favorites.add(number);

        // assert
        expect(favorites.items.contains(number), true);
      },
    );

    test("An item should be remove", () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);

      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
