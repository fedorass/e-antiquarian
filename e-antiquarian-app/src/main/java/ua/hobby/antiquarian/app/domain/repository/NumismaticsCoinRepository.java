package ua.hobby.antiquarian.app.domain.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoinProjection;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoin;

import java.util.UUID;

public interface NumismaticsCoinRepository extends CrudRepository<NumismaticsCoin, Long> {

    Page<NumismaticsCoinProjection> findAllByMonetaryPeriodUuid(@Param("uuid") UUID uuid, Pageable pageable);

}
