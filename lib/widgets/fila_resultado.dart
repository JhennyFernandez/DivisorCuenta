import 'package:flutter/material.dart';

class FilaResultado extends StatelessWidget {
  final String etiqueta;
  final String valor;
  final TextStyle? estiloEtiqueta;
  final TextStyle? estiloValor;

  const FilaResultado({
    super.key,
    required this.etiqueta,
    required this.valor,
    this.estiloEtiqueta,
    this.estiloValor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          etiqueta,
          style: estiloEtiqueta ??
              const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                letterSpacing: 0.5,
              ),
        ),
        Text(
          valor,
          style: estiloValor ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
        ),
      ],
    );
  }
}
