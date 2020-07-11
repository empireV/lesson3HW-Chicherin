import {Component, Input, OnInit} from '@angular/core';
import {UserService} from '../../services/user.service';
import {User} from '../../models/user';

@Component({
  selector: 'app-all-user',
  templateUrl: './all-user.component.html',
  styleUrls: ['./all-user.component.css']
})
export class AllUserComponent implements OnInit {

  constructor(private userService: UserService) {
    userService.getUsers().subscribe(value => this.users = value);
  }

  @Input()
  users: User[];



  ngOnInit(): void {
  }
}
