/**
 * 
 */
package edu.cvtc.web.dao;

import java.util.List;

import edu.cvtc.web.dao.impl.MovieDaoException;
import edu.cvtc.web.model.Movie;

/**
 * @author wrongholt
 *
 */
public interface MovieDao {

void populate(String filePath) throws MovieDaoException;
	
	List<Movie> retrieveMovies();
	
	void insertMovie(Movie movie);
	
}
