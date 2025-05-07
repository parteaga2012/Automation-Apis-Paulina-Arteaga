package examples.petstore;
import com.intuit.karate.junit5.Karate;

public class DeletePetRunner {
    @Karate.Test Karate testDeletePet(){
        return Karate.run("delete_pet").relativeTo(getClass());
    }
}
