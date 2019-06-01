import 'dart:io';
import 'dart:math';

main(List<String> args)
{
	var input = stdin.readLineSync().split(' ').map(double.parse).toList();

  var res = baskara(input[0], input[1], input[2]);

  if (res == null)
  {
    print("Impossivel calcular");
    return;
  }

	print("R1 = ${ res['R1'].toStringAsFixed(5) }");
	print("R2 = ${ res['R2'].toStringAsFixed(5) }");
}

baskara(double a, double b, double c)
{
  if (a == 0)
    return null;

  var delta = b*b - (4*a*c);

  if (delta < 0)
    return null;

	var rdelta = sqrt(delta);

	return { 'R1': (-b+rdelta)/(2*a), 'R2': (-b-rdelta)/(2*a) };
}
