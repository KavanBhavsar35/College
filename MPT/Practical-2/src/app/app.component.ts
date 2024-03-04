import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'Practical-2';
  text1 = "Hello World"
  text2 = "Welcome to VPMP Polytechnic"
  text3 = "Prepared By Shweta Patel"
}
