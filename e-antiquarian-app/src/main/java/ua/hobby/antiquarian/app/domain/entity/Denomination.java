package ua.hobby.antiquarian.app.domain.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Denomination {

    private String code;
    private String denomination;
    private Double rate;

    @Column
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Column
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
