/**
 * 
 */
package edu.cvtc.web.model;

import java.io.Serializable;

/**
 * @author wrongholt
 *
 */
public class Movie implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -833077276058540099L;
	
	private String title;
	private String directorName;
	private Integer lengthInMinutes;
	
	public Movie(){
		
	}
	
	public Movie(String title, String directorName, int lengthInMinutes) {
		this.title = title;
		this.directorName = directorName;
		this.lengthInMinutes = lengthInMinutes;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDirectorName() {
		return directorName;
	}
	public void setDirectorName(String directorName) {
		this.directorName = directorName;
	}
	public Integer getLengthInMinutes() {
		return lengthInMinutes;
	}
	public void setLengthInMinutes(Integer lengthInMinutes) {
		this.lengthInMinutes = lengthInMinutes;
	}
	

}
