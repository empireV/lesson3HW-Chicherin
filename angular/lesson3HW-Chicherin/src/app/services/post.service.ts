import {Injectable, Input} from '@angular/core';
import {Observable} from 'rxjs';
import {Opost} from '../models/opost';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PostService {

  constructor(private httpClient: HttpClient) { }

  @Input()
  oneUserPosts: Opost[];

  getPosts(): Observable<Opost[]> {
    return this.httpClient.get<Opost[]>('http://jsonplaceholder.typicode.com/posts');
  }

  getPostsOfUser(id: number): Observable<Opost[]> {
    return this.httpClient.get<Opost[]>(`https://jsonplaceholder.typicode.com/posts?userId=${id}`);
  }
}
