.class public final Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->deleteObsoleteEventsLocked()V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 20
    .line 21
    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
