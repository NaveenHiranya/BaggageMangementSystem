/*   
 *  @author Naveen Hiranya
 */
package Model;

public class Person {

    private String personID;
    private String username;
    private String passwordHash;
    private String name;
    private String address;
    private String contactNo;
    private String accountStatus;

    // Constructor 
    public Person(String personID, String username, String passwordHash,
            String name, String address, String contactNo) {

        this.personID = personID;
        this.username = username;
        this.passwordHash = passwordHash;
        this.name = name;
        this.address = address;
        this.contactNo = contactNo;
        this.accountStatus = "Active";
    }

    // Getters and Setters
    public String getPersonID() {
        return personID;
    }

    public void setPersonID(String personID) {
        this.personID = personID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    
    public String getcontactNo(){
        return contactNo;
    }
    
    public void setcontactNo(String contactNo){
        this.contactNo = contactNo;
    }
}
