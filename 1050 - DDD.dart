import 'dart:io';

main(List<String> args)
{
  var ddd = {
    61: 'Brasilia',
    71: 'Salvador',
    11: 'Sao Paulo',
    21: 'Rio de Janeiro',
    32: 'Juiz de Fora',
    19: 'Campinas',
    27: 'Vitoria',
    31: 'Belo Horizonte'
  };

  var n = int.parse(stdin.readLineSync());

  if (ddd.containsKey(n))
    print(ddd[n]);
  else
    print("DDD nao cadastrado");
}