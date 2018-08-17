import { Injectable } from '@angular/core';

import { ActivatedRouteSnapshot, Resolve, RouterStateSnapshot } from '@angular/router';

import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

import { NumismaticsService } from '../../service/numismatics.service';

@Injectable({ 
    providedIn: 'root' 
})
export class CountriesResolver implements Resolve<Observable<any[]>> {

    constructor(private numismaticsService: NumismaticsService) { }

    resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any[]> {

        let email =  'oleksandr.fedoras@gmail.com';
        return this.numismaticsService.findUserCountries(email).pipe(
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