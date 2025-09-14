.class public final Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final enterState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v1, "Underlying network was null in retry state"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object p0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getRetryIntervalsMillis()[J

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length v2, p0

    .line 36
    if-lt v1, v2, :cond_1

    .line 37
    .line 38
    array-length v1, p0

    .line 39
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    aget-wide v1, p0, v1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    aget-wide v1, p0, v1

    .line 45
    .line 46
    :goto_0
    iget-object p0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v3, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 p0, 0x2

    .line 71
    iget v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 72
    .line 73
    invoke-virtual {v0, p0, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v3, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iput-object p0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public final exitState()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final processStateMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 35
    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 41
    .line 42
    iput-object p1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->teardownNetwork()V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 60
    .line 61
    iget-object v0, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
