package examples.petstore;

import com.intuit.karate.junit5.Karate;

public class GetPetRunner {
    @Karate.Test
        Karate getPet() {
            return Karate.run("get_pet").relativeTo(getClass());
        }
    }

