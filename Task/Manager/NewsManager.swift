//
//  NewsManager.swift
//  Task
//
//  Created by Mac on 8/25/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import Alamofire



class NewsManager: NSObject {
    
    static let sharedInstance = NewsManager()
    
    var manager = Alamofire.SessionManager()
    private override init()
    {
        super.init()
        
    }
    
    func fetchNews(url: String,completion: @escaping (Bool,[NewModel]) -> Void) {
        var responseModel : [NewModel]? 
        let configuration = URLSessionConfiguration.default
        manager = Alamofire.SessionManager(configuration: configuration)
        Alamofire
            .request(url, method: .get,
                     parameters:nil,
                     encoding: JSONEncoding(options: []),
                     headers: nil)
            .validate()
            .responseJSON {
                response in
                switch response.result {
                    case .success:
                        guard let data = response.data else {
                            completion(false,responseModel!)
                            return
                        }
                        do {
                            let jsonDecoder = JSONDecoder()
                            responseModel = try jsonDecoder.decode([NewModel].self, from: data)
                            completion(true,responseModel!)
                        } catch {
                            completion(false,responseModel!)
                            
                       }
                case .failure(_):
                            completion(false,responseModel!)
                        }
        }
    
     }

}
