import { Component, OnInit } from '@angular/core';
import {UserService} from '../../services/user.service';
import {PostService} from '../../services/post.service';
import {CommentService} from '../../services/comment.service';
import {User} from '../../models/user';

@Component({
  selector: 'app-all-user',
  templateUrl: './all-user.component.html',
  styleUrls: ['./all-user.component.css']
})
export class AllUserComponent implements OnInit {

  users: User[];
  
  constructor(private userService: UserService, private postService: PostService, private commentService: CommentService) { }

  ngOnInit(): void {
  }

}
