import 'package:bnext/feature/shared/data/object/token_object.dart';

import '../../../shared/domain/entities/token_entity.dart';
import '../models/token_model.dart';

extension TokenModelExtension on TokenModel {
  TokenEntity toEntity() => TokenEntity(
        accessToken: accessToken,
        accessTokenExpiresAt: accessTokenExpiresAt,
      );
  TokenObject toObject() => TokenObject(
        accessToken: accessToken,
        accessTokenExpiresAt: accessTokenExpiresAt,
      );
}

