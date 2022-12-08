
import java.net.URI;
import org.springframework.beans
	.factory.annotation.Autowired;
import org.springframework.http
	.ResponseEntity;
import org.springframework.web.bind
	.annotation.GetMapping;
import org.springframework.web.bind
	.annotation.PostMapping;
import org.springframework.web.bind
	.annotation.RequestBody;
import org.springframework.web.bind
	.annotation.RequestMapping;
import org.springframework.web.bind
	.annotation.RestController;
import org.springframework.web.servlet
	.support.ServletUriComponentsBuilder;

// Creating the REST controller
@RestController
@RequestMapping(path = "/reg")
public class regcontrolclass {

	@Autowired
 private regdonar donar;
	 
 @GetMapping(
		path = "/",
		produces = "application/json")

	public Donar getDonar()
	{

		return donardetails
			.getAlldonardetails();
	}

	 
 @PostMapping(
		path = "/",
		consumes = "application/json",
		produces = "application/json")

	public ResponseEntity<Object> addEmployee(
		@RequestBody Employee employee)
	{

		Integer id
			= donarlist
				.getAllDonars()
				.getdonarList()
				.size()
			+ 1;

		donar.setId(id);

		donardetails
			.addDonar(donar);

		URI location
			= ServletUriComponentsBuilder
				.fromCurrentRequest()
				.path("/{id}")
				.buildAndExpand(
					donar.getId())
				.toUri();

		   return ResponseEntity
			.created(location)
			.build();
	}
}
