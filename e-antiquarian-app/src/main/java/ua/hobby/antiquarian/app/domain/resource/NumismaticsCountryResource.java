package ua.hobby.antiquarian.app.domain.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ua.hobby.antiquarian.app.domain.entity.NoCountryProjection;
import ua.hobby.antiquarian.app.domain.entity.NumismaticsCountry;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsCountryRepository;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsMonetaryPeriodRepository;

import javax.ws.rs.*;
import java.util.UUID;

@Component
@Path("/api/numismatics")
public class NumismaticsCountryResource {

    @Autowired
    private NumismaticsCountryRepository countryRepository;

    @Autowired
    private NumismaticsMonetaryPeriodRepository monetaryPeriodRepository;

    @GET
    @Produces({"application/json"})
    public Iterable<NumismaticsCountry> getNumismaticsCountries(@QueryParam("user") String email) {
        return countryRepository.findAllByUserEmail(email);
    }

    @GET
    @Path("{id}/issue-periods")
    @Produces({"application/json"})
    public Iterable<NoCountryProjection> getNumismaticsIssuePeriods(@PathParam("id") String countryId) {
        return monetaryPeriodRepository.findAllByCountryUuid(UUID.fromString(countryId));
    }

}
