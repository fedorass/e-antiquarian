import { Injectable } from '@angular/core';

import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';

import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

import { CountryService } from '../../service/country.service';

@Injectable({ 
    providedIn: 'root' 
})
export class CountriesResolver implements Resolve<Observable<any[]>> {

    constructor(private countryService: CountryService) { }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any[]> {

        let email =  'oleksandr.fedoras@gmail.com';
        return this.countryService.findAll(email).pipe(
            map(countries => {
                return countries.map(country => {
                    return {
                        value: country.uuid, 
                        label: country.defaultName,
                        materials: country.materials
                      }
                });
            })
        );
    }

}