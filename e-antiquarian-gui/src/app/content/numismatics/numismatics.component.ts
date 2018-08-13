import { Component, OnInit, ViewChild, TemplateRef, ElementRef } from '@angular/core';

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

  constructor() { 
    this.showFiltersPanel = false;
  }

  ngOnInit() {
  }

  onFilterShowClick(): void {
    this.showFiltersPanel = !this.showFiltersPanel;
  }

}
