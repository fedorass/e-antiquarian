package ua.hobby.antiquarian.app.domain.entity;

import java.time.LocalDate;
import java.util.UUID;

public interface NumismaticsCoinProjection {

    UUID getUuid();
    LocalDate getIssueDate();
    CollectionItemMaterial getCoinMaterial();
    CollectionItemDenomination getCoinDenomination();

}
