.class public final Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public ipAddresses:Ljava/util/List;

.field public final mArguments:[Ljava/lang/String;

.field public mBringupStartTime:J

.field public final mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

.field public final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOuterInterface:Ljava/lang/String;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public mServerIP:Ljava/lang/String;

.field public final mSockets:Landroid/net/LocalSocket;

.field public final mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2
    .line 3
    const-string v0, "LegacyVpnRunner"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    const-wide/16 v0, -0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 44
    .line 45
    new-instance p2, Landroid/net/LocalSocket;

    .line 46
    .line 47
    invoke-direct {p2}, Landroid/net/LocalSocket;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 51
    .line 52
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 59
    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_1

    .line 65
    .line 66
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    array-length p3, p2

    .line 73
    const/4 p4, 0x0

    .line 74
    :goto_0
    if-ge p4, p3, :cond_1

    .line 75
    .line 76
    aget-object v0, p2, p4

    .line 77
    .line 78
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 120
    .line 121
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iget-object p3, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iget-object p4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 128
    .line 129
    invoke-virtual {p3, p4, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    new-instance p2, Landroid/content/IntentFilter;

    .line 133
    .line 134
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 145
    .line 146
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p1, "Arguments must not be null"

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0
.end method


# virtual methods
.method public final bringup(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Dependencies;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 36
    .line 37
    aget-object v7, v7, v3

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 42
    .line 43
    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 52
    .line 53
    aput-object v6, v7, v3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v5, "Invalid server argument for charon"

    .line 59
    .line 60
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v4

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v4

    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_2
    move-object v5, v4

    .line 75
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 80
    .line 81
    :goto_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 82
    .line 83
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 84
    .line 85
    const-string/jumbo v7, "charon"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v7}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x1

    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 103
    .line 104
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v6, Ljava/io/File;

    .line 110
    .line 111
    const-string v8, "/data/misc/vpn/state"

    .line 112
    .line 113
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-nez v8, :cond_1c

    .line 124
    .line 125
    new-instance v8, Ljava/io/File;

    .line 126
    .line 127
    const-string v9, "/data/misc/vpn/abort"

    .line 128
    .line 129
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_1b

    .line 140
    .line 141
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 142
    .line 143
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 144
    .line 145
    const-string/jumbo v11, "execute"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v10, v11}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 152
    .line 153
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 154
    .line 155
    const-string/jumbo v10, "charon"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :goto_3
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 165
    .line 166
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 167
    .line 168
    const-string/jumbo v10, "charon"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-nez v9, :cond_4

    .line 179
    .line 180
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 185
    .line 186
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 187
    .line 188
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 189
    .line 190
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 191
    .line 192
    new-instance v12, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;

    .line 193
    .line 194
    invoke-direct {v12, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/connectivity/Vpn$VpnRunner;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {v10, v11, v12}, Lcom/android/server/connectivity/Vpn$Dependencies;->sendArgumentsToDaemon(Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 201
    .line 202
    .line 203
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-nez v9, :cond_7

    .line 208
    .line 209
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 210
    .line 211
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 212
    .line 213
    const-string/jumbo v10, "charon"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_6

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-nez v9, :cond_5

    .line 230
    .line 231
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string/jumbo v5, "charon is shutdown"

    .line 238
    .line 239
    .line 240
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v4

    .line 244
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    const-string/jumbo v5, "charon is dead"

    .line 247
    .line 248
    .line 249
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v4

    .line 253
    :cond_7
    invoke-static {v6, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    const-string v8, "\n"

    .line 258
    .line 259
    const/4 v9, -0x1

    .line 260
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    array-length v8, v6

    .line 265
    const/4 v9, 0x7

    .line 266
    if-ne v8, v9, :cond_1a

    .line 267
    .line 268
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 269
    .line 270
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 271
    .line 272
    aget-object v9, v6, v3

    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    iput-object v9, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 279
    .line 280
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 281
    .line 282
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 283
    .line 284
    aget-object v9, v6, v7

    .line 285
    .line 286
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 290
    .line 291
    aget-object v9, v6, v7

    .line 292
    .line 293
    const-string v10, "/"

    .line 294
    .line 295
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    aget-object v9, v9, v3

    .line 300
    .line 301
    iput-object v9, v8, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 304
    .line 305
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 306
    .line 307
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 308
    .line 309
    if-eqz v8, :cond_8

    .line 310
    .line 311
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_9

    .line 316
    .line 317
    :cond_8
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 318
    .line 319
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 320
    .line 321
    aget-object v9, v6, v2

    .line 322
    .line 323
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_9
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 327
    .line 328
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 329
    .line 330
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 331
    .line 332
    if-eqz v8, :cond_a

    .line 333
    .line 334
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_b

    .line 339
    .line 340
    :cond_a
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 341
    .line 342
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 343
    .line 344
    aget-object v9, v6, v2

    .line 345
    .line 346
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_b
    if-nez p1, :cond_d

    .line 350
    .line 351
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 352
    .line 353
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 354
    .line 355
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 356
    .line 357
    if-eqz v8, :cond_c

    .line 358
    .line 359
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    if-eqz v8, :cond_d

    .line 364
    .line 365
    :cond_c
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 366
    .line 367
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 368
    .line 369
    aget-object v9, v6, v2

    .line 370
    .line 371
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_d
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 375
    .line 376
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 377
    .line 378
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 379
    .line 380
    if-eqz v8, :cond_e

    .line 381
    .line 382
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-nez v8, :cond_f

    .line 387
    .line 388
    :cond_e
    const/4 v8, 0x3

    .line 389
    aget-object v8, v6, v8

    .line 390
    .line 391
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    if-nez v9, :cond_f

    .line 400
    .line 401
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 402
    .line 403
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 404
    .line 405
    const-string v10, " "

    .line 406
    .line 407
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    iput-object v8, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 416
    .line 417
    :cond_f
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 418
    .line 419
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 420
    .line 421
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 422
    .line 423
    const/4 v9, 0x4

    .line 424
    if-eqz v8, :cond_10

    .line 425
    .line 426
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-nez v8, :cond_11

    .line 431
    .line 432
    :cond_10
    aget-object v6, v6, v9

    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-nez v8, :cond_11

    .line 443
    .line 444
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 445
    .line 446
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 447
    .line 448
    const-string v10, " "

    .line 449
    .line 450
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    iput-object v6, v8, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 459
    .line 460
    :cond_11
    if-nez p1, :cond_14

    .line 461
    .line 462
    instance-of v6, v5, Ljava/net/Inet4Address;

    .line 463
    .line 464
    const/16 v8, 0x9

    .line 465
    .line 466
    if-eqz v6, :cond_12

    .line 467
    .line 468
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 469
    .line 470
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 471
    .line 472
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 473
    .line 474
    new-instance v10, Landroid/net/RouteInfo;

    .line 475
    .line 476
    new-instance v11, Landroid/net/IpPrefix;

    .line 477
    .line 478
    const/16 v12, 0x20

    .line 479
    .line 480
    invoke-direct {v11, v5, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 481
    .line 482
    .line 483
    invoke-direct {v10, v11, v4, v4, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_12
    instance-of v6, v5, Ljava/net/Inet6Address;

    .line 491
    .line 492
    if-eqz v6, :cond_13

    .line 493
    .line 494
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 495
    .line 496
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 497
    .line 498
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 499
    .line 500
    new-instance v10, Landroid/net/RouteInfo;

    .line 501
    .line 502
    new-instance v11, Landroid/net/IpPrefix;

    .line 503
    .line 504
    const/16 v12, 0x80

    .line 505
    .line 506
    invoke-direct {v11, v5, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 507
    .line 508
    .line 509
    invoke-direct {v10, v11, v4, v4, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    goto :goto_5

    .line 516
    :cond_13
    const-string v6, "LegacyVpnRunner"

    .line 517
    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .line 522
    .line 523
    const-string v10, "Unknown IP address family for VPN endpoint: "

    .line 524
    .line 525
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :goto_5
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 539
    .line 540
    iget-boolean v6, v5, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 541
    .line 542
    if-nez v6, :cond_14

    .line 543
    .line 544
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 545
    .line 546
    invoke-static {v5, v6, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 547
    .line 548
    .line 549
    :cond_14
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 550
    .line 551
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 553
    .line 554
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 555
    .line 556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 557
    .line 558
    .line 559
    move-result-wide v7

    .line 560
    iput-wide v7, v6, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 561
    .line 562
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 563
    .line 564
    .line 565
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 566
    .line 567
    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 568
    .line 569
    iget-object v8, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 570
    .line 571
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    if-eqz v6, :cond_19

    .line 581
    .line 582
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 583
    .line 584
    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 585
    .line 586
    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 587
    .line 588
    iput-object v7, v6, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 589
    .line 590
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 591
    .line 592
    .line 593
    if-eqz p1, :cond_15

    .line 594
    .line 595
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 596
    .line 597
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentConnectForKnoxInterface(Lcom/android/server/connectivity/Vpn;)V

    .line 598
    .line 599
    .line 600
    goto :goto_6

    .line 601
    :catchall_0
    move-exception v4

    .line 602
    goto/16 :goto_8

    .line 603
    .line 604
    :cond_15
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 605
    .line 606
    invoke-virtual {v6, v4}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 607
    .line 608
    .line 609
    :goto_6
    const-string v4, "LegacyVpnRunner"

    .line 610
    .line 611
    const-string v6, "Connected!"

    .line 612
    .line 613
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    if-nez p1, :cond_16

    .line 617
    .line 618
    const-string v4, "LegacyVpnRunner"

    .line 619
    .line 620
    const-string v6, "add vpn rules"

    .line 621
    .line 622
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 626
    .line 627
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 628
    .line 629
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    const-string v6, "VpnRules"

    .line 633
    .line 634
    const-string/jumbo v7, "createVpnPostroutingChain"

    .line 635
    .line 636
    .line 637
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    const-string v6, "*mangle\n-N vpn_POSTROUTING\nCOMMIT\n"

    .line 641
    .line 642
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const-string v6, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 646
    .line 647
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const-string v6, "*mangle\n-A POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 651
    .line 652
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 656
    .line 657
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 658
    .line 659
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    const-string v6, "VpnRules"

    .line 663
    .line 664
    const-string v7, "addTcpmssClampRule"

    .line 665
    .line 666
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    const-string v6, "*mangle\n-A vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    .line 670
    .line 671
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 675
    .line 676
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 677
    .line 678
    const-string v7, "agentConnect"

    .line 679
    .line 680
    invoke-static {v4, v6, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    :cond_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 684
    .line 685
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .line 687
    :try_start_2
    const-string/jumbo v6, "wifi"

    .line 688
    .line 689
    .line 690
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 695
    .line 696
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 697
    .line 698
    .line 699
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    const/16 v6, 0xd

    .line 701
    .line 702
    if-ne v4, v6, :cond_18

    .line 703
    .line 704
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 705
    .line 706
    if-nez v4, :cond_17

    .line 707
    .line 708
    new-instance v4, Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .line 712
    .line 713
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 714
    .line 715
    :cond_17
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 716
    .line 717
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 718
    .line 719
    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 720
    .line 721
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    if-eqz v6, :cond_18

    .line 730
    .line 731
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v6

    .line 735
    check-cast v6, Landroid/net/LinkAddress;

    .line 736
    .line 737
    const-string v7, "LegacyVpnRunner"

    .line 738
    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    .line 744
    const-string v9, "addVpnRuleForTethering :"

    .line 745
    .line 746
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v9

    .line 753
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v8

    .line 760
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 764
    .line 765
    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 766
    .line 767
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v8

    .line 771
    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 775
    .line 776
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v6

    .line 780
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    goto :goto_7

    .line 784
    :catch_1
    move-exception v4

    .line 785
    const-string v6, "LegacyVpnRunner"

    .line 786
    .line 787
    const-string v7, "Failed to get hotspot status, assume hotpost disabled"

    .line 788
    .line 789
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .line 791
    .line 792
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    .line 794
    .line 795
    :cond_18
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 797
    .line 798
    .line 799
    move-result v4

    .line 800
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    const/16 v6, 0xf

    .line 809
    .line 810
    invoke-static {v4, v6, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 811
    .line 812
    .line 813
    goto/16 :goto_c

    .line 814
    .line 815
    :cond_19
    :try_start_5
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 816
    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .line 821
    .line 822
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 823
    .line 824
    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 825
    .line 826
    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 827
    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v7, " is gone"

    .line 832
    .line 833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    throw v4

    .line 844
    :goto_8
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 845
    :try_start_6
    throw v4

    .line 846
    :cond_1a
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 847
    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .line 852
    .line 853
    const-string v7, "Cannot parse the state: \'"

    .line 854
    .line 855
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v7, "\', \'"

    .line 859
    .line 860
    invoke-static {v7, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v6

    .line 864
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    const-string v6, "\'"

    .line 868
    .line 869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v5

    .line 876
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    throw v4

    .line 880
    :cond_1b
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 881
    .line 882
    const-string v5, "Cannot delete the abort"

    .line 883
    .line 884
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v4

    .line 888
    :cond_1c
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 889
    .line 890
    const-string v5, "Cannot delete the state"

    .line 891
    .line 892
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 896
    :goto_9
    const-string v5, "LegacyVpnRunner"

    .line 897
    .line 898
    const-string v6, "Aborting"

    .line 899
    .line 900
    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    .line 902
    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 908
    .line 909
    .line 910
    move-result v5

    .line 911
    const/16 v6, 0x10

    .line 912
    .line 913
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 921
    .line 922
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 923
    .line 924
    if-nez v1, :cond_1d

    .line 925
    .line 926
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 927
    .line 928
    invoke-static {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 929
    .line 930
    .line 931
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 932
    .line 933
    .line 934
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 935
    .line 936
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 937
    .line 938
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 946
    .line 947
    .line 948
    if-nez p1, :cond_1e

    .line 949
    .line 950
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 951
    .line 952
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-static {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    :cond_1e
    if-eqz p1, :cond_20

    .line 960
    .line 961
    const-string p1, "LegacyVpnRunner"

    .line 962
    .line 963
    const-string v0, "Sending message to clear connecting notification due to some connection error"

    .line 964
    .line 965
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .line 967
    .line 968
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 969
    .line 970
    const-string p1, "Vpn"

    .line 971
    .line 972
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 976
    .line 977
    .line 978
    move-result-wide v0

    .line 979
    :try_start_7
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 980
    .line 981
    if-eqz v3, :cond_1f

    .line 982
    .line 983
    new-instance v3, Landroid/content/Intent;

    .line 984
    .line 985
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 986
    .line 987
    .line 988
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 989
    .line 990
    .line 991
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    .line 993
    .line 994
    const-string/jumbo v4, "com.samsung.sVpn"

    .line 995
    .line 996
    .line 997
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    .line 999
    .line 1000
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    .line 1001
    .line 1002
    .line 1003
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 1004
    .line 1005
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    .line 1007
    .line 1008
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    .line 1009
    .line 1010
    .line 1011
    const-string/jumbo v5, "ipsec0"

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    .line 1016
    .line 1017
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    .line 1022
    .line 1023
    const-string/jumbo v2, "send message to clear connecting notificiation due to some error while connecting to server"

    .line 1024
    .line 1025
    .line 1026
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .line 1028
    .line 1029
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1030
    .line 1031
    new-instance v4, Landroid/os/UserHandle;

    .line 1032
    .line 1033
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1034
    .line 1035
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1036
    .line 1037
    .line 1038
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1042
    .line 1043
    .line 1044
    goto :goto_a

    .line 1045
    :catchall_1
    move-exception p0

    .line 1046
    goto :goto_b

    .line 1047
    :cond_1f
    :goto_a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    .line 1049
    .line 1050
    goto :goto_c

    .line 1051
    :catch_2
    :try_start_8
    const-string/jumbo p0, "unable to send message to clear connecting notification"

    .line 1052
    .line 1053
    .line 1054
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1055
    .line 1056
    .line 1057
    goto :goto_a

    .line 1058
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    .line 1060
    .line 1061
    throw p0

    .line 1062
    :cond_20
    :goto_c
    return-void
.end method

.method public final checkInterruptAndDelay(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xea60

    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-wide/16 p0, 0xc8

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 p0, 0x1

    .line 21
    .line 22
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 27
    .line 28
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 29
    .line 30
    const-string/jumbo v0, "checkpoint"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p1, "VPN bringup took too long"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final exitVpnRunner()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 5
    .line 6
    sget-object v1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method

.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v0, "LegacyVpnRunner"

    .line 5
    .line 6
    const-string v3, "Waiting"

    .line 7
    .line 8
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v3, "LegacyVpnRunner"

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    const-string v0, "LegacyVpnRunner"

    .line 15
    .line 16
    const-string v4, "Executing"

    .line 17
    .line 18
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, 0xc8

    .line 22
    .line 23
    const/16 v6, 0x14

    .line 24
    .line 25
    const-wide/16 v7, 0x32

    .line 26
    .line 27
    const/16 v9, 0xe

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 43
    .line 44
    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    move v12, v2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move v12, v2

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :catch_0
    move v12, v2

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_0
    :try_start_3
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 59
    .line 60
    .line 61
    move v12, v11

    .line 62
    :goto_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    .line 67
    .line 68
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 69
    .line 70
    iget-boolean v13, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 71
    .line 72
    if-nez v13, :cond_1

    .line 73
    .line 74
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v13, v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    goto/16 :goto_c

    .line 82
    .line 83
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    .line 84
    .line 85
    const-string v0, "LegacyVpnRunner"

    .line 86
    .line 87
    const-string/jumbo v13, "delete vpn rules"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_3

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Ljava/lang/String;

    .line 119
    .line 120
    const-string v14, "LegacyVpnRunner"

    .line 121
    .line 122
    new-instance v15, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string/jumbo v11, "deleteTetheringRule"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 144
    .line 145
    iget-object v11, v11, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 146
    .line 147
    invoke-virtual {v11, v13}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 153
    .line 154
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 166
    .line 167
    iget-object v11, v10, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 170
    .line 171
    iget v10, v10, Lcom/android/internal/net/VpnProfile;->type:I

    .line 172
    .line 173
    invoke-static {v13, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-static {v0, v9, v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 185
    .line 186
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    .line 188
    .line 189
    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 190
    .line 191
    .line 192
    :catch_1
    const/4 v0, 0x0

    .line 193
    :goto_3
    if-ge v0, v6, :cond_5

    .line 194
    .line 195
    :try_start_7
    const-string/jumbo v7, "charon"

    .line 196
    .line 197
    .line 198
    invoke-static {v7}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 202
    if-eqz v7, :cond_5

    .line 203
    .line 204
    :try_start_8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    .line 206
    .line 207
    :catch_2
    add-int/2addr v0, v2

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    :try_start_9
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 212
    .line 213
    const-string/jumbo v2, "charon"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    :goto_4
    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :catchall_2
    move-exception v0

    .line 225
    goto :goto_5

    .line 226
    :catchall_3
    move-exception v0

    .line 227
    const/4 v12, 0x0

    .line 228
    goto :goto_5

    .line 229
    :catch_3
    const/4 v12, 0x0

    .line 230
    goto/16 :goto_8

    .line 231
    .line 232
    :goto_5
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 233
    .line 234
    iget-boolean v13, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 235
    .line 236
    if-nez v13, :cond_6

    .line 237
    .line 238
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-static {v11, v13, v14}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    :cond_6
    if-nez v12, :cond_7

    .line 245
    .line 246
    const-string v11, "LegacyVpnRunner"

    .line 247
    .line 248
    const-string/jumbo v12, "delete vpn rules"

    .line 249
    .line 250
    .line 251
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 255
    .line 256
    iget-object v11, v11, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 257
    .line 258
    invoke-virtual {v11}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 259
    .line 260
    .line 261
    :cond_7
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 262
    .line 263
    if-eqz v11, :cond_9

    .line 264
    .line 265
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    if-eqz v12, :cond_8

    .line 274
    .line 275
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    check-cast v12, Ljava/lang/String;

    .line 280
    .line 281
    const-string v13, "LegacyVpnRunner"

    .line 282
    .line 283
    new-instance v14, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string/jumbo v15, "deleteTetheringRule"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 305
    .line 306
    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 307
    .line 308
    invoke-virtual {v13, v12}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_8
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 313
    .line 314
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 326
    .line 327
    iget-object v12, v11, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 328
    .line 329
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 330
    .line 331
    iget v11, v11, Lcom/android/internal/net/VpnProfile;->type:I

    .line 332
    .line 333
    invoke-static {v13, v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    filled-new-array {v12, v11}, [Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-static {v10, v9, v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 345
    .line 346
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 347
    .line 348
    .line 349
    :try_start_a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 350
    .line 351
    .line 352
    :catch_4
    const/4 v11, 0x0

    .line 353
    :goto_7
    if-ge v11, v6, :cond_a

    .line 354
    .line 355
    :try_start_b
    const-string/jumbo v7, "charon"

    .line 356
    .line 357
    .line 358
    invoke-static {v7}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 362
    if-eqz v7, :cond_a

    .line 363
    .line 364
    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 365
    .line 366
    .line 367
    :catch_5
    add-int/2addr v11, v2

    .line 368
    goto :goto_7

    .line 369
    :cond_a
    :try_start_d
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 372
    .line 373
    const-string/jumbo v2, "charon"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :catch_6
    :goto_8
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 384
    .line 385
    iget-boolean v11, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 386
    .line 387
    if-nez v11, :cond_b

    .line 388
    .line 389
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 390
    .line 391
    const/4 v13, 0x0

    .line 392
    invoke-static {v0, v11, v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 393
    .line 394
    .line 395
    :cond_b
    if-nez v12, :cond_c

    .line 396
    .line 397
    const-string v0, "LegacyVpnRunner"

    .line 398
    .line 399
    const-string/jumbo v11, "delete vpn rules"

    .line 400
    .line 401
    .line 402
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 406
    .line 407
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 410
    .line 411
    .line 412
    :cond_c
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 413
    .line 414
    if-eqz v0, :cond_e

    .line 415
    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    if-eqz v11, :cond_d

    .line 425
    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    check-cast v11, Ljava/lang/String;

    .line 431
    .line 432
    const-string v13, "LegacyVpnRunner"

    .line 433
    .line 434
    new-instance v14, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string/jumbo v15, "deleteTetheringRule"

    .line 440
    .line 441
    .line 442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v14

    .line 452
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 456
    .line 457
    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 458
    .line 459
    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_d
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 464
    .line 465
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 466
    .line 467
    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 477
    .line 478
    iget-object v11, v10, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 479
    .line 480
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 481
    .line 482
    iget v10, v10, Lcom/android/internal/net/VpnProfile;->type:I

    .line 483
    .line 484
    invoke-static {v13, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    invoke-static {v0, v9, v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 496
    .line 497
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 498
    .line 499
    .line 500
    :try_start_e
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 501
    .line 502
    .line 503
    :catch_7
    const/4 v14, 0x0

    .line 504
    :goto_a
    if-ge v14, v6, :cond_f

    .line 505
    .line 506
    :try_start_f
    const-string/jumbo v0, "charon"

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 513
    if-eqz v0, :cond_f

    .line 514
    .line 515
    :try_start_10
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 516
    .line 517
    .line 518
    :catch_8
    add-int/2addr v14, v2

    .line 519
    goto :goto_a

    .line 520
    :cond_f
    :try_start_11
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 521
    .line 522
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 523
    .line 524
    const-string/jumbo v2, "charon"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    goto/16 :goto_4

    .line 531
    .line 532
    :goto_b
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 533
    .line 534
    sget-object v2, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 537
    .line 538
    .line 539
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 540
    if-eqz v12, :cond_10

    .line 541
    .line 542
    :try_start_12
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 543
    .line 544
    const/4 v2, 0x0

    .line 545
    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 546
    .line 547
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 552
    .line 553
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 554
    .line 555
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnUidRanges(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 556
    .line 557
    .line 558
    :catch_9
    :cond_10
    return-void

    .line 559
    :goto_c
    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 560
    throw v0
.end method

.method public final stopLegacyDaemons()V
    .locals 2

    .line 1
    const-string v0, "LegacyVpnRunner"

    .line 2
    .line 3
    const-string/jumbo v1, "stopLegacyDaemons: begin"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 10
    .line 11
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :goto_0
    const/16 v0, 0x14

    .line 16
    .line 17
    const-string/jumbo v1, "charon"

    .line 18
    .line 19
    .line 20
    if-ge p0, v0, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-wide/16 v0, 0xc8

    .line 29
    .line 30
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    add-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final waitForDaemonsToStop()V
    .locals 5

    .line 1
    const-string v0, "LegacyVpnRunner"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    const-string/jumbo v1, "ipsec0"

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .line 28
    .line 29
    const-string v1, "Egress Iface ("

    .line 30
    .line 31
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/net/InetAddress;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-nez v3, :cond_2

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ") deactivated"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v1, "charon"

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    .line 112
    return-void

    .line 113
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 121
    .line 122
    const-string v1, ") doesn\'t exist"

    .line 123
    .line 124
    invoke-static {v2, p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_1
    const-string/jumbo p0, "charon Iface doesn\'t exist"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method
