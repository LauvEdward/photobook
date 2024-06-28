//
//  ListCollectionImageVC.swift
//  photobook
//
//  Created by edward on 28/06/2024.
//

import UIKit

class ListCollectionImageVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private var viewModel: ListCollectionImageViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        viewModel = ListCollectionImageViewModel()
        
    }
}
extension ListCollectionImageVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let numberOfImage = viewModel?.listImage?.count else { return 0 }
        return numberOfImage
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
    }
}
