package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Denomination {

    private String denotation;
    private String denomination;
    private Double rate;

    @Column(unique = true, nullable = false)
    public String getDenotation() {
        return denotation;
    }

    public void setDenotation(String denotation) {
        this.denotation = denotation;
    }

    @Column(nullable = false)
    public String getDenomination() {
        return denomination;
    }

    public void setDenomination(String denomination) {
        this.denomination = denomination;
    }

    @Column
    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

}
