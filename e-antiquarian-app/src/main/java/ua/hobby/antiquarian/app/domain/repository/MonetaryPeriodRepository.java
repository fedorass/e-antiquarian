package ua.hobby.antiquarian.app.domain.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import ua.hobby.antiquarian.app.domain.entity.MonetaryPeriod;
import ua.hobby.antiquarian.app.domain.entity.NoCountryProjection;

import java.util.UUID;

public interface MonetaryPeriodRepository extends CrudRepository<MonetaryPeriod, Long> {

    Iterable<NoCountryProjection> findAllByCountryUuid(@Param("uuid") UUID uuid);
}
