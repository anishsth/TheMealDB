//
//  NetworkService.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import Foundation
import Combine

enum NetworkingError: Error {
    case invalidURL
    case invalidData
    case invalidResponse
    case message(_ error: Error?)
}

let jsonDecoder: JSONDecoder = {
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return decoder
}()

class NetworkService {
    static let session = NetworkService()
    
    final let baseURL = "https://themealdb.com"
    
    private init() { }
    
    //MARK: Fetches data to retrieve Desserts
    func getItemData(completion: @escaping (Result<[Meal], NetworkingError>) -> Void) {
        
        guard let url = URL(string: "\(baseURL)/api/json/v1/1/filter.php?c=Dessert") else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            guard let data else {
                completion(.failure(.invalidData))
                return
            }
            print(String(data: data, encoding: .utf8) as Any)
            
            do {
                let response = try JSONDecoder().decode(ContentItem.self, from: data)
                completion(.success(response.meals))
                print("---------- \(response)")
            } catch(let error) {
                completion(.failure(.message(error)))
                print("Error!!! \(error)")
            }
            
        }.resume()
        
    }
    
    //MARK: Fetches data to retrieve recipe based in mealId
    func getFoodDetails(_ mealId: String, completion: @escaping (Result<[Meal], NetworkingError>) -> Void) {
        
        guard let url = URL(string: "\(baseURL)/api/json/v1/1/lookup.php?i=\(mealId)") else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        // we can use urlComponents.queryItems -> Query params as well
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            guard let data else {
                completion(.failure(.invalidData))
                return
            }
            print(String(data: data, encoding: .utf8) as Any)
            
            do {
                let response = try JSONDecoder().decode(ContentItem.self, from: data)
                completion(.success(response.meals))
                print("---------- \(response)")
            } catch(let error) {
                completion(.failure(.message(error)))
                print("Error!!! \(error)")
            }
            
        }.resume()
        
    }
    
    //MARK: - Using Combine
    func fetchItems() -> some Publisher<ContentItem, Error> {
        
        guard let url = URL(string: "\(baseURL)/api/json/v1/1/filter.php?c=Dessert") else {
            return Fail(error: NetworkingError.invalidURL).eraseToAnyPublisher()
        }
                
        return URLSession
            .shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: ContentItem.self, decoder: jsonDecoder)
            .eraseToAnyPublisher()
    }
}
