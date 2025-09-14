.class public final Lcom/android/server/job/controllers/BackgroundJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const-string v0, "android.intent.extra.UID"

    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    if-ne v0, v1, :cond_1

    .line 28
    const-string p0, "JobScheduler.Background"

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "Didn\'t get package UID in intent ("

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p2, ")"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 53
    :cond_1
    sget-boolean v1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 55
    if-eqz v1, :cond_2

    .line 57
    const-string v1, "JobScheduler.Background"

    .line 59
    const-string v2, "Got "

    .line 61
    const-string v3, " for "

    .line 63
    const-string v4, "/"

    .line 65
    invoke-static {v0, v2, p2, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 83
    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 94
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 96
    monitor-enter p2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 99
    iget-object v1, v1, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 101
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    invoke-virtual {v1, v0, p1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 112
    monitor-exit p2

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_4
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 119
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 121
    monitor-enter p2

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 124
    iget-object v1, v1, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 126
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    const/4 p1, 0x2

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 138
    monitor-exit p2

    .line 139
    :goto_1
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    throw p0
.end method
