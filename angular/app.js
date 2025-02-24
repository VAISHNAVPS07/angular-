var app = angular.module("cardiologyApp", ["ngRoute"]);

// Configure Routes
app.config(function ($routeProvider) {
    $routeProvider
        .when("/login", {
            templateUrl: "views/login.html",
            controller: "LoginController"
        })
        .when("/home", {
            templateUrl: "views/home.html",
            controller: "HomeController"
        })
        .when("/fetal-entry", {
            templateUrl: "views/fetal_entry.html",
            controller: "FetalEntryController"
        })
        .when("/fetal-report", {
            templateUrl: "views/fetal_report.html",
            controller: "FetalReportController"
        })
        .when("/patient-entry", { // Add this new route
            templateUrl: "views/patient_entry.html",
            controller: "PatientEntryController"
        })
        .when("/patient-report", {
            templateUrl: "views/patient_report.html",
            controller: "PatientReportController"
        })

        .otherwise({
            redirectTo: "/login"
        });
});

// Authentication Controller for Navbar Visibility
app.controller("AuthController", function ($rootScope, $location) {
    $rootScope.isLoggedIn = sessionStorage.getItem("isLoggedIn") === "true";

    // Global Route Protection
    $rootScope.$on("$routeChangeStart", function (event, next) {
        if (!$rootScope.isLoggedIn && next.templateUrl !== "views/login.html") {
            $location.path("/login");
        }
    });

    // Logout Function
    $rootScope.logout = function () {
        sessionStorage.removeItem("isLoggedIn");
        $rootScope.isLoggedIn = false; 
        $location.path("/login");
    };
});

// Login Controller
app.controller("LoginController", function ($scope, $location, $rootScope) {
    $scope.user = { username: "", password: "" };

    $scope.login = function () {
        if ($scope.user.username && $scope.user.password) {
            sessionStorage.setItem("isLoggedIn", "true");
            $rootScope.isLoggedIn = true;
            $location.path("/home");
        } else {
            $scope.errorMessage = "Please enter both username and password.";
        }
    };
});

// Home Controller
app.controller("HomeController", function ($scope) {
    $scope.introText = "Echocardiography is the application of ultrasound in cardiac diagnosis. The new reporting system makes the database easier and helps to maintain a comprehensive reporting.";
    $scope.image1 = "images/cardiology_banner.jpg";
    $scope.procedures = [
        "Coronary Angiogram", "Renal Angiogram", "Cerebral Angio", "Peripheral Angio", "PTCA - Percutaneous Transluminal Coronary",
        "PPI - Permanent Pace Maker Implantation", "IVC Filter", "CATH", "TPI", "BMV", "Device Closure - ASD, VSD, PDA", "Closure of Fistula"
    ];
    $scope.surgeries = [
        "Off Pump Beating CABG", "Valve Replacement", "Cardiac Tumour", "Thoracic & Abdominal Aneurysm", "Aorta Femoral Bypass", "Bental Procedure"
    ];
});

// Fetal Entry Controller
app.controller("FetalEntryController", function ($scope) {
    $scope.fetal = {
        patientName: '',
        age: null,
        gender: '',
        entryDate: null,
        diagnosis: ''
    };

    $scope.wardOptions = [
        { label: 'Ward A', value: 'A' },
        { label: 'Ward B', value: 'B' },
        { label: 'Ward C', value: 'C' }
    ];

    $scope.opdOptions = [
        { label: 'OPD 1', value: '1' },
        { label: 'OPD 2', value: '2' },
        { label: 'OPD 3', value: '3' }
    ];

    $scope.submitFetalEntry = function () {
        console.log("Fetal Entry Form Submitted:", $scope.fetal);
        // TODO:  Replace with actual API call using $http
    };
});

// Fetal Report Controller (Corrected)
app.controller('FetalReportController', function($scope) {
    $scope.fetal = {
        hospitalNo: '',
        visitDate: null,
        patientName: '',
        age: null,
        sex: '',
        reportType: '', // 'General' or 'Detailed'
        diagnosis: ''
    };

    $scope.reportType = 'General'; // Default Report Type

    $scope.genderOptions = [
        { label: 'Male', value: 'Male' },
        { label: 'Female', value: 'Female' }
    ];



    $scope.submitFetalReport = function() {
        if ($scope.fetalReportForm.$valid) {
            console.log('Report Submitted:', $scope.fetal);
            // TODO:  Replace with actual API call using $http
            alert('Report Submitted Successfully!'); // Temporary
        } else {
            alert('Please fill in all required fields.');
        }
    };

    // Removed individual selectReportType functions
    //The single function is sufficient
    $scope.selectReportType = function(type) {
      $scope.reportType = type;
    };

    $scope.callPrint = function(strid) {
        var printContents = document.getElementById(strid).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    };

    $scope.viewPdf = function() {
        window.open('path/to/report.pdf', '_blank');
    };

    // Example Data (Remove or replace with actual data)
    $scope.hospitalLogo = 'path/to/hospital-logo.png';
    $scope.nabhLogo = 'path/to/nabh.png';
    $scope.tuvLogo = 'path/to/tuv.png';
    $scope.hospitalName = 'KASTURBA HOSPITAL, MANIPAL';
    $scope.departmentName = 'DEPARTMENT OF CARDIOLOGY';
});




// Define the controller for handling patient data
app.controller('PatientEntryController', function($scope) {
    // Initialize patient object
    $scope.patient = {
        diseaseID: '',
        hospitalNo: '',
        name: '',
        dob: '',
        sex: '',
        phoneNo: '',
        ipNo: '',
        dept: '',
        wardOpd: '',
        date: '',
        consultantDoctor: '',
        retrieveLastVisit: false,
        retrieveInfo: false,
        acousticQuality: ''
    };

    $scope.fetalChecked = false;
    $scope.otherChecked = false;

    // Submit function
    $scope.submitPatientEntry = function() {
        console.log("Patient Entry Submitted:", $scope.patient);
        $scope.resetForm();
    };

    // Reset form
    $scope.resetForm = function() {
        $scope.patient = {
            diseaseID: '',
            hospitalNo: '',
            name: '',
            dob: '',
            sex: '',
            phoneNo: '',
            ipNo: '',
            dept: '',
            wardOpd: '',
            date: '',
            consultantDoctor: '',
            retrieveLastVisit: false,
            retrieveInfo: false,
            acousticQuality: ''
        };
        $scope.fetalChecked = false;
        $scope.otherChecked = false;
    };

    // Toggle sections
    $scope.toggleFetal = function() {
        $scope.fetalChecked = !$scope.fetalChecked;
    };

    $scope.toggleOther = function(sectionId) {
        var section = document.getElementById(sectionId);
        if (section) {
            section.style.display = $scope.otherChecked ? "block" : "none";
        }
    };

    // Show popup
    $scope.showPopup = function(text) {
        document.getElementById('popupText').innerText = text;
        document.getElementById('popup').style.display = 'block';
    };

    // Hide popup
    $scope.hidePopup = function() {
        document.getElementById('popup').style.display = 'none';
    };

    // Close popup when clicking outside
    document.addEventListener('click', function(event) {
        if (event.target === document.getElementById('popup')) {
            $scope.$apply(function() {
                $scope.hidePopup();
            });
        }
    });

    // Close popup when clicking the close button
    document.addEventListener('click', function(event) {
        if (event.target.classList.contains('close')) {
            $scope.$apply(function() {
                $scope.hidePopup();
            });
        }
    });
});


app.controller("PatientReportController", function ($scope) {
    $scope.report = {
        hospitalNo: '',
        patientName: '',
        age: null,
        gender: '',
        reportDate: null,
        diagnosis: '',
        ecgFindings: '', // Example field
        echoFindings: '' // Example field
        // Add other relevant report fields here
    };

    // Sample data for dropdowns (replace with actual data)
    $scope.genderOptions = [
        { label: 'Male', value: 'Male' },
        { label: 'Female', value: 'Female' }
    ];

    $scope.submitPatientReport = function () {
        // Handle the form submission logic here
        console.log("Patient Report Form Submitted:", $scope.report);
        // TODO: Replace this with your actual API call using $http
    };
});

