package ua.hobby.antiquarian.app.domain.repository;

import org.springframework.data.repository.CrudRepository;
import ua.hobby.antiquarian.app.domain.entity.NumismaticsCountry;

public interface NumismaticsCountryRepository extends CrudRepository<NumismaticsCountry, Long> {

    Iterable<NumismaticsCountry> findAllByUserEmail(String userEmail);
}
