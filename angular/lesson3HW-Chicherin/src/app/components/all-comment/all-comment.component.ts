import {Component, Input, OnInit} from '@angular/core';
import {CommentService} from '../../services/comment.service';
import {Comment} from '../../models/comment';

@Component({
  selector: 'app-all-comment',
  templateUrl: './all-comment.component.html',
  styleUrls: ['./all-comment.component.css']
})
export class AllCommentComponent implements OnInit {

  @Input()
  comments: Comment[];

  constructor(private commentService: CommentService) {
    this.commentService.getComments().subscribe(value => this.comments = value);
  }

  ngOnInit(): void {
  }

}
