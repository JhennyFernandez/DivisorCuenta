class Cuenta {
  final double monto;
  final int personas;
  final int propina;

  const Cuenta({
    this.monto = 0.0,
    this.personas = 2,
    this.propina = 10,
  });

  Cuenta copyWith({
    double? monto,
    int? personas,
    int? propina,
  }) {
    return Cuenta(
      monto: monto ?? this.monto,
      personas: personas ?? this.personas,
      propina: propina ?? this.propina,
    );
  }
}
