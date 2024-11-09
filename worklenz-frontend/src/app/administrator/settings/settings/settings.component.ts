import { Component, OnInit } from '@angular/core';
import { AppService } from '@services/app.service';
import { AuthService } from "@services/auth.service";
import { ISettingsNavigationItem } from "@interfaces/settings-navigation-item";

@Component({
  selector: 'worklenz-settings',
  templateUrl: './settings.component.html',
  styleUrls: ['./settings.component.scss']
})
export class SettingsComponent implements OnInit {
  navigation: ISettingsNavigationItem[] = [];

  constructor(
    private auth: AuthService,
    private app: AppService
  ) {
    this.app.setTitle('Settings');
  }

  get profile() {
    return this.auth.getCurrentSession();
  }

  ngOnInit() {
    this.buildNavigation();
  }

  isOwnerOrAdmin() {
    return this.profile?.owner || this.profile?.is_admin;
  }

  private buildNavigation() {
    this.navigation = [];

    this.navigation.push({ label: '个人资料', icon: 'user', url: 'profile' });
    this.navigation.push({ label: '通知', icon: 'notification', url: 'notifications' });

    if (this.isOwnerOrAdmin()) {
      this.navigation.push({ label: '客户', icon: 'user-switch', url: 'clients' });
      this.navigation.push({ label: '职位', icon: 'idcard', url: 'job-titles' });
      this.navigation.push({ label: '标签', icon: 'tags', url: 'labels' });
      this.navigation.push({ label: '分类', icon: 'group', url: 'categories' });
      this.navigation.push({ label: '项目模板', icon: 'file-zip', url: 'project-templates' });
      this.navigation.push({ label: '任务模板', icon: 'profile', url: 'task-templates' });
      this.navigation.push({ label: '团队成员', icon: 'team', url: 'team-members' });


    this.navigation.push({ label: '团队', icon: 'bank', url: 'teams' });
    }

    if (!this.profile?.is_google)
      this.navigation.push({ label: '修改密码', icon: 'lock', url: 'password' });

    this.navigation.push({ label: '语言&区域', icon: 'global', url: 'language-and-region' });
  }
}
