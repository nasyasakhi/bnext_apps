import 'package:bnext/feature/shared/data/object/object.dart';
import 'package:bnext/feature/shared/domain/domain.dart';


extension TokenObjectExtension on TokenObject {
  TokenEntity toEntity() => TokenEntity(
        accessToken: token,
        accessTokenExpiresAt: tokenExpiresAt,
      );
}

extension TokenEntityExtension on TokenEntity {
  TokenObject toObject() => TokenObject(
        token: accessToken,
        tokenExpiresAt: accessTokenExpiresAt,
      );
}
