package ua.hobby.antiquarian.app.ui.resource.bean;

import javax.ws.rs.QueryParam;

public class NumismaticsCoinParams {

    @QueryParam("material")
    private String material;

    @QueryParam("denomination")
    private String denomination;

    public String getMaterial() {
        return material;
    }

    public String getDenomination() {
        return denomination;
    }
}
