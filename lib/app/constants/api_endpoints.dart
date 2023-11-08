class APIs {
  APIs._();
  // http://167.71.226.75:8080/api/v1
  //mainBase url

  static const String mainBaseUrl = "http://training.mochta.gov.bd";
  // static const String mainBaseUrl = "http://192.168.10.188:8080";
  static const String baseUrl = "$mainBaseUrl/api/v1";

  static const String testBaseUrl = "http://192.168.10.146:2001/api/v1";
  // http://192.168.10.117:5000/
  // static const String baseUrl = "http://192.168.10.117:8080/api/v1";

  //http://167.71.226.75:8080/api/v1/auth/login
  static const String loginAPI = "$baseUrl/auth/login";

  //http://167.71.226.75:8080/api/v1/auth/register
  static const String registerAPI = "$baseUrl/auth/register";

  static const String districtsDataAPI = "$baseUrl/common/districts";

  // http://167.71.226.75:8080/api/v1/common/ethnics
  static const String ethnicsDataAPI = "$baseUrl/common/ethnics";

  // http://167.71.226.75:8080/api/v1/common/ward
  static const String wardDataAPI = "$baseUrl/common/ward";

  // http://167.71.226.75:8080/api/v1/common/fiscal
  static const String fiscalDataAPI = "$baseUrl/common/fiscal";

  // http://167.71.226.75:8080/api/v1/admin/all-offices
  static const String getAllOfficesDataAPI = "$baseUrl/admin/all-offices";

  // http://192.168.10.117:8080/api/v1/common/cms_notice/active
  static const String getAllNotices = "$baseUrl/common/cms_notice/active";

  //http://167.71.226.75:8080/api/v1/scheme/category
  static const String getCategoryAPI = "$baseUrl/scheme/category";

  static const String getUpdateUserDataAPI = "$baseUrl/admin/users/profile/";

  // http://167.71.226.75:8080/api/v1/common/fiscal
  //http://167.71.226.75:8080/api/v1/admin/users/profile/2
  static const String updateUserDataAPI = "$baseUrl/admin/users/profile/";

  //   http://167.71.226.75:8080/api/v1/scheme/projects/landing/page
  static const String getSchemeAPI = "$baseUrl/scheme/projects/landing/page";

  //{{baseURL}}/scheme/projects/report/4
  static const String getSchemeByID = "$baseUrl/scheme/projects/report";
  //getFiscalyear
  //http://167.71.226.75:8080/api/v1/common/fiscal/12
  static const String getFiscalYearByID = "$baseUrl/common/fiscal";
  //getFiscalyear
  //{{baseURL}}/scheme/projects/signature/23
  static const String getSignatureByID = "$baseUrl/scheme/projects/signature";
  //{{baseURL}}/auth/users/signature
  static const String getbySignaturesByPostID = "$baseUrl/auth/users/signature";
  //http://167.71.226.75:8080/api/v1/scheme/projects/fiscal-year/1
  static const String getFiscalForSchemeByID =
      "$baseUrl/scheme/projects/fiscal-year";
  //http://167.71.226.75:8080/api/v1/scheme/projects/fiscal-year/1
  static const String getFiscalYearWiseProgressReportByID =
      "$baseUrl/scheme/projects/fiscal-year-wise/progress-report";

  //http://167.71.226.75:8080/api/v1/scheme/applications?user_id=
  static const String getSchemeApplicationsAPIWithUser =
      "$baseUrl/scheme/applications?user_id=";

  //http://167.71.226.75:8080/api/v1/scheme/applications
  static const String postSchemeApplicationsAPI =
      "$baseUrl/scheme/applications";
  // {{baseURL}}/common/service
  static const String postSchemeFeedBack = "$baseUrl/common/service";
  static const String postScholarshipApplication =
      "$baseUrl/scholarship/application";
  //http://167.71.226.75:8080/api/v1/scheme/applications/97
  static const String getSchemeApplicationByID = "$baseUrl/scheme/applications";

  // {{base_url}}/scholarship/application/all/2?page=1
  static const String getAppliedScholarshipApplication =
      "$baseUrl/scholarship/application/all";
  // http://167.71.226.75:8080/api/v1/scholarship/application/19?status=show
  static const String getAppliedScholarshipApplicationDetail =
      "$baseUrl/scholarship/application/";

  // {{base_url}}/scholarship/config/circulars?q=configsLoad&user_id=2&office=4
  //{{baseURL}}/scholarship/config/circulars?calling_from=lending
  static const String getScholarshipAllCircularsForLanding =
      "$baseUrl/scholarship/config/circulars?calling_from=lending";

  // Training Circular List
  static const String getTrainingCircularList =
      "$baseUrl/training/schedule/approved/list/";

  // Training Applications List
  // http://167.71.226.75:8080/api/v1/training/application/all/
  static const String getTrainingApplicationsList =
      "$baseUrl/training/application/all";

  // New Training Application
  // {{baseURL}}/training/application
  static const String postNewTrainingApplications =
      "$baseUrl/training/application/";

  // Upload Multiple Files
  // http://167.71.226.75:8080/api/v1/upload/multiple
  static const String uploadFiles = "$baseUrl/upload/multiple/";

  // Upload Single File
  // http://167.71.226.75:8080/api/v1/upload/single
  static const String uploadFile = "$baseUrl/upload/single";

  // {{baseURL}}/license/config/approve?district=all
  static const String getAllLicensesForDashBoard =
      "$baseUrl/license/config/approve";

  // {{baseURL}}/license/config/approve?district=all
  static const String getSingleLicense = "$baseUrl/license/config";

  // {{baseURL}}/license/application/10
  static const String getSingleLicenseCircularID =
      "$baseUrl/license/application";

  // http://167.71.226.75:8080/api/v1/license/application/wise
  static const String getAllLicenseListByUser =
      "$baseUrl/license/application/wise";
  // {{baseURL}}/license/application?step=1
  static const String postLicenseApplication = "$baseUrl/license/application";

  // {{baseURL}}/license/application/10
  static const String getSingleLicenseApplication =
      "$baseUrl/license/application";
  // http://167.71.226.75:8080/api/v1/admin/public-user/9
  static const String getApprovedBy = "$baseUrl/admin/public-user";

  static const String postNgoData = "$baseUrl/ngo/rating";
}
