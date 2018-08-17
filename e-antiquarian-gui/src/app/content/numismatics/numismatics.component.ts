import { Component, OnInit, ViewChild, TemplateRef, ElementRef, SimpleChanges } from '@angular/core';

import { ActivatedRoute } from '@angular/router';

import { MonetaryPeriodService } from '../../service/monetary-period.service';

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

  constructor(private route: ActivatedRoute, private monetaryPeriodService: MonetaryPeriodService) { 
    this.showFiltersPanel = true;
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
    this.monetaryPeriods = [];
    this.selectedMonetaryPeriod = null;
    this.monetaryPeriodService.findAll(country.value).subscribe(monetaryPeriods => {    

        let groups = new Set();

        this.monetaryPeriods = [];

        monetaryPeriods.forEach(monetaryPeriod => {

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

            this.monetaryPeriods.push(groupItem);
          }

          this.monetaryPeriods.push(item);
        });

        this.isPeriodsDisabled = this.monetaryPeriods.length === 0;
      });


    this.isPeriodsDisabled = false;
  }

  monetaryPeriodChanged(monetaryPeriod): void {
    this.selectedMonetaryPeriod = monetaryPeriod;

    let materials: Array<any> = [];
    if (this.selectedCountry.materials) {
      materials = materials.concat(this.selectedCountry.materials);
    }

    if (this.selectedMonetaryPeriod.materials) {
      materials = materials.concat(this.selectedMonetaryPeriod.materials);
    }

    this.materialFilters = materials.map(item => {

      return {
        code: item.composition,
        label: item.material
      }

    });

    this.denominationFilters = this.selectedMonetaryPeriod.denominations.map(item => {

      return {
        code: item.code,
        label: item.denomination
      }

    });
  }

  getTotalPages(): number {
    return 0;
  }

  hasMore(): boolean {
    return false;
  }

  onPageNumberChanged(pageNumber: number): void {
  }

}
