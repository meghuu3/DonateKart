import java.util.ArrayList;
import java.util.List;
public class storingDonarDetails {
		  
	    private List<storingDonarDetails> donarList;
	  

	    public List<storingDonarDetails> getdonarList()
	    {
	  
	        if (donarList == null) {
	  
	            donarList
	                = new ArrayList<>();
	  
	                   
	        }
	  
	        return donarList;
	  
	           
	    }
	  
	    public void
	    setdonarList(
	        List<storingDonarDetails> donarList)
	    {
	        this.donarList
	            = donarList;
	    }
	}
