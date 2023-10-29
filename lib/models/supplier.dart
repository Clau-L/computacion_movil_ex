import 'dart:convert';

class Supplier {
    List<ProveedoresListado> proveedoresListado;

    Supplier({
        required this.proveedoresListado,
    });

    Supplier copyWith({
        List<ProveedoresListado>? proveedoresListado,
    }) => 
        Supplier(
            proveedoresListado: proveedoresListado ?? this.proveedoresListado,
        );

    factory Supplier.fromRawJson(String str) => Supplier.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
        proveedoresListado: List<ProveedoresListado>.from(json["Proveedores Listado"].map((x) => ProveedoresListado.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Proveedores Listado": List<dynamic>.from(proveedoresListado.map((x) => x.toJson())),
    };
}

class ProveedoresListado {
    int providerid;
    String providerName;
    String providerLastName;
    String providerMail;
    String providerState;

    ProveedoresListado({
        required this.providerid,
        required this.providerName,
        required this.providerLastName,
        required this.providerMail,
        required this.providerState,
    });

    ProveedoresListado copyWith({
        int? providerid,
        String? providerName,
        String? providerLastName,
        String? providerMail,
        String? providerState,
    }) => 
        ProveedoresListado(
            providerid: providerid ?? this.providerid,
            providerName: providerName ?? this.providerName,
            providerLastName: providerLastName ?? this.providerLastName,
            providerMail: providerMail ?? this.providerMail,
            providerState: providerState ?? this.providerState,
        );

    factory ProveedoresListado.fromRawJson(String str) => ProveedoresListado.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProveedoresListado.fromJson(Map<String, dynamic> json) => ProveedoresListado(
        providerid: json["providerid"],
        providerName: json["provider_name"],
        providerLastName: json["provider_last_name"],
        providerMail: json["provider_mail"],
        providerState: json["provider_state"],
    );

    Map<String, dynamic> toJson() => {
        "providerid": providerid,
        "provider_name": providerName,
        "provider_last_name": providerLastName,
        "provider_mail": providerMail,
        "provider_state": providerState,
    };
}
