//
//  OrderCard.swift
//  OrderCardComponentt
//
//  Created by Ahmed Ashraf on 07/01/2025.
//

import UIKit

class OrderCard: UIView {
    private let productImageView = UIImageView()
    private let orderIdLabel = UILabel()
    private let priceLabel = UILabel()
    private let itemsLabel = UILabel()
    private let statusLabel = UILabel()
    
    init(frame: CGRect = .zero, orderID: String?, price: String, itemsCount: Int, status: Status?, productImage: UIImage?) {
        super.init(frame: frame)
        setupViews()
        configure(orderID: orderID, price: price, itemsCount: itemsCount, status: status, productImage: productImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        productImageView.layer.cornerRadius = 22
        productImageView.layer.borderColor = UIColor.white.cgColor
        productImageView.layer.borderWidth = 1
        productImageView.contentMode = .scaleAspectFill
        productImageView.layer.masksToBounds = true
        
        orderIdLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        orderIdLabel.textColor = .black
        
        priceLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        priceLabel.textColor = .black
        
        itemsLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        itemsLabel.textColor = .black
        
        statusLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        statusLabel.textAlignment = .center
        statusLabel.textColor = .white
        statusLabel.layer.cornerRadius = 12
        statusLabel.layer.masksToBounds = true
        
        
        addSubview(productImageView)
        addSubview(orderIdLabel)
        addSubview(priceLabel)
        addSubview(itemsLabel)
        addSubview(statusLabel)
        
        setupConstraints()
        
        self.layer.cornerRadius = 12
        self.layer.backgroundColor = UIColor.white.cgColor
        self.clipsToBounds = true
    }
    
    private func setupConstraints() {
        productImageView.translatesAutoresizingMaskIntoConstraints = false
        orderIdLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        itemsLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            productImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            productImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
            productImageView.widthAnchor.constraint(equalTo: productImageView.heightAnchor),
            
            orderIdLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            orderIdLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 8),
            orderIdLabel.trailingAnchor.constraint(lessThanOrEqualTo: statusLabel.leadingAnchor, constant: -8),
            
            priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            priceLabel.leadingAnchor.constraint(equalTo: orderIdLabel.leadingAnchor),
            priceLabel.trailingAnchor.constraint(lessThanOrEqualTo: itemsLabel.leadingAnchor, constant: -4),
            
            itemsLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor),
            itemsLabel.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor, constant: 4),
            itemsLabel.trailingAnchor.constraint(lessThanOrEqualTo: statusLabel.leadingAnchor, constant: -8),
            
            statusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            statusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            statusLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25),
            statusLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4)
        ])
    }
    
    
    
    private func configure(orderID: String?, price: String, itemsCount: Int, status: Status?, productImage: UIImage?) {
        if let orderID = orderID {
            orderIdLabel.text = orderID
            orderIdLabel.isHidden = false
        } else {
            orderIdLabel.isHidden = true
        }
        
        priceLabel.text = price
        itemsLabel.text = ". \(itemsCount) Items"
        
        if let status = status {
            statusLabel.text = status.rawValue
            statusLabel.isHidden = false
            switch status {
            case .pickup:
                statusLabel.backgroundColor = UIColor(named: "customPink")
            case .processing:
                statusLabel.backgroundColor = UIColor(named: "customDarkBlue")
            case .delivered:
                statusLabel.backgroundColor = UIColor(named: "customGreen")
            }
        } else {
            statusLabel.isHidden = true
        }
        
        if let productImage = productImage {
            productImageView.image = productImage
            productImageView.isHidden = false
        } else {
            productImageView.isHidden = true
        }
    }
    
}

enum Status: String{
    case pickup = "Pick Up"
    case processing = "Processing"
    case delivered = "Delivered"
}
