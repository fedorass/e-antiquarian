package ua.hobby.antiquarian.app.domain.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsMonetaryPeriod;
import ua.hobby.antiquarian.app.domain.entity.NumismaticsMonetaryProjection;

import java.util.UUID;

public interface NumismaticsMonetaryPeriodRepository extends CrudRepository<NumismaticsMonetaryPeriod, Long> {

    Iterable<NumismaticsMonetaryProjection> findAllByCountryUuid(@Param("uuid") UUID uuid);
}
