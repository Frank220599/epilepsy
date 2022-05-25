abstract class Api {
  static const baseUrl = 'http://api.cepi.xartcode.uz';

  // Authentication
  static const authUrl = '/auth';
  static const login = '$authUrl/login';
  static final loginVerify = (int userId) => '$authUrl/login-verify/$userId';
  static final timeout = (int userId) => '$authUrl/sms-timeout/$userId';
  static final smsResend = (int userId) => '$authUrl/sms-resend/$userId';
  static const changeNumber = '$authUrl/change-number';
  static final changeNumberVerify =
      (int userId) => '$authUrl/change-number-verify/$userId';
  static final logout = (int tokenId) => '$authUrl/logout/$tokenId';

  // Profile
  static const profileUrl = '/profile';
  static const getProfile = '$profileUrl/show';
  static const offer = '$profileUrl/offer';
  static const updateProfile = '$profileUrl/update';

  // Handbook
  static const handbookUrl = '/handbook';
  static const seizureTypes = '$handbookUrl/seizure-types';
  static const seizureReasons = '$handbookUrl/seizure-reasons';
  static const seizurePlaces = '$handbookUrl/seizure-places';
  static const seizureActivities = '$handbookUrl/seizure-activities';
  static const faq = '$handbookUrl/faq';
  static const news = '$handbookUrl/news';
  static const contacts = '$handbookUrl/contacts';
  static const aboutPage = '$handbookUrl/pages/about_page';
  static const authorsPage = '$handbookUrl/pages/authors_page';

  // tendencies
  static const statistics = '$baseUrl/tendencies';

  //Drugs
  static const drugUrl = '/drugs';
  static const drugList = '$drugUrl/index';
  static const drugStore = '$drugUrl/store';
  static final drugDetails = (int drugId) => '$drugUrl/details/$drugId';
  static final drugUpdate = (int drugId) => '$drugUrl/update/$drugId';
  static final drugDelete = (int drugId) => '$drugUrl/delete/$drugId';

  //EEG
  static const eegUrl = '/eeg';
  static const eegList = '$eegUrl/index';
  static const eegStore = '$eegUrl/store';
  static final eegDetails = (int eegId) => '$eegUrl/details/$eegId';
  static final eegUpdate = (int eegId) => '$eegUrl/update/$eegId';
  static final eegDelete = (int eegId) => '$eegUrl/delete/$eegId';

  //Seizure
  static const seizureUrl = '/seizures';
  static final seizureByDate = (String date) => '$seizureUrl/date/$date';
  static const seizureLastThree = '$seizureUrl/index';
  static const seizureStore = '$seizureUrl/store';
  static final seizureDetails =
      (int seizureId) => '$seizureUrl/details/$seizureId';
  static final seizureUpdate =
      (int seizureId) => '$seizureUrl/update/$seizureId';
  static final seizureDelete =
      (int seizureId) => '$seizureUrl/delete/$seizureId';

  // doctors
  static const doctors = '/doctors/index';

  // rates
  static const ratesUrl = '/rates';
  static final rates = (int seizureId) => '$ratesUrl/$seizureId';
  static const userRates = '$ratesUrl/index';

  // sessions
  static const sessionUrl = '/sessions';
  static const session = '$sessionUrl/index';
  static const createSession = '$sessionUrl/store';
  static final sessionMessages =
      (int sessionId) => '$sessionUrl/messages/$sessionId';
  static final sessionStatusUpdate =
      (int sessionId) => '$sessionUrl/update-status/$sessionId';
}
