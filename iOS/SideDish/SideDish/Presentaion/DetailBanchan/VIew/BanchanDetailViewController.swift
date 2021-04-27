//
//  DetailBanchanViewController.swift
//  SideDish
//
//  Created by 심영민 on 2021/04/20.
//

import UIKit
import Combine

class BanchanDetailViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet weak var imageScrollView: UIScrollView!
    @IBOutlet var imageViews: [UIImageView]!
    
    private var subscriptions = Set<AnyCancellable>()
    private var viewModel: BanchanDetailViewModel!
    
    static let storyboardName = "Main"
    static let storyboardID = "BanchanDetailViewController"
    
    static func create(with viewModel: BanchanDetailViewModel) -> BanchanDetailViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? BanchanDetailViewController else {
            return BanchanDetailViewController()
        }
        vc.viewModel = viewModel
        return vc
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    private func bind() {
        viewModel.$banchanDetail
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { (result) in
                switch result {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            }, receiveValue: { (value) in
                self.configure(images: value?.thumbImages ?? [])
            })
            .store(in: &subscriptions)
    }
    
    private func configure(images: [String]) {
        imageViews.removeAll()
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = self.imageScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0,
                                     width: self.imageScrollView.bounds.width,
                                     height: self.imageScrollView.bounds.height)
            imageView.contentMode = .scaleAspectFill
            imageView.load(url: viewModel.banchanDetail.thumbImages[i])
            imageViews.append(imageView)
            imageScrollView.addSubview(imageView)
            imageScrollView.contentSize.width = imageView.frame.width * CGFloat(i+1)
        }
    }
}

