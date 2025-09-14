.class public final Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSkipRetryTimeout:Z

.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final enterState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "IKE session was already closed when entering Disconnecting state."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object p0, v1, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, v1, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->close()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    const/16 v0, 0x8

    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 71
    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    .line 74
    const-wide/16 v3, 0x5

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 85
    .line 86
    return-void
.end method

.method public final exitState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 15
    .line 16
    :cond_0
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final processStateMsg(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-eq v0, v2, :cond_3

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eq v0, v1, :cond_7

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 27
    .line 28
    iget-boolean v0, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->reason:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "Underlying Network lost"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_8

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    iget-object p0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object p0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 88
    .line 89
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 105
    .line 106
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 111
    .line 112
    iput-object p1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 124
    .line 125
    .line 126
    :cond_8
    :goto_1
    return-void
.end method
