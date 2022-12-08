import java.util.ArrayList;
import java.util.List;
public class storingTakersDetails {
	
	private List<storingTakersDetails> takerList;
	  

    public List<storingTakersDetails> gettakerList()
    {
  
        if (takerList == null) {
  
            takerList
                = new ArrayList<>();
  
                   
        }
  
        return takerList;
  
           
    }
  
    public void
    settakerList(
        List<storingTakersDetails> takerList)
    {
        this.takerList
            = takerList;
    }
}
