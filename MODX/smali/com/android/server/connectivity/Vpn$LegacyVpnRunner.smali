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

    .line 3
    const-string v0, "LegacyVpnRunner"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;I)V

    .line 29
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 31
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;I)V

    .line 37
    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 39
    if-eqz p3, :cond_2

    .line 41
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 43
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 45
    new-instance p2, Landroid/net/LocalSocket;

    .line 47
    invoke-direct {p2}, Landroid/net/LocalSocket;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 52
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 54
    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_1

    .line 66
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 68
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 71
    move-result-object p2

    .line 72
    array-length p3, p2

    .line 73
    const/4 p4, 0x0

    .line 74
    :goto_0
    if-ge p4, p3, :cond_1

    .line 76
    aget-object v0, p2, p4

    .line 78
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 100
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 106
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 111
    move-result p3

    .line 112
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 121
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 124
    move-result-object p2

    .line 125
    iget-object p3, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 127
    iget-object p4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 129
    invoke-virtual {p3, p4, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance p2, Landroid/content/IntentFilter;

    .line 134
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 139
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 144
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 146
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string p1, "Arguments must not be null"

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p0
.end method


# virtual methods
.method public final bringup(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 5
    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 13
    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez p1, :cond_2

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 22
    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$Dependencies;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 37
    aget-object v7, v7, v3

    .line 39
    if-eqz v7, :cond_1

    .line 41
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 43
    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 45
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 51
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 53
    aput-object v6, v7, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 58
    const-string v5, "Invalid server argument for charon"

    .line 60
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v4

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v4

    .line 72
    goto/16 :goto_9

    .line 74
    :cond_2
    move-object v5, v4

    .line 75
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    move-result-wide v6

    .line 79
    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 81
    :goto_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 83
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 85
    const-string/jumbo v7, "charon"

    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {v7}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x1

    .line 96
    if-nez v6, :cond_3

    .line 98
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 104
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v6, Ljava/io/File;

    .line 111
    const-string v8, "/data/misc/vpn/state"

    .line 113
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 119
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 122
    move-result v8

    .line 123
    if-nez v8, :cond_1c

    .line 125
    new-instance v8, Ljava/io/File;

    .line 127
    const-string v9, "/data/misc/vpn/abort"

    .line 129
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 135
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_1b

    .line 141
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 143
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 145
    const-string/jumbo v11, "execute"

    .line 148
    invoke-virtual {v9, v10, v11}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 151
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 153
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 155
    const-string/jumbo v10, "charon"

    .line 158
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 164
    :goto_3
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 166
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 168
    const-string/jumbo v10, "charon"

    .line 171
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 177
    move-result v9

    .line 178
    if-nez v9, :cond_4

    .line 180
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 183
    goto :goto_3

    .line 184
    :cond_4
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 186
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 188
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 190
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[Ljava/lang/String;

    .line 192
    new-instance v12, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;

    .line 194
    invoke-direct {v12, p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/connectivity/Vpn$VpnRunner;)V

    .line 197
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static {v10, v11, v12}, Lcom/android/server/connectivity/Vpn$Dependencies;->sendArgumentsToDaemon(Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 203
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 206
    move-result v9

    .line 207
    if-nez v9, :cond_7

    .line 209
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 211
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 213
    const-string/jumbo v10, "charon"

    .line 216
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_6

    .line 225
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 228
    move-result v9

    .line 229
    if-nez v9, :cond_5

    .line 231
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 234
    goto :goto_4

    .line 235
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 237
    const-string/jumbo v5, "charon is shutdown"

    .line 240
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    throw v4

    .line 244
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 246
    const-string/jumbo v5, "charon is dead"

    .line 249
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    throw v4

    .line 253
    :cond_7
    invoke-static {v6, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object v6

    .line 257
    const-string v8, "\n"

    .line 259
    const/4 v9, -0x1

    .line 260
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 263
    move-result-object v6

    .line 264
    array-length v8, v6

    .line 265
    const/4 v9, 0x7

    .line 266
    if-ne v8, v9, :cond_1a

    .line 268
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 270
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 272
    aget-object v9, v6, v3

    .line 274
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 277
    move-result-object v9

    .line 278
    iput-object v9, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 280
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 282
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 284
    aget-object v9, v6, v7

    .line 286
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 289
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 291
    aget-object v9, v6, v7

    .line 293
    const-string v10, "/"

    .line 295
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 298
    move-result-object v9

    .line 299
    aget-object v9, v9, v3

    .line 301
    iput-object v9, v8, Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;

    .line 303
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 305
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 307
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 309
    if-eqz v8, :cond_8

    .line 311
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_9

    .line 317
    :cond_8
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 319
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 321
    aget-object v9, v6, v2

    .line 323
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 326
    :cond_9
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 328
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 330
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 332
    if-eqz v8, :cond_a

    .line 334
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_b

    .line 340
    :cond_a
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 342
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 344
    aget-object v9, v6, v2

    .line 346
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 349
    :cond_b
    if-nez p1, :cond_d

    .line 351
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 353
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 355
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 357
    if-eqz v8, :cond_c

    .line 359
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 362
    move-result v8

    .line 363
    if-eqz v8, :cond_d

    .line 365
    :cond_c
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 367
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 369
    aget-object v9, v6, v2

    .line 371
    invoke-virtual {v8, v9}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 374
    :cond_d
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 376
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 378
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 380
    if-eqz v8, :cond_e

    .line 382
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 385
    move-result v8

    .line 386
    if-nez v8, :cond_f

    .line 388
    :cond_e
    const/4 v8, 0x3

    .line 389
    aget-object v8, v6, v8

    .line 391
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 394
    move-result-object v8

    .line 395
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 398
    move-result v9

    .line 399
    if-nez v9, :cond_f

    .line 401
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 403
    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 405
    const-string v10, " "

    .line 407
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 410
    move-result-object v8

    .line 411
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 414
    move-result-object v8

    .line 415
    iput-object v8, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 417
    :cond_f
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 419
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 421
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 423
    const/4 v9, 0x4

    .line 424
    if-eqz v8, :cond_10

    .line 426
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 429
    move-result v8

    .line 430
    if-nez v8, :cond_11

    .line 432
    :cond_10
    aget-object v6, v6, v9

    .line 434
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 441
    move-result v8

    .line 442
    if-nez v8, :cond_11

    .line 444
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 446
    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 448
    const-string v10, " "

    .line 450
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 453
    move-result-object v6

    .line 454
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 457
    move-result-object v6

    .line 458
    iput-object v6, v8, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 460
    :cond_11
    if-nez p1, :cond_14

    .line 462
    instance-of v6, v5, Ljava/net/Inet4Address;

    .line 464
    const/16 v8, 0x9

    .line 466
    if-eqz v6, :cond_12

    .line 468
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 470
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 472
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 474
    new-instance v10, Landroid/net/RouteInfo;

    .line 476
    new-instance v11, Landroid/net/IpPrefix;

    .line 478
    const/16 v12, 0x20

    .line 480
    invoke-direct {v11, v5, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 483
    invoke-direct {v10, v11, v4, v4, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 486
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    goto :goto_5

    .line 490
    :cond_12
    instance-of v6, v5, Ljava/net/Inet6Address;

    .line 492
    if-eqz v6, :cond_13

    .line 494
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 496
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 498
    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 500
    new-instance v10, Landroid/net/RouteInfo;

    .line 502
    new-instance v11, Landroid/net/IpPrefix;

    .line 504
    const/16 v12, 0x80

    .line 506
    invoke-direct {v11, v5, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 509
    invoke-direct {v10, v11, v4, v4, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 512
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    goto :goto_5

    .line 516
    :cond_13
    const-string v6, "LegacyVpnRunner"

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    .line 520
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    const-string v10, "Unknown IP address family for VPN endpoint: "

    .line 525
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    move-result-object v5

    .line 535
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_5
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 540
    iget-boolean v6, v5, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 542
    if-nez v6, :cond_14

    .line 544
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 546
    invoke-static {v5, v6, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 549
    :cond_14
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 551
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 554
    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 559
    move-result-wide v7

    .line 560
    iput-wide v7, v6, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 562
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 565
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 567
    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 569
    iget-object v8, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 571
    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 573
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    .line 579
    move-result v6

    .line 580
    if-eqz v6, :cond_19

    .line 582
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 584
    iget-object v7, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 586
    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 588
    iput-object v7, v6, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 590
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 593
    if-eqz p1, :cond_15

    .line 595
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 597
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentConnectForKnoxInterface(Lcom/android/server/connectivity/Vpn;)V

    .line 600
    goto :goto_6

    .line 601
    :catchall_0
    move-exception v4

    .line 602
    goto/16 :goto_8

    .line 604
    :cond_15
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 606
    invoke-virtual {v6, v4}, Lcom/android/server/connectivity/Vpn;->agentConnect(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V

    .line 609
    :goto_6
    const-string v4, "LegacyVpnRunner"

    .line 611
    const-string v6, "Connected!"

    .line 613
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez p1, :cond_16

    .line 618
    const-string v4, "LegacyVpnRunner"

    .line 620
    const-string v6, "add vpn rules"

    .line 622
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 627
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 629
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    const-string v6, "VpnRules"

    .line 634
    const-string/jumbo v7, "createVpnPostroutingChain"

    .line 637
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v6, "*mangle\n-N vpn_POSTROUTING\nCOMMIT\n"

    .line 642
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 645
    const-string v6, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 647
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 650
    const-string v6, "*mangle\n-A POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 652
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 655
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 657
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 659
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    const-string v6, "VpnRules"

    .line 664
    const-string v7, "addTcpmssClampRule"

    .line 666
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v6, "*mangle\n-A vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    .line 671
    invoke-virtual {v4, v9, v6}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 674
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 676
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 678
    const-string v7, "agentConnect"

    .line 680
    invoke-static {v4, v6, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 683
    :cond_16
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 685
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :try_start_2
    const-string/jumbo v6, "wifi"

    .line 690
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 693
    move-result-object v4

    .line 694
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 696
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 699
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    const/16 v6, 0xd

    .line 702
    if-ne v4, v6, :cond_18

    .line 704
    :try_start_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 706
    if-nez v4, :cond_17

    .line 708
    new-instance v4, Ljava/util/ArrayList;

    .line 710
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 713
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 715
    :cond_17
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 717
    iget-object v4, v4, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 719
    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 721
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 724
    move-result-object v4

    .line 725
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 728
    move-result v6

    .line 729
    if-eqz v6, :cond_18

    .line 731
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 734
    move-result-object v6

    .line 735
    check-cast v6, Landroid/net/LinkAddress;

    .line 737
    const-string v7, "LegacyVpnRunner"

    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    .line 741
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    const-string v9, "addVpnRuleForTethering :"

    .line 746
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 752
    move-result-object v9

    .line 753
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 759
    move-result-object v8

    .line 760
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 765
    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 767
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 770
    move-result-object v8

    .line 771
    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 774
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 776
    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    .line 779
    move-result-object v6

    .line 780
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    goto :goto_7

    .line 784
    :catch_1
    move-exception v4

    .line 785
    const-string v6, "LegacyVpnRunner"

    .line 787
    const-string v7, "Failed to get hotspot status, assume hotpost disabled"

    .line 789
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 795
    :cond_18
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 799
    move-result v4

    .line 800
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 803
    move-result v4

    .line 804
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 807
    move-result-object v5

    .line 808
    const/16 v6, 0xf

    .line 810
    invoke-static {v4, v6, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 813
    goto/16 :goto_c

    .line 815
    :cond_19
    :try_start_5
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    .line 819
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 824
    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 826
    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    const-string v7, " is gone"

    .line 833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    move-result-object v6

    .line 840
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    .line 850
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    const-string v7, "Cannot parse the state: \'"

    .line 855
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v7, "\', \'"

    .line 860
    invoke-static {v7, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 863
    move-result-object v6

    .line 864
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v6, "\'"

    .line 869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    move-result-object v5

    .line 876
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 879
    throw v4

    .line 880
    :cond_1b
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 882
    const-string v5, "Cannot delete the abort"

    .line 884
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 887
    throw v4

    .line 888
    :cond_1c
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 890
    const-string v5, "Cannot delete the state"

    .line 892
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 895
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 896
    :goto_9
    const-string v5, "LegacyVpnRunner"

    .line 898
    const-string v6, "Aborting"

    .line 900
    invoke-static {v5, v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 906
    move-result v5

    .line 907
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 910
    move-result v5

    .line 911
    const/16 v6, 0x10

    .line 913
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 916
    move-result-object v0

    .line 917
    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 922
    iget-boolean v1, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 924
    if-nez v1, :cond_1d

    .line 926
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 928
    invoke-static {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 931
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 934
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 936
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 938
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 941
    move-result-object v3

    .line 942
    invoke-virtual {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 948
    if-nez p1, :cond_1e

    .line 950
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 952
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 955
    move-result-object v3

    .line 956
    invoke-static {v0, v1, v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 959
    :cond_1e
    if-eqz p1, :cond_20

    .line 961
    const-string p1, "LegacyVpnRunner"

    .line 963
    const-string v0, "Sending message to clear connecting notification due to some connection error"

    .line 965
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 970
    const-string p1, "Vpn"

    .line 972
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 978
    move-result-wide v0

    .line 979
    :try_start_7
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 981
    if-eqz v3, :cond_1f

    .line 983
    new-instance v3, Landroid/content/Intent;

    .line 985
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 988
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 991
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string/jumbo v4, "com.samsung.sVpn"

    .line 997
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    .line 1003
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 1005
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

    .line 1011
    const-string/jumbo v5, "ipsec0"

    .line 1014
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

    .line 1020
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string/jumbo v2, "send message to clear connecting notificiation due to some error while connecting to server"

    .line 1026
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 1031
    new-instance v4, Landroid/os/UserHandle;

    .line 1033
    iget p0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 1035
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1038
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_VPN_SOLUTION"

    .line 1041
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

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

    .line 1050
    goto :goto_c

    .line 1051
    :catch_2
    :try_start_8
    const-string/jumbo p0, "unable to send message to clear connecting notification"

    .line 1054
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1057
    goto :goto_a

    .line 1058
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0xea60

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-gtz v0, :cond_1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const-wide/16 p0, 0xc8

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/16 p0, 0x1

    .line 22
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 28
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 30
    const-string/jumbo v0, "checkpoint"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 36
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    const-string p1, "VPN bringup took too long"

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public final exitVpnRunner()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 6
    sget-object v1, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 8
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 13
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 22
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 24
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return-void
.end method

.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v0, "LegacyVpnRunner"

    .line 6
    const-string v3, "Waiting"

    .line 8
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string v3, "LegacyVpnRunner"

    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    const-string v0, "LegacyVpnRunner"

    .line 16
    const-string v4, "Executing"

    .line 18
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    const-wide/16 v4, 0xc8

    .line 23
    const/16 v6, 0x14

    .line 25
    const-wide/16 v7, 0x32

    .line 27
    const/16 v9, 0xe

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z

    .line 39
    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 40
    if-nez v0, :cond_0

    .line 42
    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 44
    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 46
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    .line 55
    :catch_0
    move v12, v2

    .line 56
    goto/16 :goto_8

    .line 58
    :cond_0
    :try_start_3
    invoke-virtual {v1, v11}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 61
    move v12, v11

    .line 62
    :goto_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 65
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    :try_start_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 70
    iget-boolean v13, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 72
    if-nez v13, :cond_1

    .line 74
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 76
    invoke-static {v0, v13, v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    goto/16 :goto_c

    .line 83
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    .line 85
    const-string v0, "LegacyVpnRunner"

    .line 87
    const-string/jumbo v13, "delete vpn rules"

    .line 90
    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 95
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 100
    :cond_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 102
    if-eqz v0, :cond_4

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v0

    .line 108
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Ljava/lang/String;

    .line 120
    const-string v14, "LegacyVpnRunner"

    .line 122
    new-instance v15, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string/jumbo v11, "deleteTetheringRule"

    .line 130
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v11

    .line 140
    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 145
    iget-object v11, v11, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 147
    invoke-virtual {v11, v13}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 150
    const/4 v11, 0x0

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 154
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 160
    move-result v0

    .line 161
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 164
    move-result v0

    .line 165
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 167
    iget-object v11, v10, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 169
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 171
    iget v10, v10, Lcom/android/internal/net/VpnProfile;->type:I

    .line 173
    invoke-static {v13, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 176
    move-result-object v10

    .line 177
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 180
    move-result-object v10

    .line 181
    invoke-static {v0, v9, v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 184
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 186
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 189
    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    :catch_1
    const/4 v0, 0x0

    .line 193
    :goto_3
    if-ge v0, v6, :cond_5

    .line 195
    :try_start_7
    const-string/jumbo v7, "charon"

    .line 198
    invoke-static {v7}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 201
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 202
    if-eqz v7, :cond_5

    .line 204
    :try_start_8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 207
    :catch_2
    add-int/2addr v0, v2

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    :try_start_9
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 211
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 213
    const-string/jumbo v2, "charon"

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    :goto_4
    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 222
    goto/16 :goto_b

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

    .line 232
    :goto_5
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 234
    iget-boolean v13, v11, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 236
    if-nez v13, :cond_6

    .line 238
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-static {v11, v13, v14}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 244
    :cond_6
    if-nez v12, :cond_7

    .line 246
    const-string v11, "LegacyVpnRunner"

    .line 248
    const-string/jumbo v12, "delete vpn rules"

    .line 251
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 256
    iget-object v11, v11, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 258
    invoke-virtual {v11}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 261
    :cond_7
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 263
    if-eqz v11, :cond_9

    .line 265
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 268
    move-result-object v11

    .line 269
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    move-result v12

    .line 273
    if-eqz v12, :cond_8

    .line 275
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    move-result-object v12

    .line 279
    check-cast v12, Ljava/lang/String;

    .line 281
    const-string v13, "LegacyVpnRunner"

    .line 283
    new-instance v14, Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string/jumbo v15, "deleteTetheringRule"

    .line 291
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v14

    .line 301
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 306
    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 308
    invoke-virtual {v13, v12}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 311
    goto :goto_6

    .line 312
    :cond_8
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 314
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 320
    move-result v10

    .line 321
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 324
    move-result v10

    .line 325
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 327
    iget-object v12, v11, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 329
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 331
    iget v11, v11, Lcom/android/internal/net/VpnProfile;->type:I

    .line 333
    invoke-static {v13, v11}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 336
    move-result-object v11

    .line 337
    filled-new-array {v12, v11}, [Ljava/lang/Object;

    .line 340
    move-result-object v11

    .line 341
    invoke-static {v10, v9, v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 344
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 346
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 349
    :try_start_a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 352
    :catch_4
    const/4 v11, 0x0

    .line 353
    :goto_7
    if-ge v11, v6, :cond_a

    .line 355
    :try_start_b
    const-string/jumbo v7, "charon"

    .line 358
    invoke-static {v7}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 361
    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 362
    if-eqz v7, :cond_a

    .line 364
    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 367
    :catch_5
    add-int/2addr v11, v2

    .line 368
    goto :goto_7

    .line 369
    :cond_a
    :try_start_d
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 371
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 373
    const-string/jumbo v2, "charon"

    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 382
    throw v0

    .line 383
    :catch_6
    :goto_8
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 385
    iget-boolean v11, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    .line 387
    if-nez v11, :cond_b

    .line 389
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 391
    const/4 v13, 0x0

    .line 392
    invoke-static {v0, v11, v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 395
    :cond_b
    if-nez v12, :cond_c

    .line 397
    const-string v0, "LegacyVpnRunner"

    .line 399
    const-string/jumbo v11, "delete vpn rules"

    .line 402
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 407
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 409
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 412
    :cond_c
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 414
    if-eqz v0, :cond_e

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 419
    move-result-object v0

    .line 420
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    move-result v11

    .line 424
    if-eqz v11, :cond_d

    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    move-result-object v11

    .line 430
    check-cast v11, Ljava/lang/String;

    .line 432
    const-string v13, "LegacyVpnRunner"

    .line 434
    new-instance v14, Ljava/lang/StringBuilder;

    .line 436
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    const-string/jumbo v15, "deleteTetheringRule"

    .line 442
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v14

    .line 452
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 457
    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;

    .line 459
    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 462
    goto :goto_9

    .line 463
    :cond_d
    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 465
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 471
    move-result v0

    .line 472
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 475
    move-result v0

    .line 476
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 478
    iget-object v11, v10, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 480
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 482
    iget v10, v10, Lcom/android/internal/net/VpnProfile;->type:I

    .line 484
    invoke-static {v13, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mgetVpnTypeString(Lcom/android/server/connectivity/Vpn;I)Ljava/lang/String;

    .line 487
    move-result-object v10

    .line 488
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 491
    move-result-object v10

    .line 492
    invoke-static {v0, v9, v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 495
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 497
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 500
    :try_start_e
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 503
    :catch_7
    const/4 v14, 0x0

    .line 504
    :goto_a
    if-ge v14, v6, :cond_f

    .line 506
    :try_start_f
    const-string/jumbo v0, "charon"

    .line 509
    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 512
    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 513
    if-eqz v0, :cond_f

    .line 515
    :try_start_10
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 518
    :catch_8
    add-int/2addr v14, v2

    .line 519
    goto :goto_a

    .line 520
    :cond_f
    :try_start_11
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 522
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 524
    const-string/jumbo v2, "charon"

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    goto/16 :goto_4

    .line 532
    :goto_b
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 534
    sget-object v2, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 536
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->agentDisconnect$1()V

    .line 539
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 540
    if-eqz v12, :cond_10

    .line 542
    :try_start_12
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 544
    const/4 v2, 0x0

    .line 545
    iput-boolean v2, v0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 547
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 550
    move-result-object v0

    .line 551
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 553
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mProfileName:Ljava/lang/String;

    .line 555
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnUidRanges(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

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

    .line 3
    const-string/jumbo v1, "stopLegacyDaemons: begin"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:Landroid/net/LocalSocket;

    .line 11
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 14
    const/4 p0, 0x0

    .line 15
    :goto_0
    const/16 v0, 0x14

    .line 17
    const-string/jumbo v1, "charon"

    .line 20
    if-ge p0, v0, :cond_0

    .line 22
    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const-wide/16 v0, 0xc8

    .line 30
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    add-int/lit8 p0, p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final waitForDaemonsToStop()V
    .locals 5

    .line 1
    const-string v0, "LegacyVpnRunner"

    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 5
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 19
    :try_start_0
    const-string/jumbo v1, "ipsec0"

    .line 22
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    const-string v1, "Egress Iface ("

    .line 31
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 33
    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/net/InetAddress;

    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-nez v3, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 78
    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ") deactivated"

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 98
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-string/jumbo v1, "charon"

    .line 106
    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_0

    .line 112
    return-void

    .line 113
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 120
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;

    .line 122
    const-string v1, ") doesn\'t exist"

    .line 124
    invoke-static {v2, p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    goto :goto_1

    .line 128
    :catch_1
    const-string/jumbo p0, "charon Iface doesn\'t exist"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    return-void
.end method
