import { Component, OnInit } from '@angular/core';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  menu:Menu[]
  cart:number

  constructor(private dataService:DataService) { 
  	this.cart = 0
  }

  increaseCart(){
  	this.cart++
  }
  decreaseCart(){
  	if(this.cart > 0)
  	  this.cart--
  }

  ngOnInit() {
  	this.dataService.getMenu().subscribe((menu)=>{
  		this.menu = menu
  	})
  }

}
interface Menu{
  id: number,
  name: string,
  price: number
}