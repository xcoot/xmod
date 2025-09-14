.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# instance fields
.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

.field public final mEnabledEvents:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

.field public mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

.field public final mUserIdList:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    .line 6
    const-class v0, Landroid/net/ConnectivityManager;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    .line 16
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 18
    const-class v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 23
    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 27
    invoke-direct {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;-><init>()V

    .line 30
    sput-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    iput-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    .line 43
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mEnabledEvents:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    .line 50
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 55
    const-string/jumbo v1, "user"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/os/UserManager;

    .line 64
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const-string/jumbo v1, "ro.organization_owned"

    .line 84
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 90
    const-string/jumbo v3, "true"

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 99
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object p1

    .line 110
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/os/UserHandle;

    .line 122
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 125
    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    .line 128
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v0

    .line 144
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p1

    .line 156
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_5

    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/os/UserHandle;

    .line 168
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 171
    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserManager:Landroid/os/UserManager;

    .line 174
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_4

    .line 184
    iget-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mUserIdList:Ljava/util/Set;

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v0

    .line 190
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    :goto_1
    new-instance p1, Landroid/os/HandlerThread;

    .line 195
    const-string v0, "KnoxNwEventHandler"

    .line 197
    const/16 v1, 0xa

    .line 199
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 202
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 204
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance p1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 209
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 211
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;Landroid/os/Looper;)V

    .line 218
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->registerUserActivityReceiver()V

    .line 223
    return-void

    .line 224
    :goto_2
    monitor-exit v0

    .line 225
    throw p0
.end method

.method public static excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/net/InterfaceAddress;

    .line 26
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 4
    move-result-object p0

    .line 5
    if-ltz p1, :cond_2

    .line 7
    array-length v0, p0

    .line 8
    mul-int/lit8 v0, v0, 0x8

    .line 10
    if-gt p1, v0, :cond_2

    .line 12
    div-int/lit8 v0, p1, 0x8

    .line 14
    rem-int/lit8 p1, p1, 0x8

    .line 16
    const/16 v1, 0xff

    .line 18
    rsub-int/lit8 p1, p1, 0x8

    .line 20
    shl-int p1, v1, p1

    .line 22
    int-to-byte p1, p1

    .line 23
    array-length v1, p0

    .line 24
    if-ge v0, v1, :cond_0

    .line 26
    aget-byte v1, p0, v0

    .line 28
    and-int/2addr p1, v1

    .line 29
    int-to-byte p1, p1

    .line 30
    aput-byte p1, p0, v0

    .line 32
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    array-length p1, p0

    .line 35
    if-ge v0, p1, :cond_1

    .line 37
    const/4 p1, 0x0

    .line 38
    aput-byte p1, p0, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 44
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, "getNetworkPart error - "

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "IP address with "

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    array-length p0, p0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, " bytes has invalid prefix length "

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0
.end method


# virtual methods
.method public final registerSystemDefaultNetworkCallback()V
    .locals 6

    .line 1
    const-string v0, "Failed to register system default network callback "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    .line 9
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    .line 11
    if-nez v4, :cond_0

    .line 13
    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    .line 15
    invoke-direct {v4, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V

    .line 18
    iput-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    .line 22
    iget-object v5, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception v3

    .line 34
    :try_start_1
    const-string v4, "KnoxNetworkEventService"

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-void

    .line 60
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final registerUserActivityReceiver()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;-><init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 19
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 24
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mContext:Landroid/content/Context;

    .line 29
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mReceiver:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;

    .line 31
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0
.end method

.method public final unregisterSystemDefaultNetworkCallback()V
    .locals 5

    .line 1
    const-string v0, "Failed to unregister system default network callback "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;

    .line 9
    if-eqz v3, :cond_0

    .line 11
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mCm:Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_4

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mDefaultNetworkCallback:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    goto :goto_3

    .line 28
    :goto_2
    :try_start_1
    const-string v3, "KnoxNetworkEventService"

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_1

    .line 50
    :goto_3
    return-void

    .line 51
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    throw p0
.end method
