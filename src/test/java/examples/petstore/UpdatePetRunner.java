package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class UpdatePetRunner {
    @Karate.Test
    Karate updatePet() {
        return Karate.run("update_pet").relativeTo(getClass());
    }
}
