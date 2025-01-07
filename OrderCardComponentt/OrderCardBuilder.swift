//
//  OrderCardBuilder.swift
//  OrderCardComponentt
//
//  Created by Ahmed Ashraf on 07/01/2025.
//

import Foundation
import UIKit

class OrderCardBuilder{
    private var orderID : String?
    private var price: String = ""
    private var itemsCount: Int = 0
    private var status: Status?
    private var productImage: UIImage?
    
    func setOrderID(id: String?)->OrderCardBuilder{
        self.orderID = id
        return self
    }
    func setPrice(price: String)->OrderCardBuilder{
        self.price = price
        return self
    }
    func setItemsCount(itemsCount: Int)->OrderCardBuilder{
        self.itemsCount = itemsCount
        return self
    }
    func setStatus(status: Status?)->OrderCardBuilder{
        self.status = status
        return self
    }
    func setProducImage(image: UIImage?)->OrderCardBuilder{
        self.productImage = image
        return self
    }
    
    func build()->OrderCard{
        return OrderCard(orderID: orderID, price: price, itemsCount: itemsCount, status: status, productImage: productImage)
    }
}
