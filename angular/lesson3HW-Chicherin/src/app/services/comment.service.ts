import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Comment} from '../models/comment';

@Injectable({
  providedIn: 'root'
})
export class CommentService {

  constructor(private httpClient: HttpClient) { }

  getComments(): Observable<Comment[]> {
    return this.httpClient.get<Comment[]>('http://jsonplaceholder.typicode.com/comments');
  }

  commentOfOne(id: number): Observable<Comment[]> {
    return this.httpClient.get<Comment[]>(`https://jsonplaceholder.typicode.com/posts/${id}/comments`);
  }
}
