import 'package:bnext/feature/shared/data/object/object.dart';
import 'package:bnext/feature/shared/domain/domain.dart';

extension TokenObjectExtension on TokenObject {
  TokenEntity toEntity() => TokenEntity(
        accessToken: accessToken,
        accessTokenExpiresAt: accessTokenExpiresAt,
      );
}

extension TokenEntityExtension on TokenEntity {
  TokenObject toObject() => TokenObject(
        accessToken: accessToken,
        accessTokenExpiresAt: accessTokenExpiresAt,
      );
}
