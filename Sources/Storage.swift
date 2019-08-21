import Foundation

protocol CoordinatorWithStorage {
    var storage: Storage {get set}
}

public class Storage {
    fileprivate var coordinators: [Coordinator] = []
    
    public func add(_ coordinator: Coordinator) {
        coordinators.append(coordinator)
    }
    
    public func remove(_ coordinator: Coordinator) {
        guard let index = coordinators.firstIndex(where: { $0 === coordinator }) else { return }
        coordinators.remove(at: index)
    }

    public func all() -> [Coordinator] {
        return coordinators
    }

    public func isEmpty() -> Bool {
        return coordinators.isEmpty
    }

    public func searchCoordinator<T>(_ type: T.Type) -> T?  where T: Coordinator {
        return search(type, in: self)
    }
    
    fileprivate func search<T>(_ type: T.Type, in storage: Storage) -> T? where T: Coordinator {
        //search in children
        for coord in storage.coordinators {
            if let coordT = coord as? T {
                return coordT // early exit
            }
        }
        
        //search in further level
        for coord in storage.coordinators {
            if let coordWithStorage = coord as? CoordinatorWithStorage,
                let coordT = search(type, in: coordWithStorage.storage) {
                return coordT // early exit
            }
        }
        
        // not found
        return nil
    }
}
