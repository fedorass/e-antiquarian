import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

import { Page } from '../../model/page.model';

@Component({
  selector: 'grid-pagination',
  templateUrl: './pagination.component.html',
  styleUrls: ['./pagination.component.scss']
})
export class PaginationComponent implements OnInit {

  @Input()
  page: Page<any>;

  @Output() onPageNumberChanged = new EventEmitter<number>();

  constructor() {

   }

  ngOnInit() {
  }

  isFirst(): boolean {
    return this.page.first;
  }

  hasNext(): boolean {
    return this.page.number < this.page.totalPages - 1;
  }

  hasPrevious(): boolean {
    return this.page.number > 0;
  }

  getPageNumbers(): any[] {
    return Array(this.page.totalPages);
  }

  pageNumberChanged(n : number): void {
    if (this.page.number !== n) {
      this.onPageNumberChanged.emit(n);
    }
  }
 
}
