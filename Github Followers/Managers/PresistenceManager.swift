//
//  PresistenceManager.swift
//  Github Followers
//
//  Created by Mohamed Hany on 01/04/2024.
//

import Foundation

enum PresistenceActionType {
case add, remove
}

enum PresistenceManager {
    static private let defaults = UserDefaults.standard
    
    static func updateWith(favorite: Follower, actionType: PresistenceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { result in
            switch result{
            case .success(let favorites):
                var retrivedFavorites = favorites
                switch actionType {
                case .add:
                    guard !retrivedFavorites.contains(favorite) else {
                        completed(GFError.alreadyInFavorites)
                        return
                    }
                    retrivedFavorites.append(favorite)
                case .remove:
                    retrivedFavorites.removeAll { $0.login == favorite.login }
                }
                completed(saveFavorites(favorites: retrivedFavorites))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void){
        guard let favoritesData = defaults.object(forKey: Presistencekeys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do{
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func saveFavorites(favorites: [Follower]) -> GFError? {
        do{
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Presistencekeys.favorites)
            return nil
        } catch {
            return GFError.unableToFavorite
        }
    }
    
}
