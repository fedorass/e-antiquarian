package ua.hobby.antiquarian.app.ui.resource.bean;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.QueryParam;

public class PageableParams {

    @QueryParam("page")
    @DefaultValue("0")
    private Integer page;

    @QueryParam("size")
    @DefaultValue("12")
    private Integer size;

    public Pageable toPageable() {
        return PageRequest.of(page, size);
    }
}
