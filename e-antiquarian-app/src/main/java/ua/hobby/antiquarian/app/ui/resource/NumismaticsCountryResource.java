package ua.hobby.antiquarian.app.ui.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsMonetaryProjection;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoinProjection;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCountry;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsCoinRepository;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsCountryRepository;
import ua.hobby.antiquarian.app.domain.repository.NumismaticsMonetaryPeriodRepository;
import ua.hobby.antiquarian.app.ui.resource.bean.NumismaticsCoinParams;
import ua.hobby.antiquarian.app.ui.resource.bean.PageableParams;

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
    public Page<NumismaticsCoinProjection> getNumismaticsCoins(
            @PathParam("uuid") String issuePeriodId,
            @BeanParam PageableParams pageableParams,
            @BeanParam NumismaticsCoinParams numismaticsCoinParams) {

        return coinRepository.findAllByMonetaryPeriod(UUID.fromString(issuePeriodId), numismaticsCoinParams.getMaterial(), numismaticsCoinParams.getDenomination(), pageableParams.toPageable());
    }
}
