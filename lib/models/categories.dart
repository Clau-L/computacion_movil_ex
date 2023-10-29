import 'dart:convert';

class Categories {
    List<ListadoCategoria> listadoCategorias;

    Categories({
        required this.listadoCategorias,
    });

    factory Categories.fromRawJson(String str) => Categories.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        listadoCategorias: List<ListadoCategoria>.from(json["Listado Categorias"].map((x) => ListadoCategoria.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Listado Categorias": List<dynamic>.from(listadoCategorias.map((x) => x.toJson())),
    };
}

class ListadoCategoria {
    int categoryId;
    String categoryName;
    String categoryState;

    ListadoCategoria({
        required this.categoryId,
        required this.categoryName,
        required this.categoryState,
    });

    factory ListadoCategoria.fromRawJson(String str) => ListadoCategoria.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ListadoCategoria.fromJson(Map<String, dynamic> json) => ListadoCategoria(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryState: json["category_state"],
    );

    Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_state": categoryState,
    };
    ListadoCategoria copy() => ListadoCategoria(
      categoryId: categoryId,
      categoryName: categoryName,
      categoryState: categoryState,
    );
}
