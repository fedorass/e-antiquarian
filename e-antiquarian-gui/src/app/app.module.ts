import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule, APP_INITIALIZER } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { MDBBootstrapModulesPro } from 'ng-uikit-pro-standard';
import { MDBSpinningPreloader } from 'ng-uikit-pro-standard';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './content/header/header.component';
import { FooterComponent } from './content/footer/footer.component';
import { NumismaticsComponent } from './content/numismatics/numismatics.component';
import { BullionsComponent } from './content/bullions/bullions.component';
import { BonisticsComponent } from './content/bonistics/bonistics.component';

import { FilterComponent } from './content/filter/filter.component'

import { AppLoadService } from './app-load.service';

export function init_sequelize(appLoadService: AppLoadService) {
  return () => appLoadService.initializeSequelize();
}

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    FilterComponent,

    NumismaticsComponent,
    BullionsComponent,
    BonisticsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    MDBBootstrapModulesPro.forRoot()
  ],
  providers: [
    {
      provide: 'USER_HOME_DIR',
      useValue: '/Users/oleksandr.fedoras'
    },
    { 
      provide: APP_INITIALIZER, 
      useFactory: init_sequelize, 
      deps: [AppLoadService], 
      multi: true 
    },
    MDBSpinningPreloader
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
