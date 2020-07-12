import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import {HttpClientModule} from '@angular/common/http';
import { UserComponent } from './components/posts-of-user/user.component';
import { PostComponent } from './components/comments-of-post/post.component';
import { RouterModule } from '@angular/router';
import { AllUserComponent } from './components/all-user/all-user.component';
import { AllPostComponent } from './components/all-post/all-post.component';
import { AllCommentComponent } from './components/all-comment/all-comment.component';
import {ConfirmerService} from './services/confirmer.service';
import {PostResolverService} from './services/post-resolver.service';
import {UserResolverService} from './services/user-resolver.service';
import {CommentResolverService} from './services/comment-resolver.service';

@NgModule({
  declarations: [
    AppComponent,
    UserComponent,
    PostComponent,
    AllUserComponent,
    AllPostComponent,
    AllCommentComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    RouterModule.forRoot([
      {path: 'users',
        component: AllUserComponent,
        canActivate: [ConfirmerService],
        resolve: {data: UserResolverService},
        children: [
          {path: ':id', component: UserComponent},
          {path: ':id/:id', component: PostComponent}
        ]},
      {path: 'posts',
        component: AllPostComponent,
        canActivate: [ConfirmerService],
        resolve: {data: PostResolverService},
        children: [
          {path: ':id', component: PostComponent},
        ]},
      {path: 'comments',
        canActivate: [ConfirmerService],
        resolve: {data: CommentResolverService},
        component: AllCommentComponent}
    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
