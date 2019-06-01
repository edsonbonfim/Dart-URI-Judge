import 'dart:io';

main(List<String> args)
{
	double raio = double.parse(stdin.readLineSync());
	print("A=${ (3.14159*raio*raio).toStringAsFixed(4) }");
}
