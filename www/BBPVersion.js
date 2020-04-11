var exec = require('cordova/exec');

var PLUGIN_NAME = "BBPVersion"; 

var BBPVersion = function() {}; 

BBPVersion.get = function(onSuccess) {
    exec(onSuccess, null, PLUGIN_NAME, "get", []);
};

module.exports = BBPVersion;
