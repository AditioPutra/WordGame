//
//  WordsAPIService.swift
//  WordGame-Babbel
//
//  Created by Aditio Dharmaputra on 14/09/22.
//

import Foundation

class WordsAPIService {
    
    func getWordsData(fileName: String, completion: @escaping (Result<[Word],Error>) -> Void) {
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            completion(.failure(APIError.invalidURL))
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            completion( Result {
                try JSONDecoder().decode([Word].self, from: data)
            })
        } catch {
            print("Error!! Unable to parse  \(fileName).json")
            completion(.failure(APIError.decodingError))
            return
        }
    }

}
