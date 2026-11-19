/*   
 *  @author Naveen Hiranya
 */
package Backend;
//Update this - retreive last id from databae and use it instead this logic

public class PersonIdGenerator {
        private static int counter = 1;

    public static String generatePersonId() {
        String personId = String.format("P%03d", counter);
        counter++;
        return personId;
    }
}
