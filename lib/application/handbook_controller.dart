import 'package:epilepsy/models/faq.dart';
import 'package:epilepsy/models/handbook.dart';
import 'package:epilepsy/models/models.dart';
import 'package:epilepsy/models/pages.dart';
import 'package:epilepsy/services/handbook_service.dart';
import 'package:get/get.dart';

class ObservableData<T> {
  var isLoading = true.obs;
  var data = <T>[].obs;
  var isError = false.obs;
}

class HandBookController extends GetxController {
  var seizureTypes = ObservableData<HandbookModel>();
  var seizureReasons = ObservableData<HandbookModel>();
  var seizurePlaces = ObservableData<HandbookModel>();
  var seizureActivities = ObservableData<HandbookModel>();
  var faq = ObservableData<FAQModel>();
  var news = ObservableData<News>();
  var contacts = ContactsModel().obs;
  var authorPage = AuthorsPageModel().obs;
  var aboutPage = AboutPageModel().obs;

  Future<void> getHandBooks() async {
    try {
      getSeizureTypes();
      getSeizureActivities();
      getSeizurePlaces();
      getSeizureReasons();
    } catch (e) {
      throw Exception(e);
    } finally {}
  }

  Future<void> getSeizureTypes() async {
    try {
      seizureTypes = ObservableData<HandbookModel>();
      final data = await HandbookService.getSeizureTypes();
      seizureTypes.data(data.data);
    } catch (e) {
      seizureTypes.isError(true);
      throw Exception(e);
    } finally {
      seizureTypes.isLoading(false);
    }
  }

  Future<void> getSeizureReasons() async {
    try {
      seizureReasons = ObservableData<HandbookModel>();
      final data = await HandbookService.getSeizureReasons();
      seizureReasons.data(data.data);
    } catch (e) {
      seizureReasons.isError(true);
      throw Exception(e);
    } finally {
      seizureReasons.isLoading(false);
    }
  }

  Future<void> getSeizurePlaces() async {
    try {
      seizurePlaces = ObservableData<HandbookModel>();
      final data = await HandbookService.getSeizurePlaces();
      seizurePlaces.data(data.data);
    } catch (e) {
      seizurePlaces.isError(true);
      throw Exception(e);
    } finally {
      seizurePlaces.isLoading(false);
    }
  }

  Future<void> getSeizureActivities() async {
    try {
      seizureActivities = ObservableData<HandbookModel>();
      final data = await HandbookService.getSeizureActivities();
      seizureActivities.data(data.data);
    } catch (e) {
      seizureActivities.isError(true);
      throw Exception(e);
    } finally {
      seizureActivities.isLoading(false);
    }
  }

  Future<void> getFAQ() async {
    try {
      faq = ObservableData<FAQModel>();
      final data = await HandbookService.getFAQ();
      faq.data(data.data);
    } catch (e) {
      faq.isError(true);
      throw Exception(e);
    } finally {
      faq.isLoading(false);
    }
  }

  Future<void> getNews() async {
    try {
      news = ObservableData<News>();
      final data = await HandbookService.getNews();
      news.data(data.data);
    } catch (e) {
      news.isError(true);
      throw Exception(e);
    } finally {
      news.isLoading(false);
    }
  }

  Future<void> getContacts() async {
    try {
      final data = await HandbookService.getContacts();
      contacts(data);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> getPages() async {
    try {
      final authorsPageR = await HandbookService.getAuthorsPage();
      final aboutPageR = await HandbookService.getAboutPage();
      aboutPage(aboutPageR);
      authorPage(authorsPageR);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void onInit() {
    getContacts();
    super.onInit();
  }
}
