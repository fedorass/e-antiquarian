import { Component, OnInit, ViewChild, TemplateRef, ElementRef, SimpleChanges } from '@angular/core';

import { ActivatedRoute } from '@angular/router';

import { SelectModule, SelectComponent } from 'ng-uikit-pro-standard'

import { NumismaticsService } from '../../service/numismatics.service';

import { Page } from '../../model/page.model';

@Component({
  selector: 'app-numismatics',
  templateUrl: './numismatics.component.html',
  styleUrls: ['./numismatics.component.scss'],
  host: {
    'class': 'vbox strech'
  }
})
export class NumismaticsComponent implements OnInit {

  private showFiltersPanel: boolean;

  countries: Array<any> = [];
  monetaryPeriods: Array<any> = [];
  isPeriodsDisabled: boolean = true;

  selectedCountry: any;
  selectedMonetaryPeriod: any;

  materialFilters: Array<any> = [];
  denominationFilters: Array<any> = [];  

  coins: Array<any> = [];

  currentPage: Page<any>;

  selectedDenomination: string;
  selectedMaterial: string;

  @ViewChild('coinsView') 
  coinsView: ElementRef;

  @ViewChild('selectedMonetaryPeriodView')
  selectedMonetaryPeriodView: SelectComponent;


  constructor(private route: ActivatedRoute, private numismaticsService: NumismaticsService) { 
    this.showFiltersPanel = true;
    this.currentPage = new Page<any>();
  }

  ngOnInit() {
    this.countries = this.route.snapshot.data.countries;
  }

  /*ngOnChanges(changes: SimpleChanges) {
    this.monetaryPeriods = [];
    this.isPeriodsDisabled = true;
    this.selectedCountry = null;
    this.selectedMonetaryPeriod = null;
  }*/

  onFilterShowClick(): void {
    this.showFiltersPanel = !this.showFiltersPanel;
  }

  countryChanged(country): void {
    this.materialFilters = [];
    this.denominationFilters = [];

    this.selectedCountry = country;
    //this.monetaryPeriods = [];
    this.selectedMonetaryPeriod = null;
    this.selectedMonetaryPeriodView.clear();
    this.selectedMonetaryPeriodView.clearSelection();

    this.coins = [];
    this.currentPage = new Page<any>();

    this.numismaticsService.findCoutryIssuePeriods(country.value).subscribe(periods => {    

        let groups = new Set();

        let items = [];

        periods.forEach(monetaryPeriod => {

          let item = {
            value: monetaryPeriod.uuid, 
            label: monetaryPeriod.startYear + ' - ' + ((monetaryPeriod.endYear)? monetaryPeriod.endYear : 'Now'),
            materials: monetaryPeriod.materials,
            denominations: monetaryPeriod.denominations
          };

          if (monetaryPeriod.periodGroup && !groups.has(monetaryPeriod.periodGroup)) {
            
            groups.add(monetaryPeriod.periodGroup);

            let groupItem = {
              value: '',
              label: monetaryPeriod.periodGroup,
              group: true
            }

            items.push(groupItem);
          }

          items.push(item);
        });

        this.monetaryPeriods = items;

        this.isPeriodsDisabled = this.monetaryPeriods.length === 0;
      });

    this.isPeriodsDisabled = false;
  }

  monetaryPeriodChanged(monetaryPeriod): void {
    this.selectedMonetaryPeriod = monetaryPeriod;
    this.selectedMaterial = null;
    this.selectedDenomination = null;

    this.coins = [];
    this.currentPage = new Page<any>();

    let materials: Array<any> = [];
    if (this.selectedCountry.materials) {
      materials = materials.concat(this.selectedCountry.materials);
    }

    if (this.selectedMonetaryPeriod.materials) {
      materials = materials.concat(this.selectedMonetaryPeriod.materials);
    }

    this.materialFilters = materials
      .sort((a, b) => {
        return a.composition.localeCompare(b.composition);
      })
      .map(item => {
        return {
          id: item.id,
          code: item.composition,
          label: item.material
        }
      });

    this.denominationFilters = this.selectedMonetaryPeriod.denominations
      .sort((a, b) => {
        if (a.rate > b.rate) {
          return 1;
        }
        else if (a.rate < b.rate) {
          return -1;
        }
        return 0;
      })
      .map(item => {
        return {
          id: item.id,
          code: item.denotation,
          label: item.denomination
        }
      });

    this.retrieveCoins(0);

  }

  onPageNumberChanged(pageNumber: number): void {

    this.retrieveCoins(pageNumber);

  }

  retrieveCoins(pageNumber: number): void {
    
    let filters = {
      material: this.selectedMaterial,
      denomination: this.selectedDenomination
    }

    this.numismaticsService.findIssuePeriodCoins(this.selectedMonetaryPeriod.value, pageNumber, filters).subscribe(responce => {
      this.coins = responce.content;
      this.currentPage = responce;
    });
  
    this.coinsView.nativeElement.scrollIntoView(); //scrollTop = 0;
  }

  onDenominationChanged(denomination?: string): void {
    this.selectedDenomination = denomination;

    this.retrieveCoins(0);
  }

  onMaterialChanged(material?: string): void {
    this.selectedMaterial = material;

    this.retrieveCoins(0);
  }

  getSelectedValue(event: any) {
    console.log('Selected value');
    console.log(event);
}

}
