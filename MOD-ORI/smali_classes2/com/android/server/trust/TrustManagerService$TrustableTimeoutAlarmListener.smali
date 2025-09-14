.class public final Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;
.super Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleAlarm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    iput-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 62
    .line 63
    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_1
    :goto_1
    return-void
.end method
