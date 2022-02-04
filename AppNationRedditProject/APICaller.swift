//
//  APICaller.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

import Foundation



protocol APICallerProtocol {
    func fetchReddit(url: URL, completion: @escaping ([Child]?) -> ())
    
}



struct APICaller: APICallerProtocol {
    func fetchReddit(url: URL, completion: @escaping ([Child]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httResponse = response as? HTTPURLResponse, httResponse.statusCode == 200 else {
                print("HTTP ERROR!")
                return
            }
            if let error = error {
                print(String(describing: error))
                completion(nil)
            } else if let data = data {
                do {
                    let redditJson = try JSONDecoder().decode(Reddit.self, from: data)
                    completion(redditJson.data?.children)
                } catch {
                    //Error
                    print("catch")
                    print(String(describing: error))

                }
            }
        }.resume()
    }
}
