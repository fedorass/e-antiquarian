package ua.hobby.antiquarian.app.domain.entity;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import javax.persistence.*;
import java.util.Collection;
import java.util.UUID;

@Entity
@TableGenerator(name = "monetaryPeriodIdGen", table = "sequences",
        pkColumnName = "ID", valueColumnName = "VALUE",
        pkColumnValue = "MONETARY_PERIOD_ID", initialValue = 1000, allocationSize = 10)
public class MonetaryPeriod {

    private Long id;
    private Long version = 1L;
    private UUID uuid;
    private Long startYear;
    private Long endYear;
    private String periodGroup;
    private String currency;
    private Collection<Material> materials;
    private Collection<Denomination> denominations;
    private Country country;

    @Id
    @Column(name = "id", updatable = false)
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "monetaryPeriodIdGen")
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

    @Column(nullable = false)
    public Long getStartYear() {
        return startYear;
    }

    public void setStartYear(Long startYear) {
        this.startYear = startYear;
    }

    @Column
    public Long getEndYear() {
        return endYear;
    }

    public void setEndYear(Long endYear) {
        this.endYear = endYear;
    }

    @Column
    public String getPeriodGroup() {
        return periodGroup;
    }

    public void setPeriodGroup(String periodGroup) {
        this.periodGroup = periodGroup;
    }

    @Column
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String iso) {
        this.currency = iso;
    }

    @ElementCollection
    @LazyCollection(LazyCollectionOption.FALSE)
    @CollectionTable(name = "period_materials", joinColumns=@JoinColumn(name="item_id"))
    public Collection<Material> getMaterials() {
        return materials;
    }

    public void setMaterials(Collection<Material> materials) {
        this.materials = materials;
    }

    @ManyToOne
    @JoinColumn(name="country_id")
    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    @ElementCollection
    @LazyCollection(LazyCollectionOption.FALSE)
    @CollectionTable(name = "period_denominations", joinColumns=@JoinColumn(name="item_id"))
    public Collection<Denomination> getDenominations() {
        return denominations;
    }

    public void setDenominations(Collection<Denomination> denominations) {
        this.denominations = denominations;
    }
}
