import { Injectable, Inject } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import { MonetaryPeriod } from '../model/monetary-period.model';

@Injectable({ 
    providedIn: 'root' 
  })
export class MonetaryPeriodService {

  constructor(private http: HttpClient, @Inject('API_ENDPOINT') private baseUrl: string) {

  }

  findAll(countryId: string): Observable<MonetaryPeriod[]> {

    const queryUrl = `${this.baseUrl}/issue-period?country=${countryId}`;

    return this.http.get<any[]>(queryUrl);

   }

}
