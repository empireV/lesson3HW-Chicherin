import { Injectable } from '@angular/core';
import {Resolve} from '@angular/router';
import {PostService} from './post.service';

@Injectable({
  providedIn: 'root'
})
export class PostResolverService implements Resolve<any>{

  constructor(private postService: PostService) {
  }

  resolve(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<any> | Promise<any> | any {
    return this.postService.getPosts();
  }
}
