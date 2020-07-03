
import 'package:mongo_dart/mongo_dart.dart';

import 'logger/log.dart';

Db db = Db('mongodb://localhost:27017/BD');

void main() async {
  /*
  await db.open();

  var coll = db.collection('corona');
  List l = await coll.find(where.eq('Country', 'USA')).toList();
  Map p = l[0];
  print(p['Country']);*/

  var mp = {};
  mp['test'] = 'test';
  mp['map'] = {'map': 'map'};
  mp['bool'] = true;
  mp['int'] = 1;
  mp['double'] = 1.0;

//  L.json(mp);
  L.header('header');
  L.success('success');
  L.error('error');
  L.warning('warning');
  L.json(mp, track: true);
  L.log('log', track: false);
  L.map(mp, track: false);
}
