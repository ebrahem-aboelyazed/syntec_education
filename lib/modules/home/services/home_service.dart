class HomeService {
  HomeService._();

  static final HomeService _homeService = HomeService._();

  static HomeService get instance => _homeService;
}
