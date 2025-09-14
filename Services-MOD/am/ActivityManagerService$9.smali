.class public final Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$isInstantApp:Z

.field public final synthetic val$isRestore:Z

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$resolvedUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZZLandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$9;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$9;->val$resolvedUserId:I

    .line 7
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$9;->val$isRestore:Z

    .line 9
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$9;->val$isInstantApp:Z

    .line 11
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$9;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 13
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$9;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->finishForceStopPackageLocked(ILjava/lang/String;)V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    throw p0

    .line 31
    :cond_0
    :goto_0
    if-eqz p2, :cond_6

    .line 33
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 35
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 37
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v1, -0x1

    .line 45
    :goto_1
    iget v10, p0, Lcom/android/server/am/ActivityManagerService$9;->val$resolvedUserId:I

    .line 47
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$9;->val$isRestore:Z

    .line 49
    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$9;->val$isInstantApp:Z

    .line 51
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 53
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 55
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v4, v10, p1}, Lcom/android/server/pm/Computer;->getVisibilityAllowList(ILjava/lang/String;)[I

    .line 62
    move-result-object v11

    .line 63
    new-instance v12, Landroid/content/Intent;

    .line 65
    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 67
    const-string/jumbo v5, "package"

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static {v5, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object v5

    .line 75
    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    const/high16 v4, 0x5000000

    .line 80
    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    const-string v4, "android.intent.extra.UID"

    .line 85
    invoke-virtual {v12, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v1, "android.intent.extra.user_handle"

    .line 90
    invoke-virtual {v12, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    if-eqz v2, :cond_2

    .line 95
    const-string v1, "android.intent.extra.IS_RESTORE"

    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    :cond_2
    if-eqz v3, :cond_3

    .line 103
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 105
    invoke-virtual {v12, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 110
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const/high16 v2, 0x4000000

    .line 117
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    new-instance v2, Landroid/util/SparseArray;

    .line 122
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 125
    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    if-eqz v3, :cond_4

    .line 130
    sget-object v3, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    .line 132
    move-object v5, v3

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    move-object v5, v6

    .line 135
    :goto_2
    iget-object v1, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 137
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v2

    .line 141
    move-object v7, v2

    .line 142
    check-cast v7, [I

    .line 144
    const/4 v4, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object v2, v1

    .line 148
    move-object v3, v12

    .line 149
    move v6, v10

    .line 150
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 153
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 155
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 157
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_5

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    iget-object v1, v3, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 175
    monitor-enter v1

    .line 176
    :try_start_2
    iget-object v4, v3, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 178
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    new-instance v1, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;

    .line 181
    const/4 v8, 0x0

    .line 182
    move-object v2, v1

    .line 183
    move v5, v10

    .line 184
    move-object v6, v11

    .line 185
    move-object v7, v12

    .line 186
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;Landroid/os/RemoteCallbackList;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    goto :goto_3

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    throw p0

    .line 196
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$9;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 198
    if-eqz p0, :cond_7

    .line 200
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 203
    :cond_7
    return-void
.end method
