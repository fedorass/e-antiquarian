import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  host: {
    'class': 'container-fluid vbox full-height'
  }
})
export class AppComponent {
  title = 'app';
}
