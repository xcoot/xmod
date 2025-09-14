.class public final Lcom/android/server/connectivity/EnterpriseVpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final interfaceRemoved(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Exception at  interfaceRemoved : "

    .line 2
    .line 3
    const-string v1, "Interface removed: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 19
    .line 20
    invoke-static {v3, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string/jumbo v3, "knoxEnterpriseVpn"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcloseInterface(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 58
    .line 59
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 60
    .line 61
    const-string v3, "agentDisconnect"

    .line 62
    .line 63
    invoke-virtual {p1, v1, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo p1, "vpn_management"

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 78
    .line 79
    iget-object v3, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 80
    .line 81
    iget v1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 82
    .line 83
    invoke-interface {p1, v3, v1}, Landroid/net/IVpnManager;->disconnectKnoxVpn(Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {p1, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnUidRanges(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 103
    .line 104
    iget-boolean p1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    .line 105
    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 109
    .line 110
    .line 111
    const-string/jumbo v1, "resetting the network capability and unregistering the observer since the interface is removed"

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 118
    .line 119
    iget v1, p1, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$2;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupObjects()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_1

    .line 132
    :catch_0
    move-exception p0

    .line 133
    :try_start_2
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 134
    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_0
    :goto_0
    monitor-exit v2

    .line 156
    return-void

    .line 157
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    throw p0
.end method
