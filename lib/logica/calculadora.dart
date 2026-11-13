import '../modelos/cuenta.dart';

double calcularPropina(Cuenta cuenta) {
  return cuenta.monto * (cuenta.propina / 100);
}

double calcularTotal(Cuenta cuenta) {
  return cuenta.monto + calcularPropina(cuenta);
}

double calcularPorPersona(Cuenta cuenta) {
  if (cuenta.personas <= 0) {
    return 0.0;
  }
  return calcularTotal(cuenta) / cuenta.personas;
}

String formatearMonto(double monto) {
  return 'Bs ${monto.toStringAsFixed(2)}';
}

Cuenta cambiarPersonas(Cuenta cuenta, int cambio) {
  int nuevasPersonas = cuenta.personas + cambio;
  if (nuevasPersonas < 1) {
    nuevasPersonas = 1;
  }
  return cuenta.copyWith(personas: nuevasPersonas);
}
