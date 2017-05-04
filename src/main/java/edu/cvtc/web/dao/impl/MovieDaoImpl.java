/**
 * 
 */
package edu.cvtc.web.dao.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import edu.cvtc.web.model.Movie;
import edu.cvtc.web.util.DBUtility;
import edu.cvtc.web.util.WorkbookUtility;

/**
 * @author wrongholt
 *
 */
public class MovieDaoImpl {
	private static final String SELECT_ALL_FROM_MOVIE = "select * from movie;";
	private static final String DROP_TABLE_MOVIE = "drop table if exists movie;";
	private static final String CREATE_TABLE_MOVIE = "create table movie (id integer primary key autoincrement, title text, directorName text, minutes integer);";
	
	@Override
	public void populate(String filePath) throws MovieDaoException{
		
		 Connection connection = null;
		 Statement statement = null;

		try {
			connection = DBUtility.createConnection();
			statement = connection.createStatement();
			
			statement.setQueryTimeout(DBUtility.TIMEOUT);
			
			statement.executeUpdate(DROP_TABLE_MOVIE);
			statement.executeUpdate(CREATE_TABLE_MOVIE);
			
			//populate the person table using WorkbookUtility
			final File inputFile = new File(filePath);
			final List<Person> people = WorkbookUtility.retrieveMovieFromWorkbook(inputFile);
			
			for(final Person person : people){
				final String insertValues = "insert into person (title, directorName, minutes) "
						+ "values ("
						+ "'" + person.getTitle() + "', "
						+ "'" + person.getDirectorName() + "', "
						+ person.getMinutes() + "');";
				
				System.out.println(insertValues); //Notes: Log message to Console so we can see data being added to database.
				
				statement.executeUpdate(insertValues);
			}
			
		} catch (ClassNotFoundException | SQLException | InvalidFormatException | IOException e) {
			e.printStackTrace();
			throw new PersonDaoException("Error: Unable to populate database.");
		} finally {
			DBUtility.closeConnections(connection, statement);
		} 
		
	}

	
	public List<Movie> retrieveMovie() throws MovieDaoException {

		Connection connection = null;
		Statement statement = null;
		final List<Movie> people = new ArrayList<>();
		
		try{
			connection = DBUtility.createConnection();
			statement = connection.createStatement();
			
			statement.setQueryTimeout(DBUtility.TIMEOUT);
			
		final ResultSet resultSet = statement.executeQuery(SELECT_ALL_FROM_PERSON);
		
		while(resultSet.next()){
			final String firstName = resultSet.getString("firstName");
			final String lastName = resultSet.getString("lastName");
			final int age = resultSet.getInt("age");
			final String favoriteColor = resultSet.getString("favoriteColor");
			
			people.add(new Person(firstName, lastName, age, favoriteColor));
		}
		
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			throw new PersonDaoException("Error: Unable to retrieve people.");
		}finally{
			DBUtility.closeConnections(connection, statement);
		}
		
		return people;
	}

	
	@Override
	public void insertPerson(Person person) throws PersonDaoException {

		
	}

}
