.class public final Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final disableNonrenewableTrustWhileRenewableTrustIsPresent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 25
    .line 26
    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 36
    .line 37
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
.end method

.method public final handleAlarm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;->disableNonrenewableTrustWhileRenewableTrustIsPresent()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_0
    :goto_0
    return-void
.end method
