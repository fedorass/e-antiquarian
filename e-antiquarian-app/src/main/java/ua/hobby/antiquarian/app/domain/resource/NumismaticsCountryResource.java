package ua.hobby.antiquarian.app.domain.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsMonetaryProjection;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoinProjection;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCountry;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsCoinRepository;
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

    @Autowired
    private NumismaticsCoinRepository coinRepository;

    @GET
    @Produces({"application/json"})
    public Iterable<NumismaticsCountry> getNumismaticsCountries(@QueryParam("user") String email) {
        return countryRepository.findAllByUserEmail(email);
    }

    @GET
    @Path("/{uuid}/issue-periods")
    @Produces({"application/json"})
    public Iterable<NumismaticsMonetaryProjection> getNumismaticsIssuePeriods(@PathParam("uuid") String countryId) {
        return monetaryPeriodRepository.findAllByCountryUuid(UUID.fromString(countryId));
    }

    @GET
    @Path("/issue-periods/{uuid}/coins")
    @Produces({"application/json"})
    public Page<NumismaticsCoinProjection> getNumismaticsCoins(@PathParam("uuid") String issuePeriodId,
                                                               @QueryParam("page") @DefaultValue("0") Integer page,
                                                               @QueryParam("size") @DefaultValue("12") Integer size) {

        Pageable pageable = PageRequest.of(page, size);

        return coinRepository.findAllByMonetaryPeriodUuid(UUID.fromString(issuePeriodId), pageable);
    }
}
