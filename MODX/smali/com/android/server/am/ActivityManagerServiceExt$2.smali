.class public final Lcom/android/server/am/ActivityManagerServiceExt$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 15
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 20
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 22
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    if-nez v2, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 30
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 32
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 34
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 42
    const-string v0, "MetaDataCollector"

    .line 44
    const-string v1, "PackageManager is not ready yet."

    .line 46
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 52
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 57
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 62
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 67
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "package"

    .line 73
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 78
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 80
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    .line 82
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 84
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    const-string v1, "MetaDataCollector"

    .line 92
    const-string v2, "begin"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 99
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 104
    move-result-object v1

    .line 105
    const/16 v2, 0x80

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 110
    move-result-object v1

    .line 111
    monitor-enter v0

    .line 112
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 128
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 133
    const/4 v2, 0x1

    .line 134
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    const-string v1, "MetaDataCollector"

    .line 141
    const-string/jumbo v2, "loadInternal() done."

    .line 144
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v0

    .line 148
    goto :goto_2

    .line 149
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0

    .line 151
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 153
    check-cast p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 155
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 158
    return-void

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    throw p0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 164
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt;

    .line 166
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 171
    monitor-enter v0

    .line 172
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 174
    check-cast p0, Lcom/android/server/am/ActivityManagerServiceExt;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 183
    return-void

    .line 184
    :catchall_2
    move-exception p0

    .line 185
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 186
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 189
    throw p0

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
