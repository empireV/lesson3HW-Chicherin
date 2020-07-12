import { Injectable } from '@angular/core';
import {CanActivate} from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class ConfirmerService implements CanActivate {

  constructor() { }

  canActivate(): boolean {
    return confirm('r u sure?');
  }
}
