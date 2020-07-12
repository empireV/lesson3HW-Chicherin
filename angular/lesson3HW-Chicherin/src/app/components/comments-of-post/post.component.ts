import {Component, Input, OnInit} from '@angular/core';
import {CommentService} from '../../services/comment.service';
import {ActivatedRoute} from '@angular/router';
import {IComment} from '../../models/comment';

@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.css']
})
export class PostComponent implements OnInit {

  @Input()
  postComments: IComment[];

  constructor(private commentService: CommentService, private activatedRoute: ActivatedRoute) {
    activatedRoute.params.subscribe(value => {
      commentService.commentOfOne(value.id).subscribe(value1 => this.postComments = value1);
    });
  }

  ngOnInit(): void {
  }

}
