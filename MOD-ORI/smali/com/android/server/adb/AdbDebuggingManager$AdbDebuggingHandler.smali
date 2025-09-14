.class public final Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdbEnabledRefCount:I

.field mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

.field public mAdbNotificationShown:Z

.field public final mAuthTimeObserver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

.field public final mBroadcastReceiver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 15
    .line 16
    new-instance p2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    .line 17
    .line 18
    invoke-direct {p2, p0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    .line 22
    .line 23
    iput-object p3, p1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v0, "wifi"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "AdbDebuggingManager"

    .line 20
    .line 21
    if-eqz v0, :cond_8

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_5

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const-string v4, "<unknown ssid>"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_6

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    :goto_0
    if-ge v5, v4, :cond_4

    .line 68
    .line 69
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 74
    .line 75
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-ne v6, v7, :cond_3

    .line 82
    .line 83
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 88
    .line 89
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 90
    .line 91
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    if-nez v3, :cond_6

    .line 95
    .line 96
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const-string p0, "Unable to get ssid of the wifi AP."

    .line 99
    .line 100
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    const-string p0, "Unable to get the wifi ap\'s BSSID."

    .line 121
    .line 122
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_7
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object p0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v3, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_8
    :goto_2
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    const-string p0, "Not connected to any wireless network. Not enabling adbwifi."

    .line 139
    .line 140
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->initKeyStore()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, -0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    goto/16 :goto_10

    .line 20
    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readTempKeysFile()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_10

    .line 27
    .line 28
    :pswitch_2
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const-string p1, "AdbDebuggingManager"

    .line 31
    .line 32
    const-string v0, "adbd socket disconnected"

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 47
    .line 48
    iput-object v6, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 53
    .line 54
    if-eqz p1, :cond_32

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_10

    .line 60
    .line 61
    :pswitch_3
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const-string p1, "AdbDebuggingManager"

    .line 64
    .line 65
    const-string v0, "adbd socket connected"

    .line 66
    .line 67
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 71
    .line 72
    iget-boolean v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 73
    .line 74
    if-eqz v0, :cond_32

    .line 75
    .line 76
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_10

    .line 95
    .line 96
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 97
    .line 98
    iget-boolean v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 99
    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    goto/16 :goto_10

    .line 103
    .line 104
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 118
    .line 119
    const-string v0, "adb_wifi_enabled"

    .line 120
    .line 121
    invoke-static {p1, v0, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 130
    .line 131
    if-eqz p1, :cond_32

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 137
    .line 138
    iput-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 139
    .line 140
    goto/16 :goto_10

    .line 141
    .line 142
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(IZ)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 165
    .line 166
    monitor-enter v0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 170
    .line 171
    iput p1, v2, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 172
    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 175
    .line 176
    const-string p1, "adb_wifi_enabled"

    .line 177
    .line 178
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_10

    .line 182
    .line 183
    :catchall_0
    move-exception p0

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    throw p0

    .line 186
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Ljava/lang/String;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 193
    .line 194
    check-cast v0, Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_32

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 214
    .line 215
    check-cast p1, Ljava/util/HashSet;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_32

    .line 222
    .line 223
    invoke-virtual {p0, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_10

    .line 227
    .line 228
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p1, Ljava/lang/String;

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 233
    .line 234
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 235
    .line 236
    check-cast v0, Ljava/util/HashSet;

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_32

    .line 243
    .line 244
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_10

    .line 257
    .line 258
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p1, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    new-instance v0, Landroid/content/Intent;

    .line 267
    .line 268
    const-string/jumbo v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v1, "status"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    const-string v1, "adb_port"

    .line 281
    .line 282
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 290
    .line 291
    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_10

    .line 295
    .line 296
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p1, Landroid/os/Bundle;

    .line 299
    .line 300
    const-string/jumbo v0, "publicKey"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string/jumbo v0, "status"

    .line 308
    .line 309
    .line 310
    const-string/jumbo v2, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    .line 311
    .line 312
    .line 313
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 314
    .line 315
    if-nez p1, :cond_2

    .line 316
    .line 317
    new-instance p1, Landroid/content/Intent;

    .line 318
    .line 319
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    iget-object v0, v3, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 326
    .line 327
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 328
    .line 329
    invoke-static {v0, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_2
    new-instance v4, Landroid/content/Intent;

    .line 334
    .line 335
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    invoke-static {v3, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const-string v2, "\\s+"

    .line 346
    .line 347
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    array-length v5, v2

    .line 352
    if-le v5, v1, :cond_3

    .line 353
    .line 354
    aget-object v1, v2, v1

    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_3
    const-string/jumbo v1, "nouser@nohostname"

    .line 358
    .line 359
    .line 360
    :goto_0
    new-instance v2, Landroid/debug/PairDevice;

    .line 361
    .line 362
    invoke-direct {v2}, Landroid/debug/PairDevice;-><init>()V

    .line 363
    .line 364
    .line 365
    iput-object v0, v2, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 366
    .line 367
    iput-object v1, v2, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 368
    .line 369
    iput-boolean v7, v2, Landroid/debug/PairDevice;->connected:Z

    .line 370
    .line 371
    const-string/jumbo v0, "pair_device"

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    .line 376
    .line 377
    iget-object v0, v3, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 378
    .line 379
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 380
    .line 381
    invoke-static {v0, v4, v1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 385
    .line 386
    iget-object v1, v3, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 387
    .line 388
    invoke-interface {v1}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 389
    .line 390
    .line 391
    move-result-wide v1

    .line 392
    invoke-virtual {v0, p1, v1, v2, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 393
    .line 394
    .line 395
    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 399
    .line 400
    .line 401
    :goto_1
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_10

    .line 411
    .line 412
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 413
    .line 414
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 415
    .line 416
    const-string v0, "adb_wifi_enabled"

    .line 417
    .line 418
    invoke-static {p1, v0, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v5, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(IZ)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_10

    .line 425
    .line 426
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 427
    .line 428
    iget-boolean v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 429
    .line 430
    if-eqz v0, :cond_4

    .line 431
    .line 432
    goto/16 :goto_10

    .line 433
    .line 434
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Ljava/lang/String;

    .line 437
    .line 438
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 439
    .line 440
    if-ne p1, v1, :cond_5

    .line 441
    .line 442
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 443
    .line 444
    iget-object v2, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 445
    .line 446
    check-cast v2, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 452
    .line 453
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 454
    .line 455
    .line 456
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    if-eqz p1, :cond_32

    .line 461
    .line 462
    iget-object v2, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_6

    .line 469
    .line 470
    goto/16 :goto_10

    .line 471
    .line 472
    :cond_6
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 473
    .line 474
    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 478
    .line 479
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 480
    .line 481
    const-string v0, "adb_wifi_enabled"

    .line 482
    .line 483
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    .line 485
    .line 486
    new-instance p1, Landroid/content/IntentFilter;

    .line 487
    .line 488
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 489
    .line 490
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 499
    .line 500
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 501
    .line 502
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    .line 503
    .line 504
    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    .line 506
    .line 507
    const-string/jumbo p1, "persist.adb.tls_server.enable"

    .line 508
    .line 509
    .line 510
    const-string v0, "1"

    .line 511
    .line 512
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 516
    .line 517
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 518
    .line 519
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 520
    .line 521
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 522
    .line 523
    invoke-direct {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    .line 524
    .line 525
    .line 526
    iput-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 527
    .line 528
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 529
    .line 530
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 531
    .line 532
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 536
    .line 537
    .line 538
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 539
    .line 540
    iput-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 541
    .line 542
    const-string p0, "AdbDebuggingManager"

    .line 543
    .line 544
    const-string p1, "adb start wireless adb"

    .line 545
    .line 546
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    goto/16 :goto_10

    .line 550
    .line 551
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast p1, Ljava/lang/String;

    .line 554
    .line 555
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 556
    .line 557
    iget-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 558
    .line 559
    check-cast v1, Ljava/util/HashMap;

    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_8

    .line 574
    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Ljava/util/Map$Entry;

    .line 580
    .line 581
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    check-cast v3, Ljava/lang/String;

    .line 586
    .line 587
    iget-object v4, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 588
    .line 589
    invoke-static {v4, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    if-eqz v3, :cond_7

    .line 598
    .line 599
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    move-object v6, v0

    .line 604
    check-cast v6, Ljava/lang/String;

    .line 605
    .line 606
    :cond_8
    if-eqz v6, :cond_c

    .line 607
    .line 608
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_9

    .line 613
    .line 614
    goto :goto_2

    .line 615
    :cond_9
    const-string p1, "DD"

    .line 616
    .line 617
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 622
    .line 623
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 624
    .line 625
    if-eqz v0, :cond_a

    .line 626
    .line 627
    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :cond_a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 631
    .line 632
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 633
    .line 634
    check-cast v0, Ljava/util/HashMap;

    .line 635
    .line 636
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-eqz v0, :cond_b

    .line 641
    .line 642
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 643
    .line 644
    check-cast v0, Ljava/util/HashMap;

    .line 645
    .line 646
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 650
    .line 651
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 652
    .line 653
    .line 654
    :cond_b
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 655
    .line 656
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendPairedDevicesToUI(Ljava/util/Map;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_10

    .line 664
    .line 665
    :cond_c
    :goto_2
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 666
    .line 667
    const-string p0, "AdbDebuggingManager"

    .line 668
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v1, "Not a known fingerprint ["

    .line 672
    .line 673
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string p1, "]"

    .line 680
    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    goto/16 :goto_10

    .line 692
    .line 693
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast p1, Landroid/os/Bundle;

    .line 696
    .line 697
    const-string/jumbo v0, "serviceName"

    .line 698
    .line 699
    .line 700
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    const-string/jumbo v1, "password"

    .line 705
    .line 706
    .line 707
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 712
    .line 713
    new-instance v2, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 714
    .line 715
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 716
    .line 717
    invoke-direct {v2, v3, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    iput-object v2, v1, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 721
    .line 722
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 723
    .line 724
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 725
    .line 726
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->start()V

    .line 727
    .line 728
    .line 729
    goto/16 :goto_10

    .line 730
    .line 731
    :pswitch_e
    new-instance p1, Ljava/security/SecureRandom;

    .line 732
    .line 733
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 734
    .line 735
    .line 736
    const-string v0, ""

    .line 737
    .line 738
    :goto_3
    const/4 v2, 0x6

    .line 739
    if-ge v7, v2, :cond_d

    .line 740
    .line 741
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    const/16 v2, 0xa

    .line 746
    .line 747
    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    add-int/2addr v7, v1

    .line 759
    goto :goto_3

    .line 760
    :cond_d
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 761
    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string/jumbo v1, "updateUIPairCode: "

    .line 765
    .line 766
    .line 767
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    const-string v1, "AdbDebuggingManager"

    .line 778
    .line 779
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    new-instance p1, Landroid/content/Intent;

    .line 783
    .line 784
    const-string/jumbo v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    .line 785
    .line 786
    .line 787
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    const-string/jumbo v1, "pairing_code"

    .line 791
    .line 792
    .line 793
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    .line 795
    .line 796
    const-string/jumbo v1, "status"

    .line 797
    .line 798
    .line 799
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    .line 801
    .line 802
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 803
    .line 804
    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 805
    .line 806
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 807
    .line 808
    invoke-static {v1, p1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 809
    .line 810
    .line 811
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 812
    .line 813
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 814
    .line 815
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 816
    .line 817
    invoke-direct {v1, v2, v0, v6}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iput-object v1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 821
    .line 822
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 823
    .line 824
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 825
    .line 826
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->start()V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_10

    .line 830
    .line 831
    :pswitch_f
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 832
    .line 833
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 834
    .line 835
    if-eqz p1, :cond_32

    .line 836
    .line 837
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    .line 838
    .line 839
    .line 840
    :try_start_2
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 841
    .line 842
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 843
    .line 844
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 845
    .line 846
    .line 847
    goto :goto_4

    .line 848
    :catch_0
    move-exception p1

    .line 849
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 850
    .line 851
    const-string v0, "AdbDebuggingManager"

    .line 852
    .line 853
    const-string v1, "Error while waiting for pairing thread to quit."

    .line 854
    .line 855
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 859
    .line 860
    .line 861
    :goto_4
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 862
    .line 863
    iput-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 864
    .line 865
    goto/16 :goto_10

    .line 866
    .line 867
    :pswitch_10
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 868
    .line 869
    iget-boolean v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 870
    .line 871
    if-nez v0, :cond_e

    .line 872
    .line 873
    goto/16 :goto_10

    .line 874
    .line 875
    :cond_e
    iput-boolean v7, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 876
    .line 877
    invoke-static {p1, v6}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 878
    .line 879
    .line 880
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 881
    .line 882
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 883
    .line 884
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    .line 885
    .line 886
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 887
    .line 888
    .line 889
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 890
    .line 891
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 892
    .line 893
    if-eqz p1, :cond_f

    .line 894
    .line 895
    const-string v0, "DA"

    .line 896
    .line 897
    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    :cond_f
    invoke-virtual {p0, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->onAdbdWifiServerDisconnected(I)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_10

    .line 907
    .line 908
    :pswitch_11
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 909
    .line 910
    iget-boolean p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 911
    .line 912
    if-eqz p1, :cond_10

    .line 913
    .line 914
    goto/16 :goto_10

    .line 915
    .line 916
    :cond_10
    invoke-static {}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 917
    .line 918
    .line 919
    move-result-object p1

    .line 920
    invoke-virtual {p1}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->isKGAllowADB()Z

    .line 921
    .line 922
    .line 923
    move-result p1

    .line 924
    if-nez p1, :cond_11

    .line 925
    .line 926
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 927
    .line 928
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 929
    .line 930
    const-string p1, "adb_wifi_enabled"

    .line 931
    .line 932
    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    .line 934
    .line 935
    goto/16 :goto_10

    .line 936
    .line 937
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->getCurrentWifiApInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 938
    .line 939
    .line 940
    move-result-object p1

    .line 941
    if-nez p1, :cond_12

    .line 942
    .line 943
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 944
    .line 945
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 946
    .line 947
    const-string p1, "adb_wifi_enabled"

    .line 948
    .line 949
    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 950
    .line 951
    .line 952
    goto/16 :goto_10

    .line 953
    .line 954
    :cond_12
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 955
    .line 956
    iget-object v2, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 957
    .line 958
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 959
    .line 960
    iget-object v3, v3, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 961
    .line 962
    check-cast v3, Ljava/util/ArrayList;

    .line 963
    .line 964
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    if-eqz v3, :cond_13

    .line 969
    .line 970
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 971
    .line 972
    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    .line 973
    .line 974
    .line 975
    new-instance p1, Landroid/content/IntentFilter;

    .line 976
    .line 977
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 978
    .line 979
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 983
    .line 984
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 988
    .line 989
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 990
    .line 991
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mBroadcastReceiver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;

    .line 992
    .line 993
    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 994
    .line 995
    .line 996
    const-string/jumbo p1, "persist.adb.tls_server.enable"

    .line 997
    .line 998
    .line 999
    const-string v0, "1"

    .line 1000
    .line 1001
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1005
    .line 1006
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 1007
    .line 1008
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1009
    .line 1010
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 1011
    .line 1012
    invoke-direct {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    .line 1013
    .line 1014
    .line 1015
    iput-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 1016
    .line 1017
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1018
    .line 1019
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 1020
    .line 1021
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 1025
    .line 1026
    .line 1027
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1028
    .line 1029
    iput-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 1030
    .line 1031
    const-string p0, "AdbDebuggingManager"

    .line 1032
    .line 1033
    const-string p1, "adb start wireless adb"

    .line 1034
    .line 1035
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_10

    .line 1039
    .line 1040
    :cond_13
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1041
    .line 1042
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1043
    .line 1044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    .line 1046
    .line 1047
    new-instance v1, Ljava/util/ArrayList;

    .line 1048
    .line 1049
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 1053
    .line 1054
    const-string/jumbo v4, "ssid"

    .line 1055
    .line 1056
    .line 1057
    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 1064
    .line 1065
    const-string/jumbo v3, "bssid"

    .line 1066
    .line 1067
    .line 1068
    invoke-direct {v2, v3, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    const-string/jumbo v0, "startConfirmationForNetwork"

    .line 1075
    .line 1076
    .line 1077
    const-string v2, "AdbDebuggingManager"

    .line 1078
    .line 1079
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .line 1081
    .line 1082
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 1083
    .line 1084
    const-string/jumbo v3, "keyguard"

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    check-cast v0, Landroid/app/KeyguardManager;

    .line 1092
    .line 1093
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-eqz v0, :cond_14

    .line 1098
    .line 1099
    const-string/jumbo p1, "startConfirmationForNetwork: isLockScreenMode"

    .line 1100
    .line 1101
    .line 1102
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .line 1104
    .line 1105
    goto :goto_5

    .line 1106
    :cond_14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v3

    .line 1114
    const v4, 0x10402fc

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    iget-object v5, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 1126
    .line 1127
    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v5

    .line 1131
    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {p1, v4, v5, v1}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v5

    .line 1143
    if-nez v5, :cond_16

    .line 1144
    .line 1145
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result p1

    .line 1153
    if-eqz p1, :cond_15

    .line 1154
    .line 1155
    goto :goto_5

    .line 1156
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    const-string v0, "Unable to start customAdbWifiNetworkConfirmation[SecondaryUser]Component "

    .line 1159
    .line 1160
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v0, " as an Activity or a Service"

    .line 1167
    .line 1168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object p1

    .line 1175
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    .line 1177
    .line 1178
    :cond_16
    :goto_5
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1179
    .line 1180
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 1181
    .line 1182
    const-string p1, "adb_wifi_enabled"

    .line 1183
    .line 1184
    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_10

    .line 1188
    .line 1189
    :pswitch_12
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1190
    .line 1191
    const-string v0, "AdbDebuggingManager"

    .line 1192
    .line 1193
    const-string/jumbo v3, "handleMessage -> MESSAGE_ADB_CONNECTED_KEY"

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .line 1198
    .line 1199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1200
    .line 1201
    check-cast p1, Ljava/lang/String;

    .line 1202
    .line 1203
    if-eqz p1, :cond_19

    .line 1204
    .line 1205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    if-nez v0, :cond_17

    .line 1210
    .line 1211
    goto :goto_7

    .line 1212
    :cond_17
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1213
    .line 1214
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1215
    .line 1216
    check-cast v0, Ljava/util/HashMap;

    .line 1217
    .line 1218
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    if-nez v0, :cond_18

    .line 1223
    .line 1224
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1225
    .line 1226
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1227
    .line 1228
    check-cast v0, Ljava/util/HashMap;

    .line 1229
    .line 1230
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    goto :goto_6

    .line 1234
    :cond_18
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1235
    .line 1236
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1237
    .line 1238
    check-cast v0, Ljava/util/HashMap;

    .line 1239
    .line 1240
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v2

    .line 1244
    check-cast v2, Ljava/lang/Integer;

    .line 1245
    .line 1246
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v2

    .line 1250
    add-int/2addr v2, v1

    .line 1251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    :goto_6
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1259
    .line 1260
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1261
    .line 1262
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 1263
    .line 1264
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 1265
    .line 1266
    .line 1267
    move-result-wide v2

    .line 1268
    invoke-virtual {v0, p1, v2, v3, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 1269
    .line 1270
    .line 1271
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1272
    .line 1273
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 1280
    .line 1281
    .line 1282
    goto/16 :goto_10

    .line 1283
    .line 1284
    :cond_19
    :goto_7
    const-string p0, "AdbDebuggingManager"

    .line 1285
    .line 1286
    const-string p1, "Received a connected key message with an empty key"

    .line 1287
    .line 1288
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_10

    .line 1292
    .line 1293
    :pswitch_13
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1294
    .line 1295
    const-string p1, "AdbDebuggingManager"

    .line 1296
    .line 1297
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_UPDATE_KEYSTORE"

    .line 1298
    .line 1299
    .line 1300
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    .line 1302
    .line 1303
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1304
    .line 1305
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1306
    .line 1307
    check-cast p1, Ljava/util/HashMap;

    .line 1308
    .line 1309
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 1310
    .line 1311
    .line 1312
    move-result p1

    .line 1313
    if-nez p1, :cond_1b

    .line 1314
    .line 1315
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1316
    .line 1317
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1318
    .line 1319
    check-cast p1, Ljava/util/HashMap;

    .line 1320
    .line 1321
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1322
    .line 1323
    .line 1324
    move-result-object p1

    .line 1325
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1326
    .line 1327
    .line 1328
    move-result-object p1

    .line 1329
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1330
    .line 1331
    .line 1332
    move-result v0

    .line 1333
    if-eqz v0, :cond_1a

    .line 1334
    .line 1335
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    check-cast v0, Ljava/util/Map$Entry;

    .line 1340
    .line 1341
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1342
    .line 1343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    check-cast v0, Ljava/lang/String;

    .line 1348
    .line 1349
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1350
    .line 1351
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 1352
    .line 1353
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 1354
    .line 1355
    .line 1356
    move-result-wide v2

    .line 1357
    invoke-virtual {v1, v0, v2, v3, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 1358
    .line 1359
    .line 1360
    goto :goto_8

    .line 1361
    :cond_1a
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1362
    .line 1363
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 1367
    .line 1368
    .line 1369
    goto/16 :goto_10

    .line 1370
    .line 1371
    :cond_1b
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1372
    .line 1373
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1374
    .line 1375
    check-cast p1, Ljava/util/HashMap;

    .line 1376
    .line 1377
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 1378
    .line 1379
    .line 1380
    move-result p1

    .line 1381
    if-nez p1, :cond_32

    .line 1382
    .line 1383
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1384
    .line 1385
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 1386
    .line 1387
    .line 1388
    move-result v0

    .line 1389
    if-eqz v0, :cond_1c

    .line 1390
    .line 1391
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1392
    .line 1393
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1394
    .line 1395
    .line 1396
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 1397
    .line 1398
    .line 1399
    goto/16 :goto_10

    .line 1400
    .line 1401
    :pswitch_14
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1402
    .line 1403
    const-string p1, "AdbDebuggingManager"

    .line 1404
    .line 1405
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_PERSIST_KEYSTORE"

    .line 1406
    .line 1407
    .line 1408
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    .line 1410
    .line 1411
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1412
    .line 1413
    if-eqz p0, :cond_32

    .line 1414
    .line 1415
    const-string/jumbo p1, "wifiAP"

    .line 1416
    .line 1417
    .line 1418
    const-string v0, "adbKey"

    .line 1419
    .line 1420
    const-string/jumbo v2, "keyStore"

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 1424
    .line 1425
    .line 1426
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1427
    .line 1428
    check-cast v3, Ljava/util/HashMap;

    .line 1429
    .line 1430
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    if-eqz v3, :cond_1d

    .line 1435
    .line 1436
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 1437
    .line 1438
    check-cast v3, Ljava/util/ArrayList;

    .line 1439
    .line 1440
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1441
    .line 1442
    .line 1443
    move-result v3

    .line 1444
    if-eqz v3, :cond_1d

    .line 1445
    .line 1446
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 1447
    .line 1448
    .line 1449
    goto/16 :goto_10

    .line 1450
    .line 1451
    :cond_1d
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1452
    .line 1453
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1454
    .line 1455
    const-string v5, "AdbDebuggingManager"

    .line 1456
    .line 1457
    if-nez v3, :cond_1f

    .line 1458
    .line 1459
    iget-object v3, v4, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1460
    .line 1461
    if-eqz v3, :cond_1e

    .line 1462
    .line 1463
    new-instance v3, Landroid/util/AtomicFile;

    .line 1464
    .line 1465
    iget-object v7, v4, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1466
    .line 1467
    invoke-direct {v3, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1468
    .line 1469
    .line 1470
    iput-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1471
    .line 1472
    :cond_1e
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1473
    .line 1474
    if-nez v3, :cond_1f

    .line 1475
    .line 1476
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    const-string p1, "Unable to obtain the key file, "

    .line 1479
    .line 1480
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    iget-object p1, v4, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1484
    .line 1485
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    .line 1488
    const-string p1, ", for writing"

    .line 1489
    .line 1490
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object p0

    .line 1497
    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    .line 1499
    .line 1500
    goto/16 :goto_10

    .line 1501
    .line 1502
    :cond_1f
    :try_start_3
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1503
    .line 1504
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1508
    :try_start_4
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v7

    .line 1512
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1513
    .line 1514
    invoke-interface {v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-interface {v7, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1518
    .line 1519
    .line 1520
    const-string/jumbo v8, "version"

    .line 1521
    .line 1522
    .line 1523
    invoke-interface {v7, v6, v8, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    .line 1525
    .line 1526
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1527
    .line 1528
    check-cast v1, Ljava/util/HashMap;

    .line 1529
    .line 1530
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v1

    .line 1534
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v1

    .line 1538
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1539
    .line 1540
    .line 1541
    move-result v8

    .line 1542
    if-eqz v8, :cond_20

    .line 1543
    .line 1544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v8

    .line 1548
    check-cast v8, Ljava/util/Map$Entry;

    .line 1549
    .line 1550
    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1551
    .line 1552
    .line 1553
    const-string/jumbo v9, "key"

    .line 1554
    .line 1555
    .line 1556
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v10

    .line 1560
    check-cast v10, Ljava/lang/String;

    .line 1561
    .line 1562
    invoke-interface {v7, v6, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1563
    .line 1564
    .line 1565
    const-string/jumbo v9, "lastConnection"

    .line 1566
    .line 1567
    .line 1568
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v8

    .line 1572
    check-cast v8, Ljava/lang/Long;

    .line 1573
    .line 1574
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 1575
    .line 1576
    .line 1577
    move-result-wide v10

    .line 1578
    invoke-interface {v7, v6, v9, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1579
    .line 1580
    .line 1581
    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1582
    .line 1583
    .line 1584
    goto :goto_9

    .line 1585
    :catch_1
    move-exception p1

    .line 1586
    move-object v6, v3

    .line 1587
    goto :goto_b

    .line 1588
    :cond_20
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 1589
    .line 1590
    check-cast v0, Ljava/util/ArrayList;

    .line 1591
    .line 1592
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v0

    .line 1596
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1597
    .line 1598
    .line 1599
    move-result v1

    .line 1600
    if-eqz v1, :cond_21

    .line 1601
    .line 1602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v1

    .line 1606
    check-cast v1, Ljava/lang/String;

    .line 1607
    .line 1608
    invoke-interface {v7, v6, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1609
    .line 1610
    .line 1611
    const-string/jumbo v8, "bssid"

    .line 1612
    .line 1613
    .line 1614
    invoke-interface {v7, v6, v8, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1615
    .line 1616
    .line 1617
    invoke-interface {v7, v6, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1618
    .line 1619
    .line 1620
    goto :goto_a

    .line 1621
    :cond_21
    invoke-interface {v7, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1622
    .line 1623
    .line 1624
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1625
    .line 1626
    .line 1627
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1628
    .line 1629
    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1630
    .line 1631
    .line 1632
    goto :goto_c

    .line 1633
    :catch_2
    move-exception p1

    .line 1634
    :goto_b
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1635
    .line 1636
    const-string v0, "Caught an exception writing the key map: "

    .line 1637
    .line 1638
    invoke-static {v5, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    .line 1640
    .line 1641
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1642
    .line 1643
    invoke-virtual {p1, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1644
    .line 1645
    .line 1646
    :goto_c
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1647
    .line 1648
    check-cast p0, Ljava/util/HashMap;

    .line 1649
    .line 1650
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1651
    .line 1652
    .line 1653
    move-result-object p0

    .line 1654
    invoke-static {v4, p0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 1655
    .line 1656
    .line 1657
    goto/16 :goto_10

    .line 1658
    .line 1659
    :pswitch_15
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1660
    .line 1661
    const-string v0, "AdbDebuggingManager"

    .line 1662
    .line 1663
    const-string/jumbo v2, "handleMessage -> MESSAGE_ADB_DISCONNECT"

    .line 1664
    .line 1665
    .line 1666
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    .line 1668
    .line 1669
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1670
    .line 1671
    check-cast p1, Ljava/lang/String;

    .line 1672
    .line 1673
    if-eqz p1, :cond_23

    .line 1674
    .line 1675
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    if-lez v0, :cond_23

    .line 1680
    .line 1681
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1682
    .line 1683
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1684
    .line 1685
    check-cast v0, Ljava/util/HashMap;

    .line 1686
    .line 1687
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    move-result v0

    .line 1691
    if-eqz v0, :cond_24

    .line 1692
    .line 1693
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1694
    .line 1695
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1696
    .line 1697
    check-cast v0, Ljava/util/HashMap;

    .line 1698
    .line 1699
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    check-cast v0, Ljava/lang/Integer;

    .line 1704
    .line 1705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1706
    .line 1707
    .line 1708
    move-result v0

    .line 1709
    sub-int/2addr v0, v1

    .line 1710
    if-nez v0, :cond_22

    .line 1711
    .line 1712
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1713
    .line 1714
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1715
    .line 1716
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 1717
    .line 1718
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 1719
    .line 1720
    .line 1721
    move-result-wide v2

    .line 1722
    invoke-virtual {v0, p1, v2, v3, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 1723
    .line 1724
    .line 1725
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1726
    .line 1727
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 1731
    .line 1732
    .line 1733
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1734
    .line 1735
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1736
    .line 1737
    check-cast v0, Ljava/util/HashMap;

    .line 1738
    .line 1739
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    .line 1741
    .line 1742
    goto :goto_d

    .line 1743
    :cond_22
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1744
    .line 1745
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1746
    .line 1747
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v0

    .line 1751
    check-cast v2, Ljava/util/HashMap;

    .line 1752
    .line 1753
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    goto :goto_d

    .line 1757
    :cond_23
    const-string v0, "AdbDebuggingManager"

    .line 1758
    .line 1759
    const-string v1, "Received a disconnected key message with an empty key"

    .line 1760
    .line 1761
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    .line 1763
    .line 1764
    :cond_24
    move v1, v7

    .line 1765
    :goto_d
    const/4 v0, 0x7

    .line 1766
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 1767
    .line 1768
    .line 1769
    goto/16 :goto_10

    .line 1770
    .line 1771
    :pswitch_16
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1772
    .line 1773
    const-string p1, "AdbDebuggingManager"

    .line 1774
    .line 1775
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_CLEAR"

    .line 1776
    .line 1777
    .line 1778
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    .line 1780
    .line 1781
    const-string p1, "AdbDebuggingManager"

    .line 1782
    .line 1783
    const-string v0, "Received a request to clear the adb authorizations"

    .line 1784
    .line 1785
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    .line 1787
    .line 1788
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1789
    .line 1790
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 1791
    .line 1792
    check-cast p1, Ljava/util/HashMap;

    .line 1793
    .line 1794
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->initKeyStore()V

    .line 1798
    .line 1799
    .line 1800
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1801
    .line 1802
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 1803
    .line 1804
    check-cast p1, Ljava/util/HashSet;

    .line 1805
    .line 1806
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1807
    .line 1808
    .line 1809
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 1810
    .line 1811
    invoke-virtual {p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 1812
    .line 1813
    .line 1814
    const/16 p1, 0x9

    .line 1815
    .line 1816
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1817
    .line 1818
    .line 1819
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1820
    .line 1821
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 1822
    .line 1823
    const-string v0, "adb_disconnect_sessions_on_revoke"

    .line 1824
    .line 1825
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1826
    .line 1827
    .line 1828
    move-result p1

    .line 1829
    if-ne p1, v1, :cond_32

    .line 1830
    .line 1831
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1832
    .line 1833
    iget-boolean p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 1834
    .line 1835
    if-eqz p1, :cond_32

    .line 1836
    .line 1837
    :try_start_5
    const-string p1, "adbd"

    .line 1838
    .line 1839
    invoke-static {p1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    const-string p1, "adbd"

    .line 1843
    .line 1844
    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    .line 1845
    .line 1846
    sget-wide v1, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    .line 1847
    .line 1848
    invoke-static {p1, v0, v1, v2}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V

    .line 1849
    .line 1850
    .line 1851
    const-string p1, "adbd"

    .line 1852
    .line 1853
    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1854
    .line 1855
    .line 1856
    const-string p1, "adbd"

    .line 1857
    .line 1858
    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    .line 1859
    .line 1860
    invoke-static {p1, v0, v1, v2}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1861
    .line 1862
    .line 1863
    goto/16 :goto_10

    .line 1864
    .line 1865
    :catch_3
    move-exception p1

    .line 1866
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1867
    .line 1868
    const-string v0, "AdbDebuggingManager"

    .line 1869
    .line 1870
    const-string v1, "Timeout occurred waiting for adbd to cycle: "

    .line 1871
    .line 1872
    invoke-static {v0, v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1873
    .line 1874
    .line 1875
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1876
    .line 1877
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 1878
    .line 1879
    const-string p1, "adb_enabled"

    .line 1880
    .line 1881
    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1882
    .line 1883
    .line 1884
    goto/16 :goto_10

    .line 1885
    .line 1886
    :pswitch_17
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 1887
    .line 1888
    const-string v0, "AdbDebuggingManager"

    .line 1889
    .line 1890
    const-string/jumbo v2, "handleMessage -> MESSAGE_ADB_CONFIRM"

    .line 1891
    .line 1892
    .line 1893
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    .line 1895
    .line 1896
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1897
    .line 1898
    check-cast p1, Ljava/lang/String;

    .line 1899
    .line 1900
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1901
    .line 1902
    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    const-string v2, ""

    .line 1907
    .line 1908
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v0

    .line 1912
    if-eqz v0, :cond_25

    .line 1913
    .line 1914
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1915
    .line 1916
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 1917
    .line 1918
    if-eqz v0, :cond_32

    .line 1919
    .line 1920
    const-string v0, "AdbDebuggingManager"

    .line 1921
    .line 1922
    const-string/jumbo v1, "handleMessage -> MESSAGE_ADB_CONFIRM_DENY_2"

    .line 1923
    .line 1924
    .line 1925
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    .line 1927
    .line 1928
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1929
    .line 1930
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 1931
    .line 1932
    const-string v1, "NO"

    .line 1933
    .line 1934
    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 1935
    .line 1936
    .line 1937
    const/4 v0, 0x5

    .line 1938
    invoke-virtual {p0, v0, p1, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 1939
    .line 1940
    .line 1941
    goto/16 :goto_10

    .line 1942
    .line 1943
    :cond_25
    invoke-virtual {p0, v1, p1, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 1944
    .line 1945
    .line 1946
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1947
    .line 1948
    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v2

    .line 1952
    iput-object v2, v0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    .line 1953
    .line 1954
    const-string/jumbo v0, "persist.sys.auto_confirm"

    .line 1955
    .line 1956
    .line 1957
    const-string v2, "0"

    .line 1958
    .line 1959
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    const-string v2, "1"

    .line 1964
    .line 1965
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1966
    .line 1967
    .line 1968
    move-result v0

    .line 1969
    if-eqz v0, :cond_26

    .line 1970
    .line 1971
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1972
    .line 1973
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 1974
    .line 1975
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1980
    .line 1981
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1982
    .line 1983
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 1984
    .line 1985
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    .line 1987
    .line 1988
    goto/16 :goto_10

    .line 1989
    .line 1990
    :cond_26
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1991
    .line 1992
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    .line 1993
    .line 1994
    const-string v1, "AdbDebuggingManager"

    .line 1995
    .line 1996
    const-string/jumbo v2, "startConfirmation"

    .line 1997
    .line 1998
    .line 1999
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .line 2001
    .line 2002
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 2003
    .line 2004
    const-string/jumbo v3, "keyguard"

    .line 2005
    .line 2006
    .line 2007
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v2

    .line 2011
    check-cast v2, Landroid/app/KeyguardManager;

    .line 2012
    .line 2013
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 2014
    .line 2015
    .line 2016
    move-result v2

    .line 2017
    if-eqz v2, :cond_27

    .line 2018
    .line 2019
    const-string/jumbo p0, "startConfirmation: isLockScreenMode"

    .line 2020
    .line 2021
    .line 2022
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    .line 2024
    .line 2025
    goto/16 :goto_10

    .line 2026
    .line 2027
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    .line 2028
    .line 2029
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2030
    .line 2031
    .line 2032
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 2033
    .line 2034
    const-string/jumbo v4, "key"

    .line 2035
    .line 2036
    .line 2037
    invoke-direct {v3, v4, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2041
    .line 2042
    .line 2043
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    .line 2044
    .line 2045
    const-string/jumbo v3, "fingerprints"

    .line 2046
    .line 2047
    .line 2048
    invoke-direct {p1, v3, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2049
    .line 2050
    .line 2051
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    .line 2053
    .line 2054
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2055
    .line 2056
    .line 2057
    move-result p1

    .line 2058
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 2059
    .line 2060
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v0

    .line 2064
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2065
    .line 2066
    .line 2067
    move-result-object p1

    .line 2068
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 2069
    .line 2070
    .line 2071
    move-result v0

    .line 2072
    if-eqz v0, :cond_29

    .line 2073
    .line 2074
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 2075
    .line 2076
    if-eqz v0, :cond_28

    .line 2077
    .line 2078
    goto :goto_e

    .line 2079
    :cond_28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v0

    .line 2083
    const v3, 0x10402fa

    .line 2084
    .line 2085
    .line 2086
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v0

    .line 2090
    goto :goto_e

    .line 2091
    :cond_29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    const v3, 0x10402fb

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v0

    .line 2102
    :goto_e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v3

    .line 2106
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v4

    .line 2110
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v4

    .line 2114
    if-nez v4, :cond_32

    .line 2115
    .line 2116
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 2117
    .line 2118
    .line 2119
    move-result-object p1

    .line 2120
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    .line 2121
    .line 2122
    .line 2123
    move-result p0

    .line 2124
    if-eqz p0, :cond_2a

    .line 2125
    .line 2126
    goto/16 :goto_10

    .line 2127
    .line 2128
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2129
    .line 2130
    const-string/jumbo p1, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    .line 2131
    .line 2132
    .line 2133
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2134
    .line 2135
    .line 2136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    .line 2139
    const-string p1, " as an Activity or a Service"

    .line 2140
    .line 2141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    .line 2143
    .line 2144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2145
    .line 2146
    .line 2147
    move-result-object p0

    .line 2148
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    .line 2150
    .line 2151
    goto/16 :goto_10

    .line 2152
    .line 2153
    :pswitch_18
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2154
    .line 2155
    const-string p1, "AdbDebuggingManager"

    .line 2156
    .line 2157
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_DENY"

    .line 2158
    .line 2159
    .line 2160
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .line 2162
    .line 2163
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2164
    .line 2165
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 2166
    .line 2167
    if-eqz p1, :cond_32

    .line 2168
    .line 2169
    const-string p1, "AdbDebuggingManager"

    .line 2170
    .line 2171
    const-string v0, "Denying adb confirmation"

    .line 2172
    .line 2173
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    .line 2175
    .line 2176
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2177
    .line 2178
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 2179
    .line 2180
    const-string v0, "NO"

    .line 2181
    .line 2182
    invoke-virtual {p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 2186
    .line 2187
    .line 2188
    goto/16 :goto_10

    .line 2189
    .line 2190
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2191
    .line 2192
    check-cast v0, Ljava/lang/String;

    .line 2193
    .line 2194
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2195
    .line 2196
    invoke-static {v3, v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 2197
    .line 2198
    .line 2199
    move-result-object v3

    .line 2200
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2201
    .line 2202
    iget-object v4, v4, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    .line 2203
    .line 2204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2205
    .line 2206
    .line 2207
    move-result v4

    .line 2208
    if-nez v4, :cond_2b

    .line 2209
    .line 2210
    const-string p1, "AdbDebuggingManager"

    .line 2211
    .line 2212
    const-string v0, "Fingerprints do not match. Got "

    .line 2213
    .line 2214
    const-string v1, ", expected "

    .line 2215
    .line 2216
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v0

    .line 2220
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2221
    .line 2222
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    .line 2223
    .line 2224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2228
    .line 2229
    .line 2230
    move-result-object p0

    .line 2231
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    .line 2233
    .line 2234
    goto/16 :goto_10

    .line 2235
    .line 2236
    :cond_2b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2237
    .line 2238
    if-ne p1, v1, :cond_2c

    .line 2239
    .line 2240
    goto :goto_f

    .line 2241
    :cond_2c
    move v1, v7

    .line 2242
    :goto_f
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2243
    .line 2244
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 2245
    .line 2246
    if-eqz p1, :cond_2f

    .line 2247
    .line 2248
    const-string v3, "OK"

    .line 2249
    .line 2250
    invoke-virtual {p1, v3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    .line 2251
    .line 2252
    .line 2253
    if-eqz v1, :cond_2e

    .line 2254
    .line 2255
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2256
    .line 2257
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 2258
    .line 2259
    check-cast p1, Ljava/util/HashMap;

    .line 2260
    .line 2261
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 2262
    .line 2263
    .line 2264
    move-result p1

    .line 2265
    if-nez p1, :cond_2d

    .line 2266
    .line 2267
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2268
    .line 2269
    iget-object p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 2270
    .line 2271
    check-cast p1, Ljava/util/HashMap;

    .line 2272
    .line 2273
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    .line 2275
    .line 2276
    :cond_2d
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 2277
    .line 2278
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2279
    .line 2280
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 2281
    .line 2282
    invoke-interface {v2}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 2283
    .line 2284
    .line 2285
    move-result-wide v2

    .line 2286
    invoke-virtual {p1, v0, v2, v3, v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 2287
    .line 2288
    .line 2289
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2290
    .line 2291
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 2295
    .line 2296
    .line 2297
    :cond_2e
    const/4 p1, 0x2

    .line 2298
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->logAdbConnectionChanged(ILjava/lang/String;Z)V

    .line 2299
    .line 2300
    .line 2301
    :cond_2f
    const-string p0, "AdbDebuggingManager"

    .line 2302
    .line 2303
    const-string/jumbo p1, "handleMessage -> MESSAGE_ADB_ALLOW"

    .line 2304
    .line 2305
    .line 2306
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    .line 2308
    .line 2309
    goto :goto_10

    .line 2310
    :pswitch_1a
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2311
    .line 2312
    const-string p1, "AdbDebuggingManager"

    .line 2313
    .line 2314
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_DISABLED"

    .line 2315
    .line 2316
    .line 2317
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    .line 2319
    .line 2320
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2321
    .line 2322
    iget-boolean p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 2323
    .line 2324
    if-nez p1, :cond_30

    .line 2325
    .line 2326
    goto :goto_10

    .line 2327
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->stopAdbDebuggingThread()V

    .line 2328
    .line 2329
    .line 2330
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2331
    .line 2332
    iput-boolean v7, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 2333
    .line 2334
    goto :goto_10

    .line 2335
    :pswitch_1b
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2336
    .line 2337
    const-string p1, "AdbDebuggingManager"

    .line 2338
    .line 2339
    const-string/jumbo v0, "handleMessage -> MESSAGE_ADB_ENABLED"

    .line 2340
    .line 2341
    .line 2342
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    .line 2344
    .line 2345
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2346
    .line 2347
    iget-boolean p1, p1, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 2348
    .line 2349
    if-eqz p1, :cond_31

    .line 2350
    .line 2351
    goto :goto_10

    .line 2352
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->startAdbDebuggingThread()V

    .line 2353
    .line 2354
    .line 2355
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2356
    .line 2357
    iput-boolean v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 2358
    .line 2359
    :cond_32
    :goto_10
    return-void

    .line 2360
    nop

    .line 2361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initKeyStore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final logAdbConnectionChanged(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "adb_allowed_connection_time"

    .line 34
    .line 35
    const-wide/32 v4, 0x240c8400

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const-string p0, "Logging key "

    .line 45
    .line 46
    const-string v0, ", state = "

    .line 47
    .line 48
    const-string v1, ", alwaysAllow = "

    .line 49
    .line 50
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, ", lastConnectionTime = "

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ", authWindow = "

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p2, "AdbDebuggingManager"

    .line 78
    .line 79
    invoke-static {p2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const/16 v1, 0x90

    .line 83
    .line 84
    move v6, p1

    .line 85
    move v7, p3

    .line 86
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJIZ)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onAdbdWifiServerDisconnected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->showAdbConnectedNotification(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendServerConnectionState(IZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public scheduleJobToUpdateAdbKeyStore()J
    .locals 15

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "adb_allowed_connection_time"

    .line 17
    .line 18
    const-wide/32 v4, 0x240c8400

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v6, v2, v4

    .line 28
    .line 29
    const-wide/16 v7, -0x1

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    move-wide v11, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v6, v1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 36
    .line 37
    iget-object v6, v6, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 38
    .line 39
    invoke-interface {v6}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 44
    .line 45
    check-cast v1, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-wide v11, v7

    .line 56
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/Long;

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    add-long/2addr v13, v2

    .line 79
    sub-long/2addr v13, v9

    .line 80
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v13

    .line 84
    cmp-long v6, v11, v7

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    cmp-long v6, v13, v11

    .line 89
    .line 90
    if-gez v6, :cond_1

    .line 91
    .line 92
    :cond_2
    move-wide v11, v13

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    :goto_1
    cmp-long v1, v11, v7

    .line 95
    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    return-wide v7

    .line 99
    :cond_4
    cmp-long v1, v11, v4

    .line 100
    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const-wide/32 v1, 0x5265c00

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    const-wide/32 v3, 0xea60

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    .line 124
    .line 125
    return-wide v4
.end method

.method public final sendPairedDevicesToUI(Ljava/util/Map;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "devices_map"

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 22
    .line 23
    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final sendServerConnectionState(IZ)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x5

    .line 14
    :goto_0
    const-string/jumbo v1, "status"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string p2, "adb_port"

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    .line 31
    invoke-static {p0, v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final showAdbConnectedNotification(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string/jumbo v1, "notification"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/app/NotificationManager;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const-string p1, "AdbDebuggingManager"

    .line 31
    .line 32
    const-string v1, "Unable to setup notifications for wireless debugging"

    .line 33
    .line 34
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "android.software.leanback"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 53
    .line 54
    new-instance v1, Landroid/app/NotificationChannel;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const v3, 0x104019a

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x4

    .line 66
    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 76
    .line 77
    const/16 v1, 0x3e

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iget-object p1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {p1, v0}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 92
    .line 93
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbNotificationShown:Z

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 103
    .line 104
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 105
    .line 106
    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method public final startAdbDebuggingThread()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "startAdbDebuggingThread ref="

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "AdbDebuggingManager"

    .line 27
    .line 28
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 32
    .line 33
    if-le v0, v1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v0, "adb_allowed_connection_time"

    .line 37
    .line 38
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAuthTimeObserver:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$2;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, v1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 62
    .line 63
    iget-object v2, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->setHandler(Landroid/os/Handler;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v1, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final stopAdbDebuggingThread()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const-string v0, "AdbDebuggingManager"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "stopAdbDebuggingThread ref="

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbEnabledRefCount:I

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iput-boolean v1, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 61
    .line 62
    check-cast v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 73
    .line 74
    check-cast v0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->mAdbKeyStore:Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 107
    .line 108
    invoke-interface {v3}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 125
    .line 126
    check-cast v0, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 134
    .line 135
    check-cast v0, Ljava/util/HashSet;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->scheduleJobToUpdateAdbKeyStore()J

    .line 141
    .line 142
    .line 143
    return-void
.end method
