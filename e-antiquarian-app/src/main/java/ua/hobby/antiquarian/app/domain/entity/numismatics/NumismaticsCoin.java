package ua.hobby.antiquarian.app.domain.entity.numismatics;

import ua.hobby.antiquarian.app.domain.entity.CollectionItemDenomination;
import ua.hobby.antiquarian.app.domain.entity.CollectionItemMaterial;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.UUID;

@Entity
@TableGenerator(name = "numismaticsCoinIdGen", table = "sequences",
        pkColumnName = "ID", valueColumnName = "VALUE",
        pkColumnValue = "NUMISMATICS_COIN_ID", initialValue = 1000, allocationSize = 10)
public class NumismaticsCoin {

    private Long id;
    private Long version = 1L;
    private UUID uuid;
    private LocalDate issueDate;
    private NumismaticsMonetaryPeriod monetaryPeriod;
    private CollectionItemMaterial coinMaterial;
    private CollectionItemDenomination coinDenomination;

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "numismaticsMonetaryPeriodIdGen")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Version
    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    @Column(unique = true, nullable = false)
    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    @Column
    public LocalDate getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(LocalDate issueDate) {
        this.issueDate = issueDate;
    }

    @ManyToOne(optional = false)
    public NumismaticsMonetaryPeriod getMonetaryPeriod() {
        return monetaryPeriod;
    }

    public void setMonetaryPeriod(NumismaticsMonetaryPeriod monetaryPeriod) {
        this.monetaryPeriod = monetaryPeriod;
    }

    @ManyToOne(optional = false)
    public CollectionItemMaterial getCoinMaterial() {
        return coinMaterial;
    }

    public void setCoinMaterial(CollectionItemMaterial coinMaterial) {
        this.coinMaterial = coinMaterial;
    }

    @ManyToOne(optional = false)
    public CollectionItemDenomination getCoinDenomination() {
        return coinDenomination;
    }

    public void setCoinDenomination(CollectionItemDenomination coinDenomination) {
        this.coinDenomination = coinDenomination;
    }
}
