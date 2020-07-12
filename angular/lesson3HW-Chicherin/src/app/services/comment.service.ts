import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {IComment} from '../models/comment';

@Injectable({
  providedIn: 'root'
})
export class CommentService {

  constructor(private httpClient: HttpClient) { }

  getComments(): Observable<IComment[]> {
    return this.httpClient.get<IComment[]>('http://jsonplaceholder.typicode.com/comments');
  }

  commentOfOne(id: number): Observable<IComment[]> {
    return this.httpClient.get<IComment[]>(`https://jsonplaceholder.typicode.com/posts/${id}/comments`);
  }
}
