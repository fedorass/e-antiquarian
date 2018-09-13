import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-coin',
  templateUrl: './numismatics-coin.component.html',
  styleUrls: ['./numismatics-coin.component.scss'],
  host: {
    'class': 'card mt-3'
  }
})
export class NumismaticsCoinComponent implements OnInit {
  
  @Input() coin: any;
  @Input() monetaryPeriod: any;   
  @Input() country: string;   
  
  private IMG_BASE_URL: string = 'https://s3.eu-central-1.amazonaws.com/ua.numismatics.oleksandr.fedoras.static.images/numismatics/countries/';
  
  constructor() { }

  ngOnInit() {
  }

  buildObverseImageUrl(): string {
    return this.IMG_BASE_URL + `${this.country}/monetary-periods/${this.monetaryPeriod}/coins/${this.coin.uuid}/obverse.png`;
  }

  buildReverseImageUrl(): string {
    return this.IMG_BASE_URL +  `${this.country}/monetary-periods/${this.monetaryPeriod}/coins/${this.coin.uuid}/reverse.png`;
  }

}