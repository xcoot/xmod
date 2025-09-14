.class public final Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final changedJobs:Landroid/util/ArraySet;

.field public final mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

.field public mUpdateTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 6
    new-instance p1, Landroid/util/SparseArrayMap;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 13
    new-instance p1, Landroid/util/ArraySet;

    .line 15
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 24
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 14
    move-result v0

    .line 15
    :goto_0
    move v6, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 21
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 26
    move-result v4

    .line 27
    move-object v1, p1

    .line 28
    move v5, v6

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 42
    invoke-virtual {v0, p1, v6}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    .line 50
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 55
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 57
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 59
    if-eqz v6, :cond_3

    .line 61
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 63
    invoke-virtual {v2, v1, p1, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 69
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 71
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 73
    invoke-static {v1, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v1, p1, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_2
    return-void
.end method
