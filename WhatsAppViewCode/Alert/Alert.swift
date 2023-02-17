//
//  Alert.swift
//  WhatsAppViewCode
//
//  Created by Ivaszek on 17/02/23.
//

import Foundation
import UIKit

class Alert: NSObject{
    
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(titulo: String, mensagem: String, completion:(()-> Void)? = nil){
        
        let alertController = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let cancelar = UIAlertAction(title: "Ok", style: .cancel) { acao in
            completion?()
        }
        alertController.addAction(cancelar)
        self.controller.present(alertController, animated: true)
    }
    
    
}
