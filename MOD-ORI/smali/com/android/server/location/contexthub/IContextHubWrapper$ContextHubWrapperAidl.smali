.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAidlCallbackMap:Ljava/util/Map;

.field public mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mHub:Landroid/hardware/contexthub/IContextHub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    .line 15
    .line 16
    const-string v1, "Context Hub AIDL callback"

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string p0, "IContextHubWrapper"

    .line 58
    .line 59
    const-string p1, "Context Hub AIDL service death receipt could not be linked"

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "Context Hub AIDL HAL died"

    .line 2
    .line 3
    const-string v1, "IContextHubWrapper"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p0, "Could not reconnect to Context Hub AIDL HAL"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string v0, "IContextHubWrapper"

    .line 45
    .line 46
    const-string v2, "Context Hub AIDL service death receipt could not be linked"

    .line 47
    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;->run()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string/jumbo p0, "mHandleServiceRestartCallback is not set"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final disableNanoapp(IIJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0

    .line 15
    :catch_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final enableNanoapp(IIJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0

    .line 15
    :catch_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final declared-synchronized getHub()Landroid/hardware/contexthub/IContextHub;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final getHubs()Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Landroid/util/Pair;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/hardware/contexthub/ContextHubInfo;

    .line 52
    .line 53
    new-instance v3, Landroid/hardware/location/ContextHubInfo;

    .line 54
    .line 55
    invoke-direct {v3, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v2, v2, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    .line 62
    .line 63
    array-length v3, v2

    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_0
    if-ge v4, v3, :cond_1

    .line 66
    .line 67
    aget-object v5, v2, v4

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object p0
.end method

.method public final getPreloadedNanoappIds(I)[J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->getPreloadedNanoappIds(I)[J

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Exception while getting preloaded nanoapp IDs: "

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "IContextHubWrapper"

    .line 23
    .line 24
    invoke-static {p0, p1, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 10
    .line 11
    const-string v1, "ContextHubServiceUtil"

    .line 12
    .line 13
    new-instance v2, Landroid/hardware/contexthub/NanoappBinary;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/hardware/contexthub/NanoappBinary;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iput-wide v3, v2, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iput v3, v2, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput v3, v2, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iput-byte v3, v2, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput-byte v3, v2, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    new-array v4, v3, [B

    .line 50
    .line 51
    iput-object v4, v2, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, v2, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p2

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    const-string p2, "NanoApp binary was null"

    .line 63
    .line 64
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    invoke-virtual {p2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :goto_1
    :try_start_1
    invoke-interface {p0, p1, v2, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 76
    .line 77
    .line 78
    return v3

    .line 79
    :catch_2
    return v0

    .line 80
    :catch_3
    const/4 p0, 0x1

    .line 81
    return p0
.end method

.method public final onAirplaneModeSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onBtMainSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onBtScanningSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Exception in onHostEndpointConnected"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "IContextHubWrapper"

    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final onHostEndpointDisconnected(S)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    int-to-char p1, p1

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Exception in onHostEndpointDisconnected"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "IContextHubWrapper"

    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onLocationSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onMicrophoneSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onSettingChanged(ZB)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "Exception while sending setting update: "

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "IContextHubWrapper"

    .line 21
    .line 22
    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final onWifiMainSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onWifiScanningSettingChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(ZB)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onWifiSettingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final queryNanoapps(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0

    .line 15
    :catch_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 22
    .line 23
    invoke-direct {v2, p0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->registerExistingCallback(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final registerExistingCallback(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 21
    .line 22
    const-string v1, "IContextHubWrapper"

    .line 23
    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const-string p0, "Could not find existing callback to register for context hub ID = "

    .line 27
    .line 28
    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Exception while registering callback: "

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->sendMessageDeliveryStatusToHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0

    .line 15
    :catch_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p2, p1}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :catch_0
    return v0

    .line 19
    :catch_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final setTestMode(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHub;->setTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Exception while setting test mode (enable: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "true"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo p1, "false"

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "): "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "IContextHubWrapper"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return v0
.end method

.method public final supportsAirplaneModeSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final supportsBtSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final supportsLocationSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final supportsMicrophoneSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final supportsWifiSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final unloadNanoapp(IIJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :catch_0
    return v0

    .line 15
    :catch_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method
