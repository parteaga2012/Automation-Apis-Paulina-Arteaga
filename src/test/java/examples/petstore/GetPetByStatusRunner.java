package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class GetPetByStatusRunner {
    @Karate.Test
    Karate getPetByStatus() {
        return Karate.run("get_pet_by_status").relativeTo(getClass());
    }
}
