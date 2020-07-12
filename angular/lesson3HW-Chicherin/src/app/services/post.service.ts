import {Injectable, Input} from '@angular/core';
import {Observable} from 'rxjs';
import {Ipost} from '../models/opost';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PostService {

  constructor(private httpClient: HttpClient) { }

  @Input()
  oneUserPosts: Ipost[];

  getPosts(): Observable<Ipost[]> {
    return this.httpClient.get<Ipost[]>('http://jsonplaceholder.typicode.com/posts');
  }

  getPostsOfUser(id: number): Observable<Ipost[]> {
    return this.httpClient.get<Ipost[]>(`https://jsonplaceholder.typicode.com/posts?userId=${id}`);
  }
}
