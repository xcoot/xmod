.class public final Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 16
    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v2, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 22
    .line 23
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Selected underlying network changed: "

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v2, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 41
    .line 42
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    const/4 v0, 0x7

    .line 53
    const-string v2, "Underlying Network lost"

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x1

    .line 57
    const/high16 v5, -0x80000000

    .line 58
    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v6, v7, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "airplane_mode_on"

    .line 75
    .line 76
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    new-instance p1, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 100
    .line 101
    invoke-direct {v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0, v5, v3, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 109
    .line 110
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 111
    .line 112
    const-wide/16 v6, 0x1e

    .line 113
    .line 114
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    iget-object v6, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 126
    .line 127
    if-eqz v6, :cond_7

    .line 128
    .line 129
    invoke-virtual {v6}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 133
    .line 134
    :cond_7
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    .line 135
    .line 136
    invoke-direct {v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    .line 143
    .line 144
    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
