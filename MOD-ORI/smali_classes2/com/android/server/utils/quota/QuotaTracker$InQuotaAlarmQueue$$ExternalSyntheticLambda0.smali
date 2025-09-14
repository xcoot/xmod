.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

.field public final synthetic f$1:Lcom/android/server/utils/quota/Uptc;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/utils/quota/Uptc;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/utils/quota/Uptc;->userId:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v3

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
