package ua.hobby.antiquarian.app.domain.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoin;
import ua.hobby.antiquarian.app.domain.entity.numismatics.NumismaticsCoinProjection;

import java.util.UUID;

public interface NumismaticsCoinRepository extends CrudRepository<NumismaticsCoin, Long>, JpaSpecificationExecutor<NumismaticsCoin> {

    Page<NumismaticsCoinProjection> findAllByMonetaryPeriodUuid(@Param("uuid") UUID uuid, Pageable pageable);

    /*class NumismaticsCoinSpecification implements Specification<NumismaticsCoin> {

        private UUID monetaryPeriodUuid;
        private NumismaticsCoin pattern;

        public NumismaticsCoinSpecification(UUID monetaryPeriodUuid, NumismaticsCoin pattern) {
            this.monetaryPeriodUuid = monetaryPeriodUuid;
            this.pattern = pattern;
        }

        @Nullable
        @Override
        public Predicate toPredicate(Root<NumismaticsCoin> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {

            List<Predicate> predicates = new ArrayList<>();

            Predicate predicate;
            predicate = criteriaBuilder.equal(root.join("monetaryPeriod").get("uuid"), monetaryPeriodUuid);
            predicates.add(predicate);

            return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
        }
    }*/
}
