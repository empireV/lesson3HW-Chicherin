import { Injectable } from '@angular/core';
import {Resolve} from '@angular/router';
import {CommentService} from './comment.service';

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
