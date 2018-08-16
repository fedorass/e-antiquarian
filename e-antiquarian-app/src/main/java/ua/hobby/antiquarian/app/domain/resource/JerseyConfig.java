package ua.hobby.antiquarian.app.domain.resource;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.stereotype.Component;

@Component
public class JerseyConfig extends ResourceConfig {

    public JerseyConfig() {
        register(NumismaticsCountryResource.class);
        register(MonetaryPeriodResource.class);
    }
}
