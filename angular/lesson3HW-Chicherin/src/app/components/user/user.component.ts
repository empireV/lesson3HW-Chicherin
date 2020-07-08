import {Component, Input, OnInit} from '@angular/core';
import {UserService} from '../../services/user.service';
import {PostService} from '../../services/post.service';
import {CommentService} from '../../services/comment.service';
import {User} from '../../models/user';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {

  constructor(private userService: UserService, private postService: PostService, private commentService: CommentService) { }

  @Input()
  user: User;

  ngOnInit(): void {
  }

  details(id: number) {
    this.postService.getPosts(id).subscribe(value => {
      console.log(value);
      for (const post of value) {
        this.commentService.getComments(post.id).subscribe(value1 => console.log(value1));
      }
    });
  }
}
