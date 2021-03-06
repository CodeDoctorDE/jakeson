import 'package:evervent_server/evervent_server.dart';

import 'group.dart';
import 'user.dart';

class GroupUser extends ManagedObject<_GroupUser> implements _GroupUser {}

class _GroupUser {
  @primaryKey
  int id;

  @Relate(#groupUsers)
  Group group;

  @Relate(#groupUsers)
  User user;
}
