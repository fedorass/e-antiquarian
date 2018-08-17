import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule, APP_INITIALIZER } from '@angular/core';

import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

import { MDBBootstrapModulesPro } from 'ng-uikit-pro-standard';
import { MDBSpinningPreloader } from 'ng-uikit-pro-standard';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './content/header/header.component';
import { FooterComponent } from './content/footer/footer.component';
import { NumismaticsComponent } from './content/numismatics/numismatics.component';
import { BullionsComponent } from './content/bullions/bullions.component';
import { BonisticsComponent } from './content/bonistics/bonistics.component';
import { PaginationComponent } from './content/pagination/pagination.component';

import { FilterComponent } from './content/filter/filter.component'

import { AppLoadService } from './app-load.service';

export function init_app(appLoadService: AppLoadService) {
  return () => appLoadService.initializeApp();
}

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    FilterComponent,

    NumismaticsComponent,
    BullionsComponent,
    BonisticsComponent,
    PaginationComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    MDBBootstrapModulesPro.forRoot()
  ],
  providers: [
    { 
      provide: APP_INITIALIZER, 
      useFactory: init_app, 
      deps: [AppLoadService], 
      multi: true 
    },
    {
      provide: 'API_ENDPOINT', 
      useValue: '/api'//'https://vqmfad9j56.execute-api.eu-central-1.amazonaws.com/dev/api' 
      //dev 'http://localhost:3000/api'
    },
    MDBSpinningPreloader
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
