.class public final Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeferredMap:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroid/util/ArrayMap;

    .line 15
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    .line 20
    return-void
.end method

.method public static setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 5
    move-result-object p0

    .line 6
    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupExtrasMerger(Landroid/os/BundleMerger;)Landroid/app/BroadcastOptions;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 21
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/Intent;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    check-cast p1, Landroid/content/Intent;

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final maybeDeferBroadcast(JLjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/content/Intent;

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    .line 17
    new-instance v3, Landroid/content/Intent;

    .line 19
    const-string v4, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 21
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v4, "tag"

    .line 27
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v4, "time"

    .line 33
    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 36
    const-string p1, "android.os.extra.DROPPED_COUNT"

    .line 38
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 p1, 0x2

    .line 45
    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 51
    iget-wide p2, p2, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string/jumbo p0, "time"

    .line 63
    invoke-virtual {v1, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    const-string p0, "android.os.extra.DROPPED_COUNT"

    .line 68
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    move-result p0

    .line 72
    const-string p1, "android.os.extra.DROPPED_COUNT"

    .line 74
    add-int/lit8 p0, p0, 0x1

    .line 76
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final prepareAndSendBroadcast(Landroid/content/Intent;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :cond_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/android/server/feature/flags/Flags;->enableReadDropboxPermission()Z

    .line 19
    move-result v1

    .line 20
    const-string v2, "android.permission.READ_LOGS"

    .line 22
    const-string/jumbo v3, "tag"

    .line 25
    if-eqz v1, :cond_3

    .line 27
    const-wide/32 v4, 0x11a58811

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v4, v5, v1}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    .line 34
    if-eqz p2, :cond_1

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v6, "-READ_DROPBOX_DATA"

    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 62
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v1

    .line 66
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 68
    const-string v7, "android.permission.READ_DROPBOX_DATA"

    .line 70
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v1, p1, v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v4, v5, v1}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    .line 81
    if-eqz p2, :cond_2

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "-READ_LOGS"

    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    invoke-static {v0, p2}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 109
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, v6, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    if-eqz p2, :cond_4

    .line 123
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    invoke-static {v0, p2}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V

    .line 130
    :cond_4
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 135
    move-result-object p0

    .line 136
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 138
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p0, p1, p2, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    :goto_0
    return-void
.end method
