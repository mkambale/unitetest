//
//  NetworkService.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import Foundation

class NetworkService {
    // 1
    let defaultSession = URLSession(configuration: .default)
    // 2
    var dataTask: URLSessionDataTask?
    
    static let sharedInstance =  NetworkService()

    func getRequest(url: String, completion: @escaping (_ result:AnyObject?,_ errorCode:Int?) -> Void) {
        // 1
        dataTask?.cancel()
        // 2
        if var urlComponents = URLComponents(string: url) {
            // 3
            guard let url = urlComponents.url else { return }
            // 4
            dataTask = defaultSession.dataTask(with: url) { data, response, error in
                defer { self.dataTask = nil }
                // 5
                if let error = error {
                    print(error)
                    completion(nil, 400)
                } else if let data = data,
                    let response = response as? HTTPURLResponse,
                    response.statusCode == 200 {
                    do {
//                    do {
//                        let resp = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
//
//                        guard let array = resp!["results"] as? [Any] else {
//                            //errorMessage += "Dictionary does not contain results key\n"
//                            return
//                        }
//
//                    } catch let parseError as NSError {
//                       // errorMessage += "JSONSerialization error: \(parseError.localizedDescription)\n"
//                        return
//                    }
                    
                    if let j = try JSONSerialization.jsonObject(with: data, options: [.allowFragments]) as? [String: Any] {
                        completion(j as AnyObject, 0)
                    } else {
                    }
                    } catch let error as NSError {
                        print(error)
                        completion(nil, 1)
                    }
                }
            }
            // 7
            dataTask?.resume()
        }
    }
}
