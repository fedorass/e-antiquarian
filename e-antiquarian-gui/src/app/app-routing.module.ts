import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { NumismaticsComponent } from './content/numismatics/numismatics.component'
import { BonisticsComponent } from './content/bonistics/bonistics.component'
import { BullionsComponent } from './content/bullions/bullions.component'

import { CountriesResolver } from './content/numismatics/countries.resolver';

const routes: Routes = [
  {
    path: 'numismatics',
    component: NumismaticsComponent,
    resolve: {
      countries: CountriesResolver
    }
  },
  {
    path: 'bonistics',
    component: BonisticsComponent
  },
  {
    path: 'bullions',
    component: BullionsComponent
  },
  { 
    path: '**',
    redirectTo: '/numismatics', 
    pathMatch: 'full'
  }  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
