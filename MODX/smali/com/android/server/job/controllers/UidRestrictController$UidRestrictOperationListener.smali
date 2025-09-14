.class public final Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/UidRestrictController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/UidRestrictController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->onReceiveInternal(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "Pending jobs: u="

    .line 3
    iget-object v1, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    .line 5
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "android.intent.ACTION_JOB_RESTRICT_UID"

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    const-string/jumbo v2, "uid"

    .line 23
    const/4 v3, -0x1

    .line 24
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    move-result v2

    .line 28
    const-string/jumbo v3, "restrict"

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 35
    move-result p1

    .line 36
    if-lez v2, :cond_1

    .line 38
    sget-boolean v3, Lcom/android/server/job/controllers/UidRestrictController;->DEBUG:Z

    .line 40
    if-eqz v3, :cond_0

    .line 42
    const-string v3, "JobScheduler.UidRestrict"

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, ", restrict="

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/UidRestrictController$UidRestrictOperationListener;->this$0:Lcom/android/server/job/controllers/UidRestrictController;

    .line 72
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/UidRestrictController;->setUidRestrictedLocked(IZ)V

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method
