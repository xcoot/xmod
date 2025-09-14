.class final Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 1
    const-string v0, "Failed to check attention: "

    .line 2
    .line 3
    const-string v1, ", ID: "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 10
    .line 11
    const-string v1, "AttentionDetector"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onSuccess(IJ)V
    .locals 1

    .line 1
    const-string p2, "AttentionDetector"

    .line 2
    .line 3
    const-string/jumbo p3, "onSuccess: "

    .line 4
    .line 5
    .line 6
    const-string v0, ", ID: "

    .line 7
    .line 8
    invoke-static {p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 13
    .line 14
    invoke-static {p3, v0, p2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 20
    .line 21
    iget v0, p3, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 22
    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p2, p3, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p2

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 40
    .line 41
    iget p3, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    if-eq p3, v0, :cond_0

    .line 45
    .line 46
    monitor-exit p2

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 59
    .line 60
    .line 61
    :goto_0
    monitor-exit p2

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_2
    :goto_2
    return-void
.end method
