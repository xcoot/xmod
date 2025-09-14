.class public final Lcom/android/server/ExtendedEthernetServiceImpl;
.super Lcom/samsung/android/net/IExtendedEthernetManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

.field public final mContext:Landroid/content/Context;

.field public final mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

.field public mEthernetManager:Landroid/net/EthernetManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mIfaceMatch:Ljava/lang/String;

.field public final mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

.field public mIsNotiShown:Z

.field public mLastIntentState:Ljava/lang/String;

.field public final mNMService:Landroid/os/INetworkManagementService;

.field public final mStateListener:Lcom/android/server/ExtendedEthernetServiceImpl$2;

.field public final mStateObserver:Lcom/android/server/ExtendedEthernetServiceImpl$3;

.field public mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

.field public mTetheringManager:Landroid/net/TetheringManager;


# direct methods
.method public static -$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIsNotiShown:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    const-string/jumbo v0, "updateEthCableConnectNotification "

    .line 8
    .line 9
    .line 10
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string/jumbo v1, "notification"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIsNotiShown:Z

    .line 31
    .line 32
    const/16 v1, 0x3e8

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v3, 0x10404d7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const v4, 0x10404d6

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v6, Landroid/content/Intent;

    .line 64
    .line 65
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "com.android.settings"

    .line 69
    .line 70
    .line 71
    const-string/jumbo v5, "com.android.settings.Settings$EthernetSettingsActivity"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string/jumbo v4, "com.samsung.settings.ETHERNET_SETTINGS"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    const v4, 0x10008000

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    const/high16 v7, 0x2000000

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-instance v5, Landroid/app/Notification$Builder;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v5, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const p0, 0x1080b73

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-wide/16 v6, 0x0

    .line 118
    .line 119
    invoke-virtual {p0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const/4 v6, 0x1

    .line 124
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const/4 v7, 0x0

    .line 133
    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 163
    .line 164
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/net/IExtendedEthernetManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const-string/jumbo v0, "eth\\d"

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIfaceMatch:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    const-string v0, "Disconnected"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mLastIntentState:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/ExtendedEthernetServiceImpl$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/ExtendedEthernetServiceImpl$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$2;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateListener:Lcom/android/server/ExtendedEthernetServiceImpl$2;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/ExtendedEthernetServiceImpl$3;

    .line 42
    .line 43
    new-instance v1, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$3;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateObserver:Lcom/android/server/ExtendedEthernetServiceImpl$3;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string/jumbo p1, "network_management"

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mNMService:Landroid/os/INetworkManagementService;

    .line 67
    .line 68
    :try_start_0
    new-instance v0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string p1, "Could not register InterfaceObserver "

    .line 79
    .line 80
    const-string v0, "ExtendedEthernetServiceImpl"

    .line 81
    .line 82
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method public final getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .locals 5

    .line 1
    const-string/jumbo v0, "getConfiguration for: "

    .line 2
    .line 3
    .line 4
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/ExtendedEthernetConfigStore;->read()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/net/IpConfiguration;

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/net/IpConfiguration;

    .line 61
    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p0, Landroid/net/IpConfiguration;

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/net/IpConfiguration;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object p1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method

.method public final setLinkDown()V
    .locals 7

    .line 1
    const-string v0, "ExtendedEthernetServiceImpl"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mNMService:Landroid/os/INetworkManagementService;

    .line 4
    .line 5
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "iface: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIfaceMatch:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string/jumbo v5, "call setInterfaceDown"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mNMService:Landroid/os/INetworkManagementService;

    .line 52
    .line 53
    invoke-interface {v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    :cond_1
    return-void
.end method
