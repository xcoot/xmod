.class public final Lcom/android/server/job/controllers/StorageController$StorageTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastStorageSeq:I

.field public mStorageLow:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/StorageController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/StorageController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 9
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 4
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "seq"

    .line 8
    iget v2, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 16
    const-string p1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    const-string v1, "JobScheduler.Storage"

    .line 24
    if-eqz p1, :cond_1

    .line 26
    sget-boolean p1, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    .line 28
    if-eqz p1, :cond_0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "Available storage too low to do work. @ "

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 59
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    .line 61
    invoke-static {p0}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 73
    sget-boolean p1, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    .line 75
    if-eqz p1, :cond_2

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    const-string v0, "Available storage high enough to do work. @ "

    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    move-result-wide v2

    .line 93
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 106
    iget-object p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->this$0:Lcom/android/server/job/controllers/StorageController;

    .line 108
    invoke-static {p0}, Lcom/android/server/job/controllers/StorageController;->-$$Nest$mmaybeReportNewStorageState(Lcom/android/server/job/controllers/StorageController;)V

    .line 111
    :cond_3
    :goto_0
    return-void
.end method
