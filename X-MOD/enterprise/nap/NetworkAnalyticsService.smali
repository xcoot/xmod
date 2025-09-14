.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.super Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DBG:Z

.field public static mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field public static mDeviceUniqueId:Ljava/lang/String;


# instance fields
.field public final mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field public final mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public final mContext:Landroid/content/Context;

.field public final mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public final mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 17
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 21
    const-string v1, "NetworkAnalytics:Service"

    .line 23
    const-string v2, "Adding network analytics service."

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 30
    :try_start_0
    const-string v2, "Network Platform analytics Service is going to be added to the ServiceManager list "

    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 45
    sget-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 47
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 52
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    iput-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 61
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 66
    iput-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    iput-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    sput-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 77
    :cond_0
    sget-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 81
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 84
    move-result-object v3

    .line 85
    iput-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 87
    invoke-static {p1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 93
    new-instance p1, Landroid/os/HandlerThread;

    .line 95
    const-string v3, "NapHandler"

    .line 97
    const/16 v4, 0xa

    .line 99
    invoke-direct {p1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 109
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 111
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 114
    move-result-object v3

    .line 115
    invoke-direct {p1, p0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V

    .line 118
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setupIntentFilter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    :try_start_2
    const-string p1, "Error occured while trying to ini the BroadcastReceiver"

    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 131
    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 135
    if-eqz p1, :cond_1

    .line 137
    const/4 p1, 0x4

    .line 138
    invoke-virtual {p0, p1, v2, v2, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    goto :goto_1

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    const-string p1, "Error occured while trying to start NPA as a system service"

    .line 145
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_1
    :goto_1
    return-void
.end method

.method public static getCidFromTransformedName(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "__"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "__"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z
    .locals 5

    .line 1
    const-string v0, "NetworkAnalytics:Service"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string/jumbo p0, "isAllowedRecordingForUsers: App is installed in User 0. Can record for any user."

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return v1

    .line 13
    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 15
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v4, "isAllowedRecordingForUsers: App allowed to record profile? "

    .line 25
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    if-ne p0, p1, :cond_1

    .line 30
    move v4, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v4, v3

    .line 33
    :goto_0
    invoke-static {v0, v2, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 36
    :cond_2
    if-ne p0, p1, :cond_3

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v1, v3

    .line 40
    :goto_1
    return v1
.end method

.method public static versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "\\."

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    array-length v0, p0

    .line 13
    array-length v2, p1

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_4

    .line 21
    array-length v3, p0

    .line 22
    if-ge v2, v3, :cond_0

    .line 24
    aget-object v3, p0, v2

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    move-result v3

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    move v3, v1

    .line 34
    :goto_1
    array-length v4, p1

    .line 35
    if-ge v2, v4, :cond_1

    .line 37
    aget-object v4, p1, v2

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    move v4, v1

    .line 45
    :goto_2
    if-le v3, v4, :cond_2

    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_2
    if-le v4, v3, :cond_3

    .line 51
    const/4 p0, -0x1

    .line 52
    return p0

    .line 53
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    return v1

    .line 57
    :goto_3
    const-string p1, "NetworkAnalytics:Service"

    .line 59
    const-string/jumbo v0, "handleNAPClientCall: Exception in Comparing Versions"

    .line 62
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return v1
.end method


# virtual methods
.method public final _activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z
    .locals 11

    .line 1
    const-string v0, "_activateNAPClient: onActivate from client is "

    .line 3
    const-string/jumbo v1, "onDeactivateProfile: returnValue = "

    .line 6
    const-string/jumbo v2, "onActivateProfile: returnValue = "

    .line 9
    const-string v3, "_activateNAPClient: Device unique Key = "

    .line 11
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 13
    iget-object v5, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 15
    iget v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 17
    invoke-static {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 27
    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_0

    .line 35
    iget-object v5, v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x0

    .line 39
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 41
    const-string v7, "NetworkAnalytics:Service"

    .line 43
    if-eqz v6, :cond_1

    .line 45
    const-string v8, "_activateNAPClient: activation:"

    .line 47
    invoke-static {p2, v8, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    const/4 v8, 0x0

    .line 51
    if-eqz v4, :cond_8

    .line 53
    if-nez v5, :cond_2

    .line 55
    goto :goto_5

    .line 56
    :cond_2
    const/4 v9, 0x1

    .line 57
    const/4 v10, -0x1

    .line 58
    if-ne v9, p2, :cond_4

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDeviceUniqueKey()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    if-eqz v6, :cond_3

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_1
    invoke-interface {v4, v5, p3, p0}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I

    .line 87
    move-result v10

    .line 88
    if-eqz v6, :cond_5

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object p0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 108
    invoke-interface {v4, p0, p3}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDeactivateProfile(Ljava/lang/String;I)I

    .line 111
    move-result v10

    .line 112
    if-eqz v6, :cond_5

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_4

    .line 147
    :goto_3
    const-string p1, "_activateNAPClient: Remote Exception"

    .line 149
    invoke-static {v7, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_6
    :goto_4
    if-nez v10, :cond_7

    .line 154
    move v8, v9

    .line 155
    :cond_7
    return v8

    .line 156
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    const-string p1, "_activateNAPClient: Null values found. INetworkAnalyticsService = "

    .line 162
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string p1, " or json = "

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p0

    .line 180
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9
    return v8
.end method

.method public final _bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .locals 10

    .line 1
    const-string v0, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate complete: "

    const-string v1, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient & countdown: "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "NetworkAnalytics:Service"

    if-ne v3, p3, :cond_15

    .line 2
    :try_start_0
    sget-boolean p3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p3, :cond_0

    const-string v0, "_bindAndActivate:PROFILE_ACTIVATED: Doing bind and activate."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_6

    .line 3
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 4
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I

    move-result v5

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    if-ne v6, v5, :cond_2

    if-eqz p3, :cond_1

    .line 7
    const-string p0, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient did not succeed"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-nez v5, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 9
    invoke-static {p2, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 12
    const-string v0, "_bindAndActivate:PROFILE_ACTIVATED: Honoring previous bind."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v6, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v0

    move v6, v3

    goto :goto_1

    .line 14
    :cond_5
    iget-object v6, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    :goto_1
    const/4 v7, 0x0

    .line 15
    iput-object v7, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v6, :cond_14

    if-ltz v5, :cond_14

    if-eqz p3, :cond_6

    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_6
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result p3

    if-nez p3, :cond_7

    return-void

    .line 18
    :cond_7
    const-string p3, "_bindAndActivate:PROFILE_ACTIVATED: Adding to data delivery"

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget p3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-nez p3, :cond_8

    .line 20
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    goto :goto_2

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object p3

    :goto_2
    if-nez p3, :cond_9

    .line 22
    const-string p0, "_bindAndActivate: no profile found for user. Not adding profile to recipient list on NetworkAnalyticsDataDelivery"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 24
    iget-object v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    iget-object v7, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 25
    :try_start_1
    iget-object v8, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 26
    iget v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 27
    iget v8, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-ne v5, v8, :cond_a

    .line 28
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(ILjava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 29
    new-instance v5, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v5, v1, v0, v6}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding the profile to the delivery list _bindAndActivate "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V

    goto :goto_3

    .line 32
    :cond_b
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    if-eqz p3, :cond_13

    .line 33
    :try_start_2
    sget-object p3, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual {p3}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object p3

    .line 34
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_c

    .line 36
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {p3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result p3

    if-gez p3, :cond_d

    .line 37
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_c
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {p3, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result p3

    if-gez p3, :cond_d

    .line 39
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_d
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 41
    invoke-static {p2, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p3, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object p3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object p2

    if-nez p2, :cond_e

    .line 44
    const-string p0, "_bindAndActivate: no profile found. Not begining to record data"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_e
    iget p3, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 46
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    const-string v1, " but data collection will not happen."

    if-gez v0, :cond_10

    .line 48
    :try_start_3
    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result p2

    if-gez p2, :cond_f

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_bindAndActivate: version mismatch deactivation failed for profile : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_f
    invoke-virtual {p0, v3, v2, p3, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_bindAndActivate:PROFILE_ACTIVATED:Version mismatch between user and kernel space. Deactivated this profile : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 53
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 54
    invoke-static {p3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object p2

    if-nez p2, :cond_11

    .line 55
    const-string p0, "_bindAndActivate: no active profile found. Not begining to record data"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_11
    iget p3, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 57
    iget p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    if-nez p3, :cond_12

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_12

    const/16 v0, 0x3840

    if-gt p2, v0, :cond_12

    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValueForFlow(I)I

    move-result p2

    if-gez p2, :cond_12

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_bindAndActivate: set interval value and deactivation failed for profile : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_12
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->beginDataRecording(I)V

    goto :goto_4

    .line 61
    :cond_13
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_14
    :goto_4
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_1c

    const-string p0, "_bindAndActivate:PROFILE_ACTIVATED: bind and activate complete."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 63
    :cond_15
    sget-boolean p3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p3, :cond_16

    const-string v1, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Doing deactivate and unbind."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_16
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz p3, :cond_17

    .line 65
    const-string v2, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate did not succeed"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_17
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 67
    invoke-static {p2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-virtual {v2, v3, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeNAPDataRecipient(ILjava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object p2, p2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_19

    if-eqz p3, :cond_18

    .line 72
    const-string p0, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Wont unbind."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    .line 73
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 74
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 75
    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    if-gtz p1, :cond_1b

    if-eqz p3, :cond_1a

    .line 76
    const-string p1, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Will stop data recording."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1a
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->endDataRecording()V

    .line 78
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->clearHashCacheEntire()V

    :cond_1b
    if-eqz p3, :cond_1c

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 80
    :goto_5
    const-string p1, "_bindAndActivate Exception"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 81
    :goto_6
    const-string p1, "_bindAndActivate RemoteException"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_7
    return-void
.end method

.method public final _bindAndActivate(Ljava/lang/String;Z)V
    .locals 8

    .line 82
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_0

    const-string v2, "_bindAndActivate:ACTION_INITIALIZE_NAP: adding profile: "

    .line 83
    invoke-static {v2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 85
    const-string p0, "_bindAndActivate: ERROR NAPActivationProfile is null for profile: "

    .line 86
    invoke-static {p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 87
    :cond_2
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    .line 88
    const-string p0, "_bindAndActivate: ERROR NAPActivationProfile is not activated. No need to bind."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 89
    :cond_4
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    .line 90
    const-string p0, "_bindAndActivate: ERROR NAPConfigProfile is null for profile: "

    .line 91
    invoke-static {p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const/4 v3, 0x0

    .line 92
    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 93
    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 94
    iget v6, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 95
    const-string/jumbo v7, "validateNAPClient:Valid monitor application is not installed "

    if-eqz v0, :cond_7

    const-string/jumbo v0, "validateNAPClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7
    :try_start_0
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isValidAppInstalled(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    .line 98
    :goto_0
    const-string/jumbo v5, "validateNAPClient: Add profile to database failed. Exception"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_a

    .line 99
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p0, :cond_9

    const-string p0, "_bindAndActivate: ERROR Valid package has not been installed: "

    .line 100
    invoke-static {p0, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 101
    :cond_a
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v1, "__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 105
    iput-object v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 106
    iput-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 107
    iget v1, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 108
    iput v1, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 109
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method public final _bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I
    .locals 12

    .line 1
    const-string v0, "NetworkAnalytics:Service"

    .line 3
    const-string v1, "_bindToClient:Binder is already available for package = "

    .line 5
    const-string v2, "_bindToClient:handlerObj.profileName = "

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const-wide/16 v5, 0x0

    .line 11
    :try_start_0
    iget-object v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 13
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 15
    if-eqz v8, :cond_0

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_7

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto/16 :goto_4

    .line 43
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 45
    iget-object v9, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 47
    iget v10, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 49
    invoke-static {v10, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v9

    .line 53
    invoke-virtual {v2, v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v2}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->asBinder()Landroid/os/IBinder;

    .line 62
    move-result-object v9

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v9, 0x0

    .line 65
    :goto_1
    if-eqz v2, :cond_4

    .line 67
    invoke-interface {v9}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 73
    if-eqz v8, :cond_2

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object p1, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    return v4

    .line 96
    :cond_3
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 99
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v2, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, "_namonitoraction"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    move-result-wide v5

    .line 122
    new-instance v2, Landroid/content/Intent;

    .line 124
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 132
    move-result-object v1

    .line 133
    iget v9, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 135
    invoke-virtual {v1, v2, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 142
    move-result v9

    .line 143
    if-lez v9, :cond_9

    .line 145
    if-eqz v8, :cond_5

    .line 147
    const-string v8, "_bindToClient:vendorServices.size() > 0"

    .line 149
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v1

    .line 156
    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_9

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 168
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 170
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 172
    iget-object v10, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 174
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_6

    .line 180
    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 182
    if-eqz v9, :cond_7

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v11, "_bindToClient:resolveInfo.serviceInfo.packageName = "

    .line 191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 196
    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v10

    .line 205
    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_7
    if-eqz v9, :cond_8

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string v10, "_bindToClient:resolveInfo.serviceInfo.name = "

    .line 217
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 222
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 224
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v9

    .line 231
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_8
    new-instance v9, Landroid/content/ComponentName;

    .line 236
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 238
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 240
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 242
    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    goto :goto_2

    .line 249
    :cond_9
    iget-object v1, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 251
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 256
    new-instance v1, Landroid/os/UserHandle;

    .line 258
    iget v7, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 260
    invoke-direct {v1, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 263
    invoke-virtual {p0, v2, p1, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 266
    move-result v4

    .line 267
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 269
    if-eqz p0, :cond_a

    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    const-string p1, "_bindToClient:bindSuccess = "

    .line 278
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object p0

    .line 288
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_a
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    goto :goto_5

    .line 295
    :goto_4
    :try_start_2
    const-string p1, "_bindToClient:Exception"

    .line 297
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    goto :goto_3

    .line 301
    :goto_5
    if-eqz v4, :cond_b

    .line 303
    goto :goto_6

    .line 304
    :cond_b
    const/4 v3, -0x1

    .line 305
    :goto_6
    return v3

    .line 306
    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    throw p0
.end method

.method public final _cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 3
    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string v1, "_cleanUpConnectionDetails tableKey = "

    .line 15
    const-string v2, "NetworkAnalytics:Service"

    .line 17
    invoke-static {v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 22
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    .line 24
    const-string v3, "NetworkAnalytics:ConnectionManager"

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v5, "removeProfileForPackage completely for packageName = "

    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/List;

    .line 57
    if-nez v4, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 65
    move-result v4

    .line 66
    sub-int/2addr v5, v4

    .line 67
    iput v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 69
    if-gez v5, :cond_3

    .line 71
    const/4 v4, 0x0

    .line 72
    iput v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 74
    :cond_3
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    if-eqz v2, :cond_4

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v4, "removeProfileForPackage completely for activatedProfileCounter = "

    .line 86
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 91
    invoke-static {v2, v1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 94
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 96
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeBinderForPackage(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 101
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 103
    iget p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeDataRecipientsForPackage(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public final _unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .locals 4

    .line 1
    const-string v0, "NetworkAnalytics:Service"

    .line 3
    :try_start_0
    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 5
    const/16 v2, -0x3e7

    .line 7
    if-ne v1, v2, :cond_1

    .line 9
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string p0, "_unbindClient: The profile was never activated. Returning."

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_1
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 26
    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_2

    .line 34
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 36
    if-eqz v1, :cond_2

    .line 38
    const-string v1, "_unbindClient: profile object null"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 45
    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 47
    iget v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 49
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_3

    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 67
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 69
    if-eqz p0, :cond_4

    .line 71
    const-string p0, "_unbindClient: Done"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_3

    .line 77
    :goto_1
    const-string p1, "_unbindClient: Exception"

    .line 79
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    goto :goto_3

    .line 83
    :goto_2
    const-string p1, "_unbindClient: RemoteException"

    .line 85
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_4
    :goto_3
    return-void
.end method

.method public final activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I
    .locals 5

    .line 1
    const-string v0, "Activate profile config storage returned = "

    .line 3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 5
    const-string v2, "NetworkAnalytics:Service"

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "Called activateProfile: "

    .line 13
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 18
    invoke-static {v1, v3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 23
    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget v4, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 27
    :try_start_1
    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(ILjava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    if-ne v1, p2, :cond_1

    .line 33
    const-string p0, "activateProfile:Profile is already in the activated state for the user."

    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 p0, -0x8

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 44
    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->adminUid:I

    .line 46
    iget-object p1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v1, v4, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activateProfile(IIILjava/lang/String;)I

    .line 51
    move-result p0

    .line 52
    if-gez p0, :cond_2

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, " for state "

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    return p0

    .line 78
    :goto_0
    const-string p1, "Add profile to database falied. Exception"

    .line 80
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 p0, -0x1

    .line 84
    :cond_2
    return p0
.end method

.method public final constructObjectForBroadcast(IILjava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 3
    const-string/jumbo v1, "profile_name"

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 15
    const-string/jumbo v2, "package_name"

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 27
    const-string/jumbo v3, "package_signature"

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {v3, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    new-instance v2, Landroid/os/Bundle;

    .line 39
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const-string/jumbo p1, "profileInfo"

    .line 73
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 76
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 78
    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    if-eqz p1, :cond_0

    .line 84
    const/16 p1, 0xe

    .line 86
    const/4 p2, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p2, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    const-string p0, "NetworkAnalytics:Service"

    .line 93
    const-string p1, "Error occured while constructing the profile object for broadcast"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void
.end method

.method public final enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    const-string v0, "NetworkAnalytics:Service"

    .line 3
    const-string/jumbo v1, "enforceNetworkAnalyticsPermission: knox version above 3.0. Validating NPA Permission"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 23
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_NPA"

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getDeviceUniqueKey()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 7
    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 16
    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    .line 27
    if-eqz p0, :cond_2

    .line 29
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 31
    if-eqz v0, :cond_1

    .line 33
    const-string v0, "NetworkAnalytics:Service"

    .line 35
    const-string/jumbo v1, "getDeviceUniqueKey: drkService not null"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    sput-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v0

    .line 50
    throw p0

    .line 51
    :cond_2
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public final declared-synchronized getNPAVersion()Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "_0_"

    .line 3
    const-string/jumbo v1, "getNPAVersion: Failed to open char device : "

    .line 6
    const-string/jumbo v2, "getNPAVersion: Failed to open char device : "

    .line 9
    const-string/jumbo v3, "supportedVersion = "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 15
    iget-object v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 17
    if-nez v4, :cond_1

    .line 19
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 29
    sget-object v4, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 31
    invoke-virtual {v4}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    const-string v6, "TAG"

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v3, "currentVersion  = "

    .line 56
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move-result v3

    .line 73
    if-gez v3, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    .line 81
    move-result v1

    .line 82
    if-gez v1, :cond_1

    .line 84
    const-string v0, "NetworkAnalytics:Service"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 104
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    .line 106
    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 113
    const/4 v3, 0x1

    .line 114
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    .line 117
    move-result v2

    .line 118
    if-gez v2, :cond_1

    .line 120
    const-string v0, "NetworkAnalytics:Service"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 140
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    .line 142
    return-object v0

    .line 143
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 164
    iget-object v0, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    goto :goto_1

    .line 174
    :goto_0
    :try_start_3
    const-string v1, "NetworkAnalytics:Service"

    .line 176
    const-string/jumbo v2, "getNPAVersion Exception"

    .line 179
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    const/4 v0, 0x0

    .line 183
    :goto_1
    monitor-exit p0

    .line 184
    return-object v0

    .line 185
    :goto_2
    monitor-exit p0

    .line 186
    throw v0
.end method

.method public final getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 3
    const-string v1, "NetworkAnalytics:Service"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "getNetworkMonitorProfiles API caller is "

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    move-result-object p1

    .line 24
    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "getNetworkMonitorProfiles API caller with updated contextInfo is "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 41
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 43
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(II)Ljava/util/List;

    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    const-string p1, "Get NVM client profiles. Exception"

    .line 53
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 p0, 0x0

    .line 57
    :goto_0
    return-object p0
.end method

.method public final getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "NetworkAnalytics:Service"

    .line 3
    const-string/jumbo v1, "getPackageCertForPkgname: User id = "

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_0
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 13
    if-eqz v5, :cond_0

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_6

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_4

    .line 37
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    const/16 p0, 0x40

    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 51
    move-result-object p0

    .line 52
    if-nez p0, :cond_2

    .line 54
    if-eqz v5, :cond_1

    .line 56
    const-string/jumbo p0, "getPackageCertForPkgname: pkgInfo is null"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    return-object v4

    .line 66
    :cond_2
    :try_start_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 68
    array-length p1, p0

    .line 69
    const/4 p2, 0x0

    .line 70
    :goto_1
    if-ge p2, p1, :cond_4

    .line 72
    aget-object v1, p0, p2

    .line 74
    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 79
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    goto :goto_5

    .line 88
    :goto_3
    :try_start_2
    const-string p1, "In getPackageCertForPkgname: Exception"

    .line 90
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    goto :goto_2

    .line 94
    :goto_4
    const-string p1, "In getPackageCertForPkgname: NullPointerException"

    .line 96
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :goto_5
    return-object v4

    .line 101
    :goto_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0
.end method

.method public final getPackageNameForUid$5(I)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v4, v1

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v2, v0, :cond_2

    .line 18
    aget-object v5, p1, v2

    .line 20
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 22
    iget-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 27
    move-result-object v7

    .line 28
    if-eqz v7, :cond_1

    .line 30
    invoke-interface {v7}, Ljava/util/Set;->size()I

    .line 33
    move-result v8

    .line 34
    if-lez v8, :cond_1

    .line 36
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v7

    .line 40
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 46
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/lang/String;

    .line 52
    iget-object v9, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 60
    if-eqz v8, :cond_0

    .line 62
    iget-object v8, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 64
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_0

    .line 70
    const/4 v3, 0x1

    .line 71
    move-object v4, v5

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    if-eqz v3, :cond_4

    .line 77
    if-nez v4, :cond_3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    return-object v4

    .line 81
    :cond_4
    :goto_1
    const-string p0, "NetworkAnalytics:Service"

    .line 83
    const-string/jumbo p1, "start: Package name could not be found in activated list."

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v1
.end method

.method public final getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid$5(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string v1, "NetworkAnalytics:Service"

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 18
    const-string/jumbo p0, "getProfiles: NAP client caller cannot be validated. PackageName null"

    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-object v2

    .line 25
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(ILjava/lang/String;)Ljava/util/List;

    .line 30
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "Get NVM client profiles. Exception"

    .line 35
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_0
    return-object v2
.end method

.method public final declared-synchronized handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    const-string/jumbo v4, "handleNAPClientCall: Invalid parameters. doStart:"

    .line 12
    const-string/jumbo v5, "handleNAPClientCall: Caller validation failed:"

    .line 15
    monitor-enter p0

    .line 16
    const/4 v6, -0x1

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    move-result v7

    .line 21
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v8

    .line 25
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid$5(I)Ljava/lang/String;

    .line 28
    move-result-object v9

    .line 29
    const/4 v10, -0x4

    .line 30
    if-eqz v0, :cond_1e

    .line 32
    if-eqz v9, :cond_1e

    .line 34
    if-gez v8, :cond_0

    .line 36
    goto/16 :goto_5

    .line 38
    :cond_0
    invoke-virtual {v1, v7, v8, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(IILjava/lang/String;)I

    .line 41
    move-result v4

    .line 42
    if-gez v4, :cond_1

    .line 44
    const-string v0, "NetworkAnalytics:Service"

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v5, " doStart:"

    .line 56
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    return v4

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_8

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto/16 :goto_6

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {v1, v8, v9, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->listOfProfilesForOperation(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_1d

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 86
    move-result v7

    .line 87
    if-lez v7, :cond_1d

    .line 89
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v5

    .line 93
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_1d

    .line 99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 105
    if-nez v4, :cond_3

    .line 107
    const-string v4, "NetworkAnalytics:Service"

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string/jumbo v11, "handleNAPClientCall: Profile does not exist for name: "

    .line 117
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v7

    .line 127
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const/4 v7, -0x3

    .line 137
    if-eqz v4, :cond_2

    .line 139
    :goto_1
    move v4, v7

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    monitor-exit p0

    .line 142
    return v7

    .line 143
    :cond_3
    :try_start_2
    iget-object v7, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 145
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v7

    .line 149
    const/16 v11, -0x12

    .line 151
    if-nez v7, :cond_5

    .line 153
    const-string v4, "NetworkAnalytics:Service"

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string/jumbo v12, "handleNAPClientCall: NAP client activating un-owned profile: "

    .line 163
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-eqz v4, :cond_4

    .line 184
    move v4, v11

    .line 185
    goto :goto_0

    .line 186
    :cond_4
    monitor-exit p0

    .line 187
    return v11

    .line 188
    :cond_5
    if-eqz v3, :cond_7

    .line 190
    :try_start_3
    invoke-static {v4, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z

    .line 193
    move-result v7

    .line 194
    if-nez v7, :cond_7

    .line 196
    const-string v4, "NetworkAnalytics:Service"

    .line 198
    const-string/jumbo v7, "handleNAPClientCall: Client installed in wrong user trying to collect data"

    .line 201
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    const/16 v7, -0x11

    .line 212
    if-eqz v4, :cond_6

    .line 214
    goto :goto_1

    .line 215
    :cond_6
    monitor-exit p0

    .line 216
    return v7

    .line 217
    :cond_7
    if-nez v3, :cond_8

    .line 219
    :try_start_4
    iget v7, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 221
    if-eq v7, v8, :cond_8

    .line 223
    const-string v0, "NetworkAnalytics:Service"

    .line 225
    const-string/jumbo v2, "handleNAPClientCall: NAP client failed to stop the connection since not started by same user"

    .line 228
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    monitor-exit p0

    .line 232
    return v11

    .line 233
    :cond_8
    const/16 v11, -0x3e7

    .line 235
    if-eqz v3, :cond_16

    .line 237
    if-nez v2, :cond_9

    .line 239
    :try_start_5
    const-string v0, "NetworkAnalytics:Service"

    .line 241
    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with null bundle flow information"

    .line 244
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 247
    monitor-exit p0

    .line 248
    return v10

    .line 249
    :cond_9
    :try_start_6
    const-string/jumbo v12, "record_type"

    .line 252
    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 255
    move-result v12

    .line 256
    if-ltz v12, :cond_15

    .line 258
    const/4 v13, 0x2

    .line 259
    if-le v12, v13, :cond_a

    .line 261
    goto/16 :goto_3

    .line 263
    :cond_a
    const-string/jumbo v13, "interval_value"

    .line 266
    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 269
    move-result v13

    .line 270
    const/16 v14, 0x3840

    .line 272
    const/16 v15, 0x3c

    .line 274
    if-eq v13, v11, :cond_c

    .line 276
    if-lt v13, v15, :cond_b

    .line 278
    if-le v13, v14, :cond_c

    .line 280
    :cond_b
    const-string v0, "NetworkAnalytics:Service"

    .line 282
    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with Invalid interval information"

    .line 285
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    monitor-exit p0

    .line 289
    return v10

    .line 290
    :cond_c
    if-eq v13, v11, :cond_d

    .line 292
    if-lt v13, v15, :cond_d

    .line 294
    if-gt v13, v14, :cond_d

    .line 296
    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 299
    move-result-object v14

    .line 300
    invoke-virtual {v14}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 303
    move-result-object v14

    .line 304
    if-eqz v14, :cond_d

    .line 306
    sget-object v14, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 308
    invoke-virtual {v14}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 311
    move-result-object v14

    .line 312
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 315
    move-result-object v15

    .line 316
    invoke-virtual {v15}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 319
    move-result-object v15

    .line 320
    const-string v6, "NetworkAnalytics:Service"

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const-string/jumbo v7, "handleNAPClientCall: intermediate flows : current knox version : "

    .line 330
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v7, " supported knox version : "

    .line 338
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v7

    .line 348
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {v15, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-result v6

    .line 355
    if-gez v6, :cond_d

    .line 357
    const-string v0, "NetworkAnalytics:Service"

    .line 359
    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data not supported in current version"

    .line 362
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    monitor-exit p0

    .line 366
    return v10

    .line 367
    :cond_d
    :try_start_8
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 369
    iget-object v6, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 371
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 374
    move-result-object v6

    .line 375
    if-eqz v6, :cond_11

    .line 377
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 380
    move-result v7

    .line 381
    if-lez v7, :cond_11

    .line 383
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 386
    move-result-object v6

    .line 387
    :cond_e
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_11

    .line 393
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    move-result-object v7

    .line 397
    check-cast v7, Ljava/lang/String;

    .line 399
    iget-object v11, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 401
    invoke-virtual {v11, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    .line 404
    move-result-object v7

    .line 405
    if-nez v7, :cond_f

    .line 407
    goto :goto_2

    .line 408
    :cond_f
    iget v11, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationState:I

    .line 410
    const/4 v14, 0x1

    .line 411
    if-ne v14, v11, :cond_e

    .line 413
    iget v11, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationFlowType:I

    .line 415
    if-ne v11, v12, :cond_10

    .line 417
    iget v7, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->activationIntervalValue:I

    .line 419
    if-eq v7, v13, :cond_e

    .line 421
    :cond_10
    const-string v0, "NetworkAnalytics:Service"

    .line 423
    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with wrong flow or interval"

    .line 426
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 429
    monitor-exit p0

    .line 430
    return v10

    .line 431
    :cond_11
    :try_start_9
    iput v12, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->flowTypeForProfile:I

    .line 433
    iput v13, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->intervalValueForProfile:I

    .line 435
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v6}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 442
    move-result-object v6

    .line 443
    if-eqz v6, :cond_14

    .line 445
    sget-object v6, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 447
    invoke-virtual {v6}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 450
    move-result-object v6

    .line 451
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 454
    move-result-object v7

    .line 455
    invoke-virtual {v7}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    .line 458
    move-result-object v7

    .line 459
    invoke-static {v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-result v6

    .line 463
    if-gez v6, :cond_12

    .line 465
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 467
    const/4 v7, 0x0

    .line 468
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    .line 471
    move-result v6

    .line 472
    if-gez v6, :cond_13

    .line 474
    const-string v0, "NetworkAnalytics:Service"

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    const-string/jumbo v5, "handleNAPClientCall: file descriptor failed for profile:"

    .line 484
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v4, " doStart:"

    .line 496
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v2

    .line 506
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 509
    monitor-exit p0

    .line 510
    return v6

    .line 511
    :cond_12
    :try_start_a
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 513
    const/4 v7, 0x1

    .line 514
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    .line 517
    move-result v6

    .line 518
    if-gez v6, :cond_13

    .line 520
    const-string v0, "NetworkAnalytics:Service"

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    .line 524
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    const-string/jumbo v5, "handleNAPClientCall: file descriptor failed for profile:"

    .line 530
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 536
    move-result-object v4

    .line 537
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v4, " doStart:"

    .line 542
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    move-result-object v2

    .line 552
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 555
    monitor-exit p0

    .line 556
    return v6

    .line 557
    :cond_13
    :try_start_b
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 559
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    .line 562
    move-result v6

    .line 563
    if-gez v6, :cond_16

    .line 565
    const-string v0, "NetworkAnalytics:Service"

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    const-string/jumbo v5, "handleNAPClientCall: ncm version match failed for profile:"

    .line 575
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v4, " doStart:"

    .line 587
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    move-result-object v2

    .line 597
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 600
    monitor-exit p0

    .line 601
    return v6

    .line 602
    :cond_14
    :try_start_c
    const-string v0, "NetworkAnalytics:Service"

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    const-string/jumbo v5, "handleNAPClientCall: file descriptor failed for profile:"

    .line 612
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v4, " doStart:"

    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    move-result-object v2

    .line 634
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 637
    monitor-exit p0

    .line 638
    const/16 v0, -0x13

    .line 640
    return v0

    .line 641
    :cond_15
    :goto_3
    :try_start_d
    const-string v0, "NetworkAnalytics:Service"

    .line 643
    const-string/jumbo v2, "handleNAPClientCall: Client trying to collect data with Invalid flow information"

    .line 646
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 649
    monitor-exit p0

    .line 650
    return v10

    .line 651
    :cond_16
    :try_start_e
    iget v6, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 653
    const/16 v7, -0x3e7

    .line 655
    if-ne v6, v7, :cond_18

    .line 657
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 659
    iget-object v7, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 661
    iget v11, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 663
    invoke-virtual {v6, v11, v8, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(IILjava/lang/String;)I

    .line 666
    move-result v6

    .line 667
    if-gez v6, :cond_1a

    .line 669
    const-string v7, "NetworkAnalytics:Service"

    .line 671
    new-instance v11, Ljava/lang/StringBuilder;

    .line 673
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile:"

    .line 679
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 685
    move-result-object v4

    .line 686
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v4, " doStart:"

    .line 691
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    move-result-object v4

    .line 701
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 706
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 710
    if-eqz v4, :cond_17

    .line 712
    :goto_4
    move v4, v6

    .line 713
    const/4 v6, -0x1

    .line 714
    goto/16 :goto_0

    .line 716
    :cond_17
    monitor-exit p0

    .line 717
    return v6

    .line 718
    :cond_18
    if-eq v6, v7, :cond_1a

    .line 720
    :try_start_f
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 722
    iget-object v7, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 724
    iget v11, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 726
    invoke-virtual {v6, v11, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(ILjava/lang/String;)I

    .line 729
    move-result v6

    .line 730
    if-nez v6, :cond_1a

    .line 732
    iget-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 734
    iget-object v7, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 736
    iget v11, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 738
    invoke-virtual {v6, v11, v8, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(IILjava/lang/String;)I

    .line 741
    move-result v6

    .line 742
    if-gez v6, :cond_1a

    .line 744
    const-string v7, "NetworkAnalytics:Service"

    .line 746
    new-instance v11, Ljava/lang/StringBuilder;

    .line 748
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile after default check:"

    .line 754
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 760
    move-result-object v4

    .line 761
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v4, " doStart:"

    .line 766
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    move-result-object v4

    .line 776
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 781
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 785
    if-eqz v4, :cond_19

    .line 787
    goto :goto_4

    .line 788
    :cond_19
    monitor-exit p0

    .line 789
    return v6

    .line 790
    :cond_1a
    :try_start_10
    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    .line 793
    move-result v6

    .line 794
    if-gez v6, :cond_1c

    .line 796
    const-string v7, "NetworkAnalytics:Service"

    .line 798
    new-instance v11, Ljava/lang/StringBuilder;

    .line 800
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    const-string/jumbo v12, "handleNAPClientCall: activation failed for profile:"

    .line 806
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    .line 812
    move-result-object v4

    .line 813
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const-string v4, " doStart:"

    .line 818
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    move-result-object v4

    .line 828
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v4, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 833
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    move-result v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 837
    if-eqz v4, :cond_1b

    .line 839
    goto :goto_4

    .line 840
    :cond_1b
    monitor-exit p0

    .line 841
    return v6

    .line 842
    :cond_1c
    :try_start_11
    new-instance v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 844
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 847
    iget-object v11, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 849
    iput-object v11, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 851
    iget-object v11, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 853
    iput-object v11, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 855
    iput v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 857
    iget v4, v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 859
    const/4 v11, 0x1

    .line 860
    invoke-virtual {v1, v11, v3, v4, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 863
    goto/16 :goto_4

    .line 865
    :cond_1d
    move v6, v4

    .line 866
    goto :goto_7

    .line 867
    :cond_1e
    :goto_5
    const-string v0, "NetworkAnalytics:Service"

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    .line 871
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    move-result-object v2

    .line 881
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 884
    monitor-exit p0

    .line 885
    return v10

    .line 886
    :goto_6
    :try_start_12
    const-string v2, "NetworkAnalytics:Service"

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    .line 890
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    const-string/jumbo v5, "handleNAPClientCall: Exception in doStart:"

    .line 896
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    move-result-object v3

    .line 906
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 909
    const/4 v6, -0x1

    .line 910
    :goto_7
    monitor-exit p0

    .line 911
    return v6

    .line 912
    :goto_8
    monitor-exit p0

    .line 913
    throw v0
.end method

.method public final isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 3
    const-string v1, "NetworkAnalytics:Service"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "isProfileActivatedForUser API caller is "

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    move-result-object p1

    .line 24
    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "isProfileActivatedForUser API caller with updated contextInfo is "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    :cond_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 41
    if-lez v0, :cond_4

    .line 43
    if-nez p2, :cond_2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 48
    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    if-gez v0, :cond_3

    .line 54
    const-string/jumbo p0, "isProfileActivatedForUser: Profile "

    .line 57
    const-string/jumbo v2, "is absent or does not belong to adminUid "

    .line 60
    invoke-static {p0, p2, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object p0

    .line 64
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, " return="

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 85
    :cond_3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 87
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(ILjava/lang/String;)I

    .line 92
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string/jumbo p1, "isProfileActivatedForUser: Remove profile to database falied. Exception"

    .line 98
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 p0, -0x1

    .line 102
    :goto_0
    return p0

    .line 103
    :cond_4
    :goto_1
    const-string/jumbo p0, "isProfileActivatedForUser: Invalid parameters"

    .line 106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 p0, -0x4

    .line 110
    return p0
.end method

.method public final isValidAppInstalled(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 13
    invoke-static {p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isApplicationInstalled(ILjava/lang/String;)Z

    .line 16
    move-result v2

    .line 17
    const-string v3, "NetworkAnalytics:Service"

    .line 19
    if-nez v2, :cond_0

    .line 21
    const-string/jumbo p0, "isValidAppInstalled: Monitor app not installed"

    .line 24
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    const/16 p0, -0xf

    .line 32
    return p0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    move-result p1

    .line 43
    if-lez p1, :cond_1

    .line 45
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_1

    .line 51
    const-string/jumbo p0, "isValidAppInstalled: Monitor app signature is not matched."

    .line 54
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    const/16 p0, -0xd

    .line 62
    return p0

    .line 63
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public final listOfProfilesForOperation(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_4

    .line 4
    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 6
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 23
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 28
    move-result-object p3

    .line 29
    if-eqz p3, :cond_4

    .line 31
    invoke-interface {p3}, Ljava/util/Set;->size()I

    .line 34
    move-result v1

    .line 35
    if-gtz v1, :cond_1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p3

    .line 47
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 53
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 67
    if-eqz v1, :cond_2

    .line 69
    iget-object v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 77
    iget v2, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 79
    if-ne v2, p1, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 92
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x9

    .line 13
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x8

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public final registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string/jumbo v0, "registerNetworkMonitorProfile: Add profile to database failed:"

    .line 4
    const-string/jumbo v1, "registerNetworkMonitorProfile: JSON validation failed:"

    .line 7
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 9
    const-string v3, "NetworkAnalytics:Service"

    .line 11
    if-eqz v2, :cond_0

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v5, "registerNetworkMonitorProfile API caller is "

    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 23
    invoke-static {v4, v5, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 29
    move-result-object p1

    .line 30
    if-eqz v2, :cond_1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v5, "registerNetworkMonitorProfile API caller with updated contextInfo is "

    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    invoke-static {v4, v5, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 45
    :cond_1
    if-eqz p1, :cond_a

    .line 47
    if-nez p2, :cond_2

    .line 49
    goto/16 :goto_3

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v5, "registerNetworkMonitorProfile: allowUserId: "

    .line 58
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, " profile:"

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance v4, Lorg/json/JSONObject;

    .line 88
    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v5, "NETWORK_ANALYTICS_PARAMETERS"

    .line 93
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 96
    move-result-object v4

    .line 97
    const-string/jumbo v5, "profile_attribute"

    .line 100
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 103
    move-result-object v4

    .line 104
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 106
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validateJsonContent(Lorg/json/JSONObject;)I

    .line 109
    move-result v5

    .line 110
    if-gez v5, :cond_4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v5

    .line 128
    :catch_0
    move-exception v0

    .line 129
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 134
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 136
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 138
    invoke-virtual {v1, v5, v4, p2, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I

    .line 141
    move-result v1

    .line 142
    if-gez v1, :cond_5

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v1

    .line 160
    :cond_5
    if-nez v1, :cond_7

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 164
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 166
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_7

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 175
    move-result v0

    .line 176
    const/4 v4, 0x1

    .line 177
    if-ne v0, v4, :cond_7

    .line 179
    if-eqz v2, :cond_6

    .line 181
    const-string v0, "The Knox NAP feature has been enabled"

    .line 183
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 191
    const-string/jumbo v2, "profile_name"

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-static {v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_2

    .line 201
    :goto_0
    const-string/jumbo v1, "registerNetworkMonitorProfile: Exception"

    .line 204
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v1, -0x1

    .line 208
    goto :goto_2

    .line 209
    :goto_1
    const-string/jumbo v1, "registerNetworkMonitorProfile: JSON Parsing Exception"

    .line 212
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v1, -0x2

    .line 216
    :goto_2
    if-nez v1, :cond_9

    .line 218
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 220
    const/4 v2, 0x0

    .line 221
    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {p0, v2, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 226
    :cond_8
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 228
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 231
    :cond_9
    return v1

    .line 232
    :cond_a
    :goto_3
    const-string/jumbo p0, "registerNetworkMonitorProfile: Invalid parameters."

    .line 235
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 p0, -0x4

    .line 239
    return p0
.end method

.method public final sendMessageToHandler(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final setFeatureProperty(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string/jumbo v2, "setNapEnabled "

    .line 17
    const-string v3, "DomainFilterNapCommon"

    .line 19
    invoke-static {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    iput-boolean p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->mNapEnabled:Z

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setNapProperty(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->updateEnforceDnsUidForAllNetworks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const-string/jumbo p0, "net.redirect_socket_calls.hooked"

    .line 33
    if-eqz p1, :cond_0

    .line 35
    :try_start_1
    const-string/jumbo p1, "true"

    .line 38
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string/jumbo p1, "false"

    .line 49
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_2
    const-string p1, "NetworkAnalytics:Service"

    .line 58
    const-string v2, "Unable to set NPA feature property"

    .line 60
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :goto_2
    return-void

    .line 65
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0
.end method

.method public final setupIntentFilter()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "NetworkAnalytics:Service"

    .line 7
    const-string/jumbo v1, "setup intent filter is called"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 18
    new-instance v5, Landroid/content/IntentFilter;

    .line 20
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 25
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 30
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.category.DEFAULT"

    .line 35
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, "package"

    .line 41
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 46
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v3, v0

    .line 51
    move-object v4, v1

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 55
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 57
    const-string v3, "android.intent.action.USER_STARTED"

    .line 59
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 61
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 63
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 65
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 68
    move-result-object v5

    .line 69
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 71
    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 76
    const/4 v8, 0x2

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v3, v0

    .line 79
    move-object v4, v1

    .line 80
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 83
    const-string/jumbo v2, "enterprise.container.uninstalled"

    .line 86
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 89
    move-result-object v5

    .line 90
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 92
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 95
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 98
    const-string/jumbo v2, "enterprise.container.admin.changed"

    .line 101
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 104
    move-result-object v5

    .line 105
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 107
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 110
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 113
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 116
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 119
    move-result-object v5

    .line 120
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final unregisterNetworkMonitorProfile(ILjava/lang/String;)I
    .locals 10

    .line 13
    const-string/jumbo v0, "unregisterNetworkMonitorProfile: Profile "

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    const-string v3, "NetworkAnalytics:Service"

    const/4 v4, 0x0

    if-lez p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "is absent or does not belong to adminUid "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p1

    move v6, v1

    goto/16 :goto_3

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget v6, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->jsonString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v6, v1

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 23
    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 24
    const-string v9, "__"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 25
    invoke-virtual {v7, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v7

    if-nez v7, :cond_3

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregisterNetworkMonitorProfile config profile obj is null for profile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_1
    move-exception p1

    goto :goto_3

    .line 28
    :cond_3
    invoke-virtual {p0, v7, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v5

    if-gez v5, :cond_4

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unregisterNetworkMonitorProfile: deactivation failed for profile:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 30
    :cond_4
    new-instance v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 31
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v9, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->profileName:Ljava/lang/String;

    .line 33
    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 34
    iget-object v9, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 35
    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 36
    iget v9, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->userId:I

    .line 37
    iput v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 38
    iget v7, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->opUserId:I

    .line 39
    invoke-virtual {p0, v2, v1, v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    goto :goto_1

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->removeProfileFromDatabase(ILjava/lang/String;)I

    move-result p2

    if-gez p2, :cond_7

    .line 41
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p1, :cond_6

    const-string p1, "Remove profile from database falied."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return p2

    :cond_7
    if-nez p2, :cond_b

    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 44
    :cond_8
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz p1, :cond_9

    const-string p1, "The Knox NAP feature has been disabled"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 46
    :cond_a
    :goto_2
    :try_start_2
    const-string/jumbo p1, "unregisterNetworkMonitorProfile: Invalid parameters"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, -0x4

    return p0

    .line 47
    :goto_3
    const-string/jumbo p2, "unregisterNetworkMonitorProfile. Exception"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, -0x1

    :cond_b
    :goto_4
    if-nez p2, :cond_d

    if-eqz v6, :cond_c

    .line 48
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 49
    :cond_c
    invoke-virtual {p0, v2, v6, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    :cond_d
    return p2
.end method

.method public final unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterNetworkMonitorProfile API caller is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 5
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 6
    :cond_1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final validateNAPClient(IILjava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid$5(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "NetworkAnalytics:Service"

    .line 7
    if-nez p1, :cond_0

    .line 9
    const-string/jumbo p0, "validateNAPClient: NAP client caller cannot be validated."

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/16 p0, -0xc

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_6

    .line 31
    const-string v2, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_5

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 41
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 46
    move-result-object p3

    .line 47
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p3

    .line 51
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    .line 57
    const-string v4, "NetworkAnalytics:ConfigStore"

    .line 59
    if-eqz v2, :cond_3

    .line 61
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 67
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 75
    if-eqz v2, :cond_1

    .line 77
    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageName:Ljava/lang/String;

    .line 79
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_1

    .line 85
    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->packageSignature:Ljava/lang/String;

    .line 87
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_1

    .line 93
    if-eqz v3, :cond_2

    .line 95
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures Dont match!!! "

    .line 98
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures in profile"

    .line 104
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Signatures in parameter "

    .line 113
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    move p0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    if-eqz v3, :cond_4

    .line 123
    const-string/jumbo p0, "validatePkgSignForAllProfiles: Valid package signature for "

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    const/4 p0, 0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    move-result p0

    .line 141
    :goto_0
    if-nez p0, :cond_6

    .line 143
    const-string p0, "_validateNAPClient: Package signature could not be matched for profile entry/entries"

    .line 145
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v1, -0xd

    .line 150
    goto :goto_1

    .line 151
    :cond_6
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    .line 153
    if-eqz p0, :cond_7

    .line 155
    const-string p0, "_validateNAPClient: Package validation complete."

    .line 157
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_7
    :goto_1
    return v1
.end method
