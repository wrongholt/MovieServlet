/**
 * 
 */
package edu.cvtc.web.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import edu.cvtc.web.model.Movie;


/**
 * @author wrongholt
 *
 */
public class WorkbookUtility {

	public static final String INPUT_FILE = "/assets/movies.xlsx";
	
	public static List<Movie> retrieveMoviesFromWorkbook(final File inputFile) throws InvalidFormatException, IOException{
		
		final List<Movie> movies = new ArrayList<>();

		final Workbook workbook = WorkbookFactory.create(inputFile);
		
		final Sheet sheet = workbook.getSheetAt(0);
				
		for(final Row row : sheet){
			
			final Cell titleCell = row.getCell(0);
			final Cell directorNameCell = row.getCell(1);
			final Cell minutesCell = row.getCell(2);
			final Cell pictureCell = row.getCell(3);
						
			final Movie movie = new Movie(
					titleCell.getStringCellValue().trim(),
					directorNameCell.getStringCellValue().trim(), 
					(int) minutesCell.getNumericCellValue(),
					pictureCell.getStringCellValue().trim());
			
			movies.add(movie);
		}
		
		
		return movies;
	}
	
}
