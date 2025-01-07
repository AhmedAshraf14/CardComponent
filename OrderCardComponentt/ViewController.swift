//
//  ViewController.swift
//  OrderCardComponentt
//
//  Created by Ahmed Ashraf on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let orderCard = OrderCardBuilder()
        .setOrderID(id: "Order #NFD1234")
        .setPrice(price: "600SAR")
        .setStatus(status: .pickup)
        .setItemsCount(itemsCount: 3)
        .setProducImage(image: UIImage(named: "iphone"))
        .build()
        
        let orderCard1 = OrderCardBuilder()
        .setOrderID(id: "Order #NFD5678")
        .setPrice(price: "800SAR")
        .setStatus(status: .delivered)
        .setItemsCount(itemsCount: 4)
        .setProducImage(image: UIImage(named: "iphone"))
        .build()
        
        let orderCard2 = OrderCardBuilder()
        .setOrderID(id: "Order #NFD5678")
        .setPrice(price: "800SAR")
        .setStatus(status: .processing)
        .setItemsCount(itemsCount: 4)
        .setProducImage(image: UIImage(named: "iphone"))
        .build()
        
        let orderCard3 = OrderCardBuilder()
        .setOrderID(id: nil)
        .setPrice(price: "800SAR")
        .setStatus(status: nil)
        .setItemsCount(itemsCount: 4)
        .setProducImage(image: nil)
        .build()
        
        
        let orderCard4 = OrderCardBuilder()
        .setOrderID(id: nil)
        .setPrice(price: "800SAR")
        .setStatus(status: nil)
        .setItemsCount(itemsCount: 4)
        .setProducImage(image: UIImage(named: "iphone"))
        .build()
        
            

        orderCard.frame = CGRect(x: 40, y: 250, width: 304, height: 71)
        orderCard1.frame = CGRect(x: 40, y: 350, width: 304, height: 71)
        orderCard2.frame = CGRect(x: 40, y: 450, width: 304, height: 71)
        orderCard3.frame = CGRect(x: 40, y: 550, width: 304, height: 71)
        orderCard4.frame = CGRect(x: 40, y: 650, width: 304, height: 71)
        view.addSubview(orderCard)
        view.addSubview(orderCard1)
        view.addSubview(orderCard2)
        view.addSubview(orderCard3)
        view.addSubview(orderCard4)
    }


}

