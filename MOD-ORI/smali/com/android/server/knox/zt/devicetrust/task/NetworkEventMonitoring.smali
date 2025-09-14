.class public Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SYSTEM_UID:I = 0x3e8

.field public static final TAG_NETWORK_EVENT_UNKNOWN:I = -0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mBootTimeNanos:J

.field public final mEventType:I

.field public mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v10, p7

    .line 3
    .line 4
    const/4 v7, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v8, p7

    .line 15
    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 17
    .line 18
    .line 19
    iput-object v10, v9, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 20
    .line 21
    move v0, p1

    .line 22
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mEventType:I

    .line 23
    .line 24
    iget-wide v0, v10, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 25
    .line 26
    iput-wide v0, v9, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mBootTimeNanos:J

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getInterfaceNameFromIndex(I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "getInterfaceName error: "

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public final getPackageNameFromUid(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v1, "getPackageNameForUid error: "

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getTagFromEventType(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    :cond_0
    return p0
.end method

.method public final isPlatformSignedApp(I)Z
    .locals 7

    .line 1
    const-string v0, "Exception checking platform signed app.. "

    .line 2
    .line 3
    const-string/jumbo v1, "uid = "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    const-string/jumbo v4, "package"

    .line 11
    .line 12
    .line 13
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v5, 0x3e8

    .line 22
    .line 23
    invoke-interface {v4, p1, v5}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v6, " signature matched."

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :catch_0
    move-exception v4

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    const-string v0, " signature didn\'t match."

    .line 85
    .line 86
    invoke-static {p1, v1, v0, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return p0

    .line 91
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo p1, "notifyKnoxZtInternalService: null event data"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getZtInternalService()Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo p2, "notifyKnoxZtInternalService: KnoxZtService is null."

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string/jumbo v2, "notifyKnoxZtInternalService: sending data to framework.."

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->getBundle()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo p2, "notifyKnoxZtInternalService: Failed to bind zt internal service"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final onEvent(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo p1, "onEvent(): data is null."

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getTagFromEventType(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v1, "onEvent: Invalid network event type: "

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->eventType:I

    .line 32
    .line 33
    invoke-static {v0, p1, p0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getPackageNameFromUid(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    iget v2, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->uid:I

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->isPlatformSignedApp(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string p1, "Excluding insecure network event for package "

    .line 57
    .line 58
    invoke-static {p1, v1, p0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iput-object v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->ifIndex:I

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->getInterfaceNameFromIndex(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->interfaceName:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v3, "onEvent: data {"

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string/jumbo v3, "}"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    const-string/jumbo v2, "onEvent: passing data to notifyKnoxZtInternalService.."

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->notifyKnoxZtInternalService(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final onMonitored()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mEventType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->readNetworkEventData(I)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v3, "onMonitored() sending data to onEvent"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->mBootTimeNanos:J

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;->adjustToActualTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/task/NetworkEventMonitoring;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/NetworkEventData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "Failed in transaction: "

    .line 48
    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
