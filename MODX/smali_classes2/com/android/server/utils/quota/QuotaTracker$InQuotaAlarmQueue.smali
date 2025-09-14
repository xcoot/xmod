.class public final Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 2
    .line 3
    sget-object v3, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    .line 4
    .line 5
    const-string v4, "In quota"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const-wide/16 v6, 0x0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p2

    .line 12
    move-object v2, p3

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/utils/quota/Uptc;

    .line 2
    .line 3
    iget p0, p2, Lcom/android/server/utils/quota/Uptc;->userId:I

    .line 4
    .line 5
    if-ne p1, p0, :cond_0

    .line 6
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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 15
    .line 16
    check-cast v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
