import { Injectable, Inject } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import { Country } from '../model/country.model';
import { NumismaticsMonetaryPeriod } from '../model/ numismatics-monetary-period.model';
import { NumismaticsCoin } from '../model/numismatics-coin.model';
import { Page } from '../model/page.model';

const DEFAULT_PAGE_SIZE = 12;

@Injectable({ 
    providedIn: 'root' 
  })
export class NumismaticsService {

    constructor(private http: HttpClient, @Inject('API_ENDPOINT') private baseUrl: string) {}

    findUserCountries(user: string): Observable<Country[]> {
        
        const queryUrl = `${this.baseUrl}/numismatics?user=${user}`;

        return this.http.get<Country[]>(queryUrl);
    }

    findCoutryIssuePeriods(countryUuid: string): Observable<NumismaticsMonetaryPeriod[]> {

        const queryUrl = `${this.baseUrl}/numismatics/${countryUuid}/issue-periods`;
    
        return this.http.get<NumismaticsMonetaryPeriod[]>(queryUrl);
    
    }

    findIssuePeriodCoins(issuePeriodUuid: string, page: number = 0,  size: number = DEFAULT_PAGE_SIZE): Observable<Page<NumismaticsCoin>> {
        
        const queryUrl = `${this.baseUrl}/numismatics/issue-periods/${issuePeriodUuid}/coins?page=${page}&size=${size}`;
        
        return this.http.get<Page<NumismaticsCoin>>(queryUrl);
    }
}