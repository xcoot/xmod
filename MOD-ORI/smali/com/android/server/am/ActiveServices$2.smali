.class public final Lcom/android/server/am/ActiveServices$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$r:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$service:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    .line 62
    .line 63
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    iget v3, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    const/4 v2, 0x6

    .line 74
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    .line 92
    .line 93
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 96
    .line 97
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v2

    .line 102
    goto :goto_2

    .line 103
    :catchall_2
    move-exception v3

    .line 104
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 105
    .line 106
    iget-object v4, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 109
    .line 110
    .line 111
    throw v3

    .line 112
    :catch_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .line 123
    .line 124
    :goto_1
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_2
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    throw v2

    .line 154
    :goto_3
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 155
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 156
    .line 157
    .line 158
    throw p0
.end method
