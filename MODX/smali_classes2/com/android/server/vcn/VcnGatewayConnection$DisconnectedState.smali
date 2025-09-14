.class public final Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;
.super Lcom/android/server/vcn/VcnGatewayConnection$BaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final enterState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->quitNow()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    :cond_1
    const-string v1, "Active IKE Session or NetworkAgent in DisconnectedState"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final exitState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 4
    .line 5
    .line 6
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
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x7

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;->logUnhandledMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;->shouldQuit:Z

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 24
    .line 25
    iput-boolean v1, p1, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->quitNow()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 32
    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;->newUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method
