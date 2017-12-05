import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class DataService {

  constructor(public http:Http) {

  }

  getMenu(){
  	return this.http.get('http://localhost:80/test/DIGIFOOD/backend/menu')
  	  .map( res => res.json());
  }

}
