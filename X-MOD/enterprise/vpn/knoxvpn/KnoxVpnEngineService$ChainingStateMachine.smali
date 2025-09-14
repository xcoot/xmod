.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final connectingStateSleepTime:J

.field public final idleStateSleepTime:J

.field public final profileName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field public threadStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    .line 10
    const-wide/16 v0, 0x1388

    .line 12
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    .line 14
    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    .line 16
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "KnoxVpnEngineService"

    .line 3
    const-string v1, "ChainingStateMachine: thread stop time is "

    .line 5
    const-string v2, "ChainingStateMachine: currentState of the profile is "

    .line 7
    const-string v3, "ChainingStateMachine: thread start time is "

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v4

    .line 13
    iput-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    .line 15
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 17
    if-eqz v4, :cond_0

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-wide v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    .line 26
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 41
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 43
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 49
    if-eqz v4, :cond_1

    .line 51
    const-string p0, "Error occured while ChainingStateMachine: The error code is 110"

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 59
    invoke-interface {v3, v5}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    .line 62
    move-result v3

    .line 63
    if-eqz v4, :cond_3

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    const/4 v2, -0x1

    .line 81
    if-eq v3, v2, :cond_5

    .line 83
    const/4 v2, 0x5

    .line 84
    if-eq v3, v2, :cond_5

    .line 86
    const/4 v2, 0x1

    .line 87
    if-eq v3, v2, :cond_5

    .line 89
    const/4 v2, 0x2

    .line 90
    if-eq v3, v2, :cond_4

    .line 92
    const/4 v2, 0x3

    .line 93
    if-eq v3, v2, :cond_4

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 98
    iget-wide v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    .line 100
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(JLjava/lang/String;)V

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    .line 106
    iget-wide v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    .line 108
    invoke-virtual {p0, v5, v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(JLjava/lang/String;)V

    .line 111
    :goto_1
    if-eqz v4, :cond_6

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 121
    move-result-wide v1

    .line 122
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_3

    .line 133
    :goto_2
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 135
    if-eqz v1, :cond_6

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    const-string v2, "Exception at ChainingStateMachine API "

    .line 141
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {p0, v1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 147
    :cond_6
    :goto_3
    return-void
.end method

.method public final startChainedConnection(JLjava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "ChainingStateMachine: the profile is going to be started after the delay and the result is "

    .line 3
    const-string v1, "ChainingStateMachine: time out has happened and going to exit "

    .line 5
    const-string v2, "ChainingStateMachine: the profile is going to be delayed again "

    .line 7
    const-string v3, "ChainingStateMachine: currentTime after the thread has started is  "

    .line 9
    const-string v4, "ChainingStateMachine: state of the profile after delay is "

    .line 11
    const-string v5, "ChainingStateMachine: The thread running time after delay is  "

    .line 13
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 15
    const-string v7, "KnoxVpnEngineService"

    .line 17
    if-eqz v6, :cond_0

    .line 19
    const-string v8, "ChainingStateMachine: startChainedConnection is being called for profile "

    .line 21
    invoke-static {v8, p3, v7}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 27
    if-eqz v6, :cond_1

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    move-result-wide v8

    .line 38
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto/16 :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 54
    invoke-virtual {p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_8

    .line 60
    if-eqz v6, :cond_2

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, p3}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    .line 70
    move-result v4

    .line 71
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    invoke-static {v7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    invoke-interface {p1, p3}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    .line 84
    move-result p1

    .line 85
    const/4 p2, -0x1

    .line 86
    if-eq p1, p2, :cond_7

    .line 88
    const/4 p2, 0x5

    .line 89
    if-eq p1, p2, :cond_7

    .line 91
    const/4 p2, 0x1

    .line 92
    if-eq p1, p2, :cond_7

    .line 94
    const/4 p2, 0x2

    .line 95
    if-eq p1, p2, :cond_3

    .line 97
    const/4 p2, 0x3

    .line 98
    if-eq p1, p2, :cond_3

    .line 100
    goto/16 :goto_2

    .line 102
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    move-result-wide p1

    .line 106
    if-eqz v6, :cond_4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_4
    iget-wide v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    .line 125
    sub-long/2addr p1, v3

    .line 126
    const-wide/32 v3, 0x15f90

    .line 129
    cmp-long p1, p1, v3

    .line 131
    if-gtz p1, :cond_6

    .line 133
    if-eqz v6, :cond_5

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    iget-wide p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(JLjava/lang/String;)V

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    if-eqz v6, :cond_8

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_2

    .line 174
    :cond_7
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 176
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 178
    invoke-virtual {p1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_8

    .line 184
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 186
    iget-object p2, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mIgnoreConnectCheckForChaining:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    iget p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object p1

    .line 194
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 196
    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 201
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I

    .line 204
    move-result p0

    .line 205
    if-eqz v6, :cond_8

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p0

    .line 219
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_2

    .line 223
    :goto_1
    sget-boolean p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 225
    if-eqz p1, :cond_8

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    const-string p2, "Exception at startChainedConnection API "

    .line 231
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {p0, p1, v7}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 237
    :cond_8
    :goto_2
    return-void
.end method
