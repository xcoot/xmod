.class public final synthetic Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/PersistentConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PersistentConnection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/PersistentConnection;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/PersistentConnection;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    .line 17
    iget-wide v5, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 19
    add-long/2addr v3, v5

    .line 20
    sub-long/2addr v3, v1

    .line 21
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 27
    if-eqz v1, :cond_0

    .line 29
    const-wide/16 v1, 0x0

    .line 31
    cmp-long v1, v3, v1

    .line 33
    if-gtz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 50
    if-nez v1, :cond_1

    .line 52
    monitor-exit v0

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 60
    monitor-exit v0

    .line 61
    :goto_2
    return-void

    .line 62
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    throw p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
