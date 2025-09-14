.class public final Lcom/android/server/connectivity/PacProxyService;
.super Landroid/net/IPacProxyManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastStateLock:Ljava/lang/Object;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mConnection:Lcom/android/server/connectivity/PacProxyService$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDelay:I

.field public mCurrentPac:Ljava/lang/String;

.field public volatile mHasDownloaded:Z

.field public volatile mHasSentBroadcast:Z

.field public mLastPort:I

.field public final mNetThreadHandler:Landroid/os/Handler;

.field public final mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

.field public final mPacRefreshIntent:Landroid/app/PendingIntent;

.field public volatile mPacUrl:Landroid/net/Uri;

.field public mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

.field public final mProxyLock:Ljava/lang/Object;

.field public mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public static -$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 5
    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_2

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/net/IPacProxyInstalledListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    :try_start_1
    invoke-interface {v4, v5, v1}, Landroid/net/IPacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    :goto_1
    monitor-exit v0

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    :goto_2
    monitor-exit v0

    .line 66
    :goto_3
    return-void

    .line 67
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public static -$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    new-instance v0, Ljava/net/URL;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    const-string v0, "Content-Length"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    :goto_0
    const-wide/32 v2, 0x1312d00

    .line 40
    .line 41
    .line 42
    cmp-long v4, v0, v2

    .line 43
    .line 44
    if-gtz v4, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x400

    .line 52
    .line 53
    new-array v1, v1, [B

    .line 54
    .line 55
    :goto_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, -0x1

    .line 64
    if-eq v4, v5, :cond_1

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-long v4, v4

    .line 75
    cmp-long v4, v4, v2

    .line 76
    .line 77
    if-gtz v4, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v0, "PAC too big"

    .line 83
    .line 84
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "PAC too big: "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, " bytes"

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :catch_1
    new-instance v0, Ljava/io/IOException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v2, "Unsupported URL connection type for "

    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :catch_2
    new-instance v0, Ljava/io/IOException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Incorrect proxy type for "

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v2, "Malformed URL:"

    .line 163
    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/net/IPacProxyManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$1;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 40
    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    .line 42
    .line 43
    const-string v1, "android.pacproxyservice"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    const-string v1, "android.net.proxy.PAC_REFRESH"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/high16 v3, 0x4000000

    .line 71
    .line 72
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 77
    .line 78
    new-instance v0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Landroid/content/IntentFilter;

    .line 84
    .line 85
    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/net/IPacProxyInstalledListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final bind()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "PacProxyService"

    .line 6
    .line 7
    const-string v0, "No context for binding"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "com.android.pacprocessor"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "com.android.pacprocessor.PacService"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$2;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 54
    .line 55
    const v3, 0x40000005    # 2.0000012f

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0, v1, v3, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 59
    .line 60
    .line 61
    new-instance v4, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "com.android.proxyhandler"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "com.android.proxyhandler.ProxyService"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    new-instance v5, Lcom/android/server/connectivity/PacProxyService$2;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-direct {v5, p0, v0}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;I)V

    .line 79
    .line 80
    .line 81
    iput-object v5, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v7, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 86
    .line 87
    const v6, 0x40000005    # 2.0000012f

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/app/AlarmManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/AlarmManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 18
    .line 19
    return-object p0
.end method

.method public final removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lez v1, :cond_0

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    .line 59
    .line 60
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->bind()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 110
    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    .line 121
    .line 122
    :cond_3
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 123
    .line 124
    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    .line 126
    .line 127
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    return-void

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    :try_start_4
    throw p0

    .line 133
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    throw p0
.end method

.method public final setDownloadIn(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "conn.pac_change_delay"

    .line 8
    .line 9
    .line 10
    const-string v2, "8 32 120 14400 43200"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "pac_change_delay"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v0

    .line 27
    :goto_0
    const-string v0, " "

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    if-ge p1, v1, :cond_1

    .line 35
    .line 36
    aget-object p1, v0, p1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    :goto_1
    const-wide/16 v2, 0x3e8

    .line 46
    .line 47
    mul-long/2addr v0, v2

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    add-long/2addr v2, v0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x3

    .line 58
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
