import { Injectable, Inject } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import { Country } from '../model/country.model';
import { NumismaticsMonetaryPeriod } from '../model/ numismatics-monetary-period.model';
import { NumismaticsCoin } from '../model/numismatics-coin.model';

@Injectable({ 
    providedIn: 'root' 
  })
export class NumismaticsService {

    constructor(private http: HttpClient, @Inject('API_ENDPOINT') private baseUrl: string) {}

    findUserCountries(user: string): Observable<Country[]> {
        
        const queryUrl = `${this.baseUrl}/numismatics?user=${user}`;

        return this.http.get<any[]>(queryUrl);
    }

    findCoutryIssuePeriods(countryUuid: string): Observable<NumismaticsMonetaryPeriod[]> {

        const queryUrl = `${this.baseUrl}/numismatics/${countryUuid}/issue-periods`;
    
        return this.http.get<any[]>(queryUrl);
    
    }

    findIssuePeriodCoins(issuePeriodUuid: string): Observable<NumismaticsCoin[]> {

        return null;
    }
}