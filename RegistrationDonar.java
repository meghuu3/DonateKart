
public class RegistrationDonar {
	public RegistrationDonar() {}
	  
     public RegistrationDonar(
        Integer id, String firstName,
        String lastName, String username, String password, String phone, String email)
    {
  
        super();
  
        this.id = id;
  
        this.firstName = firstName;
  
        this.lastName = lastName;
        
        this.username = username;
        
        this.password = password;
        
        this.phone = phone;
  
        this.email = email;
  
           
    }
  
       private Integer id;
  
       private String firstName;
  
       private String lastName;
       
       private String username;
       
       private String password;
       
       private String phone;
  
       private String email;
  
    
    @Override
   public String toString()
    {
  
        return "Donar [id="
            + id + ", firstName="
            + firstName + ", lastName="
            + lastName + ", email="
            + email + "]";
  
           
    }
  
    // Getters and setters of
    // the properties
    public Integer getId()
    {
  
         return id;
    }
  
    public void setId(Integer id)
    {
  
         this.id = id;
    }
  
    public String getFirstName()
    {
  
         return firstName;
    }
  
    public void setFirstName(
        String firstName)
    {
  
         this.firstName = firstName;
    }
  
    public String getLastName()
    {
  
         return lastName;
    }
  
    public void setLastName(
        String lastName)
    {
  
         this.lastName = lastName;
    }
  
    public String getusername()
    {
  
         return username;
    }
  
    
    public void setusername(
            String username)
        {
      
             this.username = username;
        }
    public String getpassword()
    {
  
         return password;
    }
    
    public void setpassword(
            String password)
        {
      
             this.password = password;
        }
    
    public String getphone()
    {
  
         return phone;
    }
    
    public void setphone(
            String phone)
        {
      
             this.phone = phone; 
        }
    
    public String getEmail()
    {
  
         return email;
    }
  
    public void setEmail(String email)
    {
  
         this.email = email;
    }
}

