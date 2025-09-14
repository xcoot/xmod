.class public final Lcom/android/server/SmartStorageMaintIdler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SmartStorageMaintIdler;


# direct methods
.method public constructor <init>(Lcom/android/server/SmartStorageMaintIdler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "SmartStorageMaintIdler"

    .line 2
    .line 3
    const-string v1, "Got smart storage maintenance service completion callback"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$1;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 34
    .line 35
    sget v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 36
    .line 37
    sget-object v1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-class v1, Landroid/app/job/JobScheduler;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 53
    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    int-to-long v2, v0

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 62
    .line 63
    const/16 v3, 0xaf8

    .line 64
    .line 65
    sget-object v4, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
