import {Component, Input, OnInit} from '@angular/core';
import {IUser} from '../../models/user';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-all-user',
  templateUrl: './all-user.component.html',
  styleUrls: ['./all-user.component.css']
})
export class AllUserComponent implements OnInit {

  @Input()
  users: IUser[];

  // constructor(private userService: UserService) {
  //   userService.getUsers().subscribe(value => this.users = value);
  // }
  constructor(private activatedRoute: ActivatedRoute) {
    this.activatedRoute.data.subscribe(value => this.users = value.data);
  }

  ngOnInit(): void {
  }
}
