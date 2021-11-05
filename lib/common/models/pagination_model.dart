class PaginationModel {
  static const int _defaultInitialPage = 1;
  static const int _defaultItemPerPage = 50;

  final int page;
  final int itemPerPage;

  PaginationModel(this.page, this.itemPerPage);

  factory PaginationModel.initialPage() =>
      PaginationModel(_defaultInitialPage, _defaultItemPerPage);

  PaginationModel copyWith({
    int? page,
    int? itemPerPage,
  }) =>
      PaginationModel(
        page ?? this.page,
        itemPerPage ?? this.itemPerPage,
      );

  bool get isInitialPage => page == _defaultInitialPage;

  @override
  bool operator ==(Object other) =>
      other is PaginationModel && other.hashCode == hashCode;

  @override
  int get hashCode => page;
}
