.class public final Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3
    const/4 v5, 0x0

    .line 4
    const-wide/32 v6, 0xea60

    .line 7
    const-string v3, "*job.quota_check*"

    .line 9
    const-string v4, "In quota"

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p2

    .line 13
    move-object v2, p3

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 17
    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/content/pm/UserPackage;

    .line 3
    iget p0, p2, Landroid/content/pm/UserPackage;->userId:I

    .line 5
    if-ne p0, p1, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/content/pm/UserPackage;

    .line 15
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 17
    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 19
    iget v4, v2, Landroid/content/pm/UserPackage;->userId:I

    .line 21
    iget-object v2, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-virtual {v3, v5, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
