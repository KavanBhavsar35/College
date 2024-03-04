import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  name: string = '';
  greeting: string = '';


  greet() {
    if (this.name) {
      this.greeting = `Hello, ${this.name}!`;
    } else {
      this.greeting = 'Please enter your name.';
    }
  }
}

