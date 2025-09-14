.class public final synthetic Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/server/vcn/util/OneWayBoolean;->mValue:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Unknown validation status "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "; ignoring"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 64
    .line 65
    invoke-virtual {p1, v0, v2}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setSafeModeAlarm()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 82
    .line 83
    iput v2, p1, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    .line 93
    .line 94
    invoke-interface {p0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onSafeModeStatusChanged()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void

    .line 98
    :pswitch_0
    check-cast p1, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 103
    .line 104
    if-eq v1, p1, :cond_4

    .line 105
    .line 106
    const-string/jumbo p0, "unwanted() called on stale NetworkAgent"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const-string p1, "NetworkAgent was unwanted"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;->this$0$1:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->teardownAsynchronously()V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
