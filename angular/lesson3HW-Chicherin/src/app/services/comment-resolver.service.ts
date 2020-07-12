import { Injectable } from '@angular/core';
import {ActivatedRouteSnapshot, Resolve, RouterStateSnapshot} from '@angular/router';
import {CommentService} from './comment.service';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommentResolverService implements Resolve<any>{

  constructor(private commentService: CommentService) {
  }

  resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
    return this.commentService.getComments();
  }
}
