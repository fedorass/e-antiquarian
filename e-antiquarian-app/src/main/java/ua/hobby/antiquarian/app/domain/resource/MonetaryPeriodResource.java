package ua.hobby.antiquarian.app.domain.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ua.hobby.antiquarian.app.domain.entity.NoCountryProjection;
import ua.hobby.antiquarian.app.domain.repository.MonetaryPeriodRepository;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.UUID;

@Component
@Path("/api/issue-period")
public class MonetaryPeriodResource {

    @Autowired
    private MonetaryPeriodRepository monetaryPeriodRepository;

    @GET
    @Produces({"application/json"})
    public Iterable<NoCountryProjection> getNumismaticsCountries(@QueryParam("country") String countryId) {
        return monetaryPeriodRepository.findAllByCountryUuid(UUID.fromString(countryId));
    }

}
