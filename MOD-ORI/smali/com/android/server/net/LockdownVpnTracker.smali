.class public final Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAcceptedEgressIface:Ljava/lang/String;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConfigIntent:Landroid/app/PendingIntent;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public final mResetIntent:Landroid/app/PendingIntent;

.field public final mStateLock:Ljava/lang/Object;

.field public final mVpn:Lcom/android/server/connectivity/Vpn;

.field public final mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v0, Landroid/net/ConnectivityManager;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 39
    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 46
    .line 47
    iput-object p4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 48
    .line 49
    const-class p2, Landroid/app/NotificationManager;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/NotificationManager;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    .line 59
    new-instance p2, Landroid/content/Intent;

    .line 60
    .line 61
    const-string p3, "android.settings.VPN_SETTINGS"

    .line 62
    .line 63
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p3, 0x0

    .line 67
    const/high16 p4, 0x4000000

    .line 68
    .line 69
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 74
    .line 75
    new-instance p2, Landroid/content/Intent;

    .line 76
    .line 77
    const-string/jumbo v0, "com.android.server.action.LOCKDOWN_RESET"

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/high16 v0, 0x40000000    # 2.0f

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final handleStateChangedLocked()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move v7, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v7, v5

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-nez v8, :cond_2

    .line 35
    .line 36
    :cond_1
    move v5, v6

    .line 37
    :cond_2
    const/4 v6, 0x0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    move-object v8, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v10, "handleStateChanged: egress="

    .line 49
    .line 50
    .line 51
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v10, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v10, "->"

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const-string v10, "LockdownVpnTracker"

    .line 72
    .line 73
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    :cond_4
    iput-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 83
    .line 84
    .line 85
    :cond_5
    if-eqz v7, :cond_6

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 88
    .line 89
    const/16 v0, 0x14

    .line 90
    .line 91
    invoke-virtual {p0, v6, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_8

    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const v4, 0x1041020

    .line 108
    .line 109
    .line 110
    const v5, 0x1080d0e

    .line 111
    .line 112
    .line 113
    if-nez v3, :cond_7

    .line 114
    .line 115
    const-string v0, "Invalid VPN profile; requires IP-based server and DNS"

    .line 116
    .line 117
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_7
    const-string v3, "Active network connected; starting VPN"

    .line 125
    .line 126
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const v3, 0x104101e

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 133
    .line 134
    .line 135
    iput-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 136
    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 138
    .line 139
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    iput-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 145
    .line 146
    const-string v1, "Failed to start VPN"

    .line 147
    .line 148
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    if-eqz v4, :cond_9

    .line 162
    .line 163
    iget-object v0, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v1, v4, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 166
    .line 167
    const-string v2, "VPN connected using iface="

    .line 168
    .line 169
    const-string v3, ", sourceAddr="

    .line 170
    .line 171
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    const v0, 0x104101d

    .line 190
    .line 191
    .line 192
    const v1, 0x1080d0d

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 196
    .line 197
    .line 198
    :cond_9
    :goto_2
    return-void
.end method

.method public final initLocked()V
    .locals 3

    .line 1
    const-string v0, "LockdownVpnTracker"

    .line 2
    .line 3
    const-string/jumbo v1, "initLocked()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final showNotification(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "VPN"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const v0, 0x104101c

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const v0, 0x1040c90

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 64
    .line 65
    const v1, 0x1080562

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, p2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const v0, 0x106001c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 p2, 0x0

    .line 92
    const/16 v0, 0x14

    .line 93
    .line 94
    invoke-virtual {p0, p2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final shutdownLocked()V
    .locals 3

    .line 1
    const-string v0, "LockdownVpnTracker"

    .line 2
    .line 3
    const-string/jumbo v1, "shutdownLocked()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    .line 44
    const/16 v2, 0x14

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 53
    .line 54
    return-void
.end method
