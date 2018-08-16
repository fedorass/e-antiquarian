package ua.hobby.antiquarian.app.domain.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ua.hobby.antiquarian.app.domain.entity.NumismaticsCountry;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsCountryRepository;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Component
@Path("/api/numismatics")
public class NumismaticsCountryResource {

    @Autowired
    private NumismaticsCountryRepository countryRepository;

    @GET
    @Produces({"application/json"})
    public Iterable<NumismaticsCountry> getNumismaticsCountries(@QueryParam("user") String email) {
        return countryRepository.findAllByUserEmail(email);
    }

}
