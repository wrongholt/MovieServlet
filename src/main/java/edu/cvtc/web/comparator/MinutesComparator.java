package edu.cvtc.web.comparator;

import java.util.Comparator;

import edu.cvtc.web.model.Movie;

public class MinutesComparator implements Comparator<Movie> {
	@Override
	public int compare(Movie movie1, Movie movie2){
		return movie1.getLengthInMinutes().compareTo(movie2.getLengthInMinutes());
	}
}
