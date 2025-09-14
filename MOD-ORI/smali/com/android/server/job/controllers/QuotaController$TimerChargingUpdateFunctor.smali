.class public final Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mIsCharging:Z

.field public mNowElapsed:J


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    .line 4
    .line 5
    iget-object v1, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget v0, v0, Landroid/content/pm/UserPackage;->userId:I

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
