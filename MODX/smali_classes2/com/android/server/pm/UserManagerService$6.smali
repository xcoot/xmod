.class public final Lcom/android/server/pm/UserManagerService$6;
.super Landroid/app/IStopUserCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$userData:Lcom/android/server/pm/UserManagerService$UserData;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$6;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final userStopAborted(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$6;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    const/4 v3, 0x3

    .line 17
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$6;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p0, v3}, Lcom/android/server/pm/UserJourneyLogger;->logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final userStopped(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "UserManagerService"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "finishRemoveUser "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-boolean v1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, "UserManagerService"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Removing a pre-created user with user id: "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 74
    .line 75
    monitor-enter v3

    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ge v1, v4, :cond_1

    .line 84
    .line 85
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    .line 92
    .line 93
    invoke-interface {v4, v2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserRemoved(Landroid/content/pm/UserInfo;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    .line 107
    .line 108
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 109
    .line 110
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/high16 v3, 0x1000000

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    const-string v3, "android.intent.extra.user_handle"

    .line 119
    .line 120
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    const-string v3, "android.intent.extra.USER"

    .line 124
    .line 125
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    new-instance v5, Lcom/android/server/pm/UserManagerService$7;

    .line 137
    .line 138
    invoke-direct {v5, v0, p1}, Lcom/android/server/pm/UserManagerService$7;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 139
    .line 140
    .line 141
    const-string p1, "android.permission.MANAGE_USERS"

    .line 142
    .line 143
    filled-new-array {p1}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const/4 v7, -0x1

    .line 148
    const/4 v8, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    :goto_1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$6;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 170
    .line 171
    const/4 v2, 0x6

    .line 172
    const/4 v3, -0x1

    .line 173
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$6;->val$userData:Lcom/android/server/pm/UserManagerService$UserData;

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 183
    .line 184
    invoke-virtual {v0, p1, p0, v3}, Lcom/android/server/pm/UserJourneyLogger;->logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;I)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :catchall_1
    move-exception p0

    .line 189
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    throw p0

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    throw p0
.end method
