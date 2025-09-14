.class public final Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;
.super Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "ConnectingState entered with active session"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 37
    .line 38
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
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_8

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x7

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleDisconnectRequested(Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->handleSafeModeTimeoutExceeded()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 74
    .line 75
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 80
    .line 81
    iput-object p1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 82
    .line 83
    if-nez v2, :cond_5

    .line 84
    .line 85
    const-string p1, "Old underlying network was null in connected state. Bug?"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 91
    .line 92
    iget-object v0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 93
    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    iget-object p0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    if-eqz v2, :cond_7

    .line 103
    .line 104
    iget-object p1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 105
    .line 106
    iget-object v0, v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 118
    .line 119
    iput-boolean v1, p1, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;->mSkipRetryTimeout:Z

    .line 120
    .line 121
    :cond_8
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method
