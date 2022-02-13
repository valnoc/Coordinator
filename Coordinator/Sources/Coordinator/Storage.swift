import Foundation

public protocol CoordinatorWithStorage {
    var storage: Storage {get set}
}

public class Storage {
    fileprivate var coordinators: [Coordinator] = []
    
    /// Add coordinator to list
    public func add(_ coordinator: Coordinator) {
        coordinators.append(coordinator)
    }
    
    /// Remove coordinator from list
    public func remove(_ coordinator: Coordinator) {
        guard let index = coordinators.firstIndex(where: { $0 === coordinator }) else { return }
        coordinators.remove(at: index)
    }

    /// Get coordinators list
    public func all() -> [Coordinator] {
        return coordinators
    }

    /// Check whether storage contains particular instance
    public func contains(_ coordinator: Coordinator) -> Bool {
        return coordinators.contains { $0 === coordinator }
    }

    /// Check whether the storage is empty
    public func isEmpty() -> Bool {
        return coordinators.isEmpty
    }

    /// Get coordinator by type. Makes a breadth-first search (BFS) down the chlidren tree.
    public func searchCoordinator<T>(_ type: T.Type) -> T? {
        return search(type, in: self)
    }
    
    fileprivate func search<T>(_ type: T.Type, in storage: Storage) -> T?  {
        for coord in storage.coordinators {
            if let coordT = coord as? T {
                return coordT
            }
        }
        
        for coord in storage.coordinators {
            if let coordWithStorage = coord as? CoordinatorWithStorage,
                let coordT = search(type, in: coordWithStorage.storage) {
                return coordT
            }
        }
        
        return nil
    }
}
