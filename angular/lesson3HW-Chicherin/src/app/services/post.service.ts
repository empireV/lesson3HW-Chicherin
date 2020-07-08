import { Injectable } from '@angular/core';
import {Observable} from 'rxjs';
import {Opost} from '../models/opost';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PostService {

  constructor(private httpClient: HttpClient) { }

  getPosts(id: number): Observable<Opost[]> {
    return this.httpClient.get<Opost[]>('http://jsonplaceholder.typicode.com/posts');
  }
}
