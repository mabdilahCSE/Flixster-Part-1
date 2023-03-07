//
//  DetailViewController.swift
//  Flixster
//
//  Created by Khadar Jama Tukale on 3/5/23.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieVoteAverage: UILabel!
    
    @IBOutlet weak var movieVoteCount: UILabel!
    
    @IBOutlet weak var moviePopularity: UILabel!
    
    @IBOutlet weak var movieOverview: UILabel!
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: movie.backdrop_path, into: movieImageView)
        movieTitleLabel.text = movie.original_title
        movieOverview.text = movie.overview
        moviePopularity.text = movie.popularity
        movieVoteAverage.text = movie.vote_average
        movieVoteCount.text = movie.vote_count

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
