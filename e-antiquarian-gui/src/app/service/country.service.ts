import { Injectable, Inject } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';

import { Country } from '../model/country.model';

@Injectable({ 
  providedIn: 'root' 
})
export class CountryService {

  constructor(private http: HttpClient, @Inject('API_ENDPOINT') private baseUrl: string) {}

    findAll(user: string): Observable<Country[]> {

    const queryUrl = `${this.baseUrl}/numismatics?user=${user}`;

    return this.http.get<any[]>(queryUrl);
   }

}
