//
//  AlbumViewController.swift
//  Spotify
//
//  Created by Mitya Kim on 4/16/23.
//

import UIKit

class AlbumViewController: UIViewController {
    
    private let album: Album
    
    init(album: Album) {
        self.album = album
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = album.name
        view.backgroundColor = .systemBackground
        
        APICaller.shared.getAlbumDetails(for: album) { [weak self] result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
        }
    }
}
