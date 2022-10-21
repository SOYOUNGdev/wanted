var CLIENT_ID = AIzaSyBRCIhKZ89hcmAkc3Mx1a4SdWzBClD1Gh8; // <-- 발급받은 Client ID 입력 

 // Set authorized scope.
 var SCOPES = ['https://www.googleapis.com/auth/analytics.readonly'];

 function authorize() {
     // Handles the authorization flow.
     // `immediate` should be false when invoked from the button click.
     // var useImmdiate = event ? false : true;
     var authData = {
         client_id: CLIENT_ID,
         scope: SCOPES,
         immediate: false
     };

     gapi.auth.authorize(authData, function (response) {
         var authButton = document.getElementById('auth-button');
         if (response.error) {
             authButton.hidden = false;
         }
         else {
             authButton.hidden = true;
             queryAccounts();
         }
     });
 }

 function queryAccounts() {
     // Load the Google Analytics client library.
     gapi.client.load('analytics', 'v3').then(function () {

         // Get a list of all Google Analytics accounts for this user
         gapi.client.analytics.management.accounts.list().then(handleAccounts);
     });
 }

 function handleAccounts(response) {
     // Handles the response from the accounts list method.
     if (response.result.items && response.result.items.length) {
         // Get the first Google Analytics account.
         var firstAccountId = response.result.items[0].id;

         // Query for properties.
         queryProperties(firstAccountId);
     } else {
         console.log('No accounts found for this user.');
     }
 }

 function queryProperties(accountId) {
     // Get a list of all the properties for the account.
     gapi.client.analytics.management.webproperties.list(
         { 'accountId': accountId })
       .then(handleProperties)
       .then(null, function (err) {
           // Log any errors.
           console.log(err);
       });
 }

 function handleProperties(response) {
     // Handles the response from the webproperties list method.
     if (response.result.items && response.result.items.length) {

         // Get the first Google Analytics account
         var firstAccountId = response.result.items[0].accountId;

         // Get the first property ID
         var firstPropertyId = response.result.items[0].id;

         // Query for Views (Profiles).
         queryProfiles(firstAccountId, firstPropertyId);
     } else {
         console.log('No properties found for this user.');
     }
 }

 function queryProfiles(accountId, propertyId) {
     // Get a list of all Views (Profiles) for the first property
     // of the first Account.
     gapi.client.analytics.management.profiles.list({
         'accountId': accountId,
         'webPropertyId': propertyId
     })
     .then(handleProfiles)
     .then(null, function (err) {
         // Log any errors.
         console.log(err);
     });
 }

 function handleProfiles(response) {
     // Handles the response from the profiles list method.
     if (response.result.items && response.result.items.length) {
         // Get the first View (Profile) ID.
         var firstProfileId = response.result.items[0].id;
         // Query the Core Reporting API.
         queryCoreReportingApi(firstProfileId);

     } else {
         console.log('No views (profiles) found for this user.');
     }
 }

 function queryCoreReportingApi(profileId) {
     // Query the Core Reporting API for the number sessions for
     // the past seven days.
     gapi.client.analytics.data.ga.get({
         'ids': 'ga:' + profileId,
         // ## 조회 시작일자
         'start-date': '2022-10-20',
         // ## 조회 마지막일자
         'end-date': '2022-10-20',
         // ##  -- 사용자, 신규 방문자, 세션, 이탈률, 평균세션시간(초), 페이지뷰 수, 세션당 페이지수, 사용자당 세션 수 
         'metrics': 'ga:users,ga:newUsers,ga:sessions,ga:bounceRate,ga:avgSessionDuration,ga:pageviews,ga:pageviewsPerSession,ga:sessionsPerUser',
         // ##  -- 소스 , 매체
         'dimensions': 'ga:source,ga:medium'
     })
     .then(function (response) {
         var formattedJson = JSON.stringify(response.result, null, 2);
         document.getElementById('query-output').value = formattedJson;
     })
     .then(null, function (err) {
         // Log any errors.
         console.log(err);
     });
 }