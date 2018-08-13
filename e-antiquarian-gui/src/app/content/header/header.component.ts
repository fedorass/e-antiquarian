import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { SharedContentService } from '../content.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  @ViewChild("sidenav") 
  private sideNavRef: ElementRef;

  constructor(private sharedContent: SharedContentService) { }

  ngOnInit() {
    this.sharedContent.setSideNavRef(this.sideNavRef);
  }

}
