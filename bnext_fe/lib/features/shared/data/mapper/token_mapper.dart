import 'package:bnext_fe/features/shared/data/data.dart';
import 'package:bnext_fe/features/shared/domain/entities/entities.dart';

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
