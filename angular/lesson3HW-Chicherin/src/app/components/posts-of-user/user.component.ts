import {Component, Input, OnInit} from '@angular/core';
import {PostService} from '../../services/post.service';
import {Opost} from '../../models/opost';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {

  constructor(private postService: PostService, private activatedRoute: ActivatedRoute) {
    activatedRoute.params.subscribe(val => {
      postService.getPostsOfUser(val.id).subscribe(value => this.postsOfUser = value);
    });
  }

  @Input()
  postsOfUser: Opost[];


  ngOnInit(): void {
  }
}
