import { Injectable, ElementRef, TemplateRef } from '@angular/core';

@Injectable({ 
    providedIn: 'root' 
})
export class SharedContentService {

    private sideNavRefEl: ElementRef;

    private filterTemplateRef: TemplateRef<any>;

    setSideNavRef(sideNavRef: ElementRef): void {
        this.sideNavRefEl = sideNavRef;
    }

    getSideNavRef(): any {
        return this.sideNavRefEl;
    }

    setFilterTemplateRef(templateRef: TemplateRef<any>): void {
        this.filterTemplateRef = templateRef;
    }

    getFilterTemplateRef(): TemplateRef<any> {
        return this.filterTemplateRef;
    }
}