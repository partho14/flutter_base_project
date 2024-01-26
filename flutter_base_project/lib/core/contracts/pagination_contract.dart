abstract class PaginationContract {
  /// first time load
  void initialLoad();
  /// load more when comes to page end
  void loadMore();
}