//
//  GalleryViewModel.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/14/21.
//

import Foundation

class GalleryViewModel: ObservableObject {
    @Published var listServices: [ServicesModel] = []
    @Published var compositionalArray: [[ServicesModel]] = []

    
    init() {
        fetchServices()
    }
    
    func fetchServices() {
        let url = "https://picsum.photos/v2/list?page=2&limit=20"
        let sesstion = URLSession(configuration: .default)
        sesstion.dataTask(with: URL(string: url)!) { (data, _, _) in
            guard let json = data else {return}
            
            let jsonValues = try? JSONDecoder().decode([ServicesModel].self, from: json)
            
            guard let services = jsonValues else {return}
            
            DispatchQueue.main.async {
                self.listServices = services
                self.setCompositionalLayout()
                print(services)
            }
            
        }.resume()
    }
    
    func setCompositionalLayout() {
        var currentArrayServices: [ServicesModel] = []
        
        listServices.forEach{(service) in
            currentArrayServices.append(service)
            if currentArrayServices.count == 3 {
                compositionalArray.append(currentArrayServices)
                currentArrayServices.removeAll()
            }
        }
    }
}
