import Foundation

@objc(BBPVersion) 
class BBPVersion : CDVPlugin {
    @objc(get:)
    func get(command: CDVInvokedUrlCommand){
        let infoDic = Bundle.main.infoDictionary
        let appVersion = infoDic?["CFBundleShortVersionString"]
        let appBuildVersion = infoDic?["CFBundleVersion"]
        let appName = infoDic?["CFBundleDisplayName"]
        let bundle_id = infoDic?["CFBundleIdentifier"]
        let json = ["version": appVersion! ,
                    "build": appBuildVersion! ,
                    "bundle_id": bundle_id!,
                    "appname": appName! ] as [String:Any]
        let pluginResult = CDVPluginResult (status: CDVCommandStatus_OK, messageAs: json)
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }
}
