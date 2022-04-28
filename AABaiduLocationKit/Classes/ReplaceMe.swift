//
//  AALocationManager.swift
//  AALocalBase
//
//  Created by wang dean on 2022/4/26.
//

public enum AALocationPurpose {
    case mainTopLeft   // 首页顶部左侧用户的选择
    case addressPicker // 地址选择
}

public class AALocationManager: NSObject {

    public let shared: AALocationManager = AALocationManager()
//    private var bmkManager: BMKMapManager!
    private var bmkLocationManager: BMKLocationManager!
    //当前定位的目的
    private var curPurpose: AALocationPurpose = .mainTopLeft
    //当前是否正在等待定位
    private var isWaiting: Bool = false

    private override init(){
        super.init()
    }

    private func mapInit(){

    }
}

extension AALocationManager {


    /// 开始定位
    /// - Parameter for: 此次定位的目的
    public func startLocation(for purpose: AALocationPurpose){
        curPurpose = purpose
        bmkLocationManager.startUpdatingLocation()
    }

    //结束定位
    public func stopLocation(){


    }

    /// 获取用户的定位权限,如果当前定位权限还未决定，会主动触发权限弹框
    /// - Returns: 是否定位成功
    public func getLocationPermission() -> Bool {
        let status = bmkLocationManager.authorizationStatus()
        var authord = false
        switch status {
        case .notDetermined:
            authord = false
        case .restricted:
            authord = false
        case .denied:
            authord = false
        case .authorizedAlways:
            authord = true
        case .authorizedWhenInUse:
            authord = true
        case .authorized:
            authord = true
        default:
            authord = false
        }
        return authord
    }
}

//extension AALocationManager: BMKGeneralDelegate {
//
//    public func onGetNetworkState(_ iError: Int32) {
//
//        print("~~ onGetNetworkState : \(iError)")
//    }
//
//    public func onGetPermissionState(_ iError: Int32) {
//
//        print("~~ onGetPermissionState : \(iError)")
//    }
//}
//
//// 百度定位回调代理
//extension AALocationManager: BMKLocationAuthDelegate {
//
//    public func onCheckPermissionState(_ iError: BMKLocationAuthErrorCode) {
//
//        switch iError {
//        case .unknown:
//            print("~~ 百度定位未知错误")
//        case .success:
//            print("~~ 百度定位成功")
//        case .networkFailed:
//            print("~~ 百度定位网络失败")
//        case .failed:
//            print("~~ 百度定位错误：key鉴权失败")
//        default:
//            print("~~ 百度定位xxx")
//        }
//    }
//}
//
////定位权限改变的回调
//extension AALocationManager: CLLocationManagerDelegate {
//
//    public func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
//
//
//    }
//}
