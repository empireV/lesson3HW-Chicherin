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
      {path: 'users', component: AllUserComponent},
      {path: 'posts', component: AllPostComponent},
      {path: 'comments', component: AllCommentComponent},
      {path: 'users/:id', component: UserComponent},
      {path: 'users/:id/:id', component: PostComponent},
      {path: 'posts/:id', component: PostComponent},
    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
