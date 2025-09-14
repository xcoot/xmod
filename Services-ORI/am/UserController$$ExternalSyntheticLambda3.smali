.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/util/Pair;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroid/content/pm/UserInfo;

    .line 18
    .line 19
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const/16 v2, 0x78

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/UserController;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/am/UserController$PendingUserStart;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/am/UserController$PendingUserStart;->userId:I

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/am/UserController$PendingUserStart;->unlockListener:Landroid/os/IProgressListener;

    .line 51
    .line 52
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 53
    .line 54
    filled-new-array {v3}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string/jumbo v4, "startUser"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/UserController;->checkCallingHasOneOfThosePermissions(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    iget p0, p0, Lcom/android/server/am/UserController$PendingUserStart;->userStartMode:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/android/server/am/UserController;->startUserNoChecks(IIILandroid/os/IProgressListener;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/UserController;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Landroid/content/pm/UserInfo;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/UserController;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Lcom/android/server/am/UserState;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Lcom/android/server/am/ActivityManagerService$12;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 100
    .line 101
    .line 102
    new-instance p0, Landroid/util/ArraySet;

    .line 103
    .line 104
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-virtual {v1, v2, v2, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/4 v2, 0x0

    .line 119
    :goto_0
    move-object v3, v1

    .line 120
    check-cast v3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ge v2, v4, :cond_1

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 133
    .line 134
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 135
    .line 136
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_0

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_0

    .line 153
    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v1

    .line 167
    :try_start_0
    iget v2, v0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 168
    .line 169
    invoke-virtual {v0, v2, p0}, Lcom/android/server/am/UserController;->stopExcessRunningUsersLU(ILandroid/util/ArraySet;)V

    .line 170
    .line 171
    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 174
    :catchall_0
    move-exception p0

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    throw p0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
