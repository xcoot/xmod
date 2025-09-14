.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHidlCallbackMap:Ljava/util/Map;

.field public final mHub:Landroid/hardware/contexthub/V1_0/IContexthub;


# direct methods
.method public constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 13
    return-void
.end method


# virtual methods
.method public final disableNanoapp(IIJ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 3
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->disableNanoApp(IJI)I

    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final enableNanoapp(IIJ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 3
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->enableNanoApp(IJI)I

    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getPreloadedNanoappIds(I)[J
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [J

    .line 4
    return-object p0
.end method

.method public final loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 3
    const-string v0, "ContextHubServiceUtil"

    .line 5
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    .line 7
    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 10
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    .line 13
    move-result-wide v2

    .line 14
    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 16
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    .line 19
    move-result v2

    .line 20
    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 22
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    .line 25
    move-result v2

    .line 26
    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 28
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    .line 31
    move-result v2

    .line 32
    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 34
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    .line 37
    move-result v2

    .line 38
    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 40
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    .line 43
    move-result-object p2

    .line 44
    iget-object v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 49
    array-length v3, p2

    .line 50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 53
    array-length v3, p2

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    if-ge v4, v3, :cond_0

    .line 57
    aget-byte v5, p2, v4

    .line 59
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p2

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    const-string p2, "NanoApp binary was null"

    .line 73
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-virtual {p2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 86
    invoke-interface {p0, p1, v1, p3}, Landroid/hardware/contexthub/V1_0/IContexthub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    .line 89
    move-result p0

    .line 90
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 93
    move-result p0

    .line 94
    return p0
.end method

.method public final onBtMainSettingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBtScanningSettingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWifiMainSettingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWifiScanningSettingChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final queryNanoapps(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub;->queryApps(I)I

    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    .line 9
    invoke-direct {v2, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 19
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    check-cast p0, Ljava/util/HashMap;

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    .line 33
    invoke-interface {p2, p1, p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    .line 36
    return-void
.end method

.method public final registerExistingCallback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHidlCallbackMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl$ContextHubWrapperHidlCallback;

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string p0, "Could not find existing callback for context hub with ID = "

    .line 19
    const-string v0, "IContextHubWrapper"

    .line 21
    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 27
    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    .line 30
    return-void
.end method

.method public final sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 3
    return p0
.end method

.method public final sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p0, "IContextHubWrapper"

    .line 9
    const-string p1, "Reliable messages are only supported with the AIDL HAL"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, 0x2

    .line 15
    return p0

    .line 16
    :cond_0
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 18
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 20
    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 23
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 29
    iput-short p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 31
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    .line 34
    move-result p1

    .line 35
    iput p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 37
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    .line 40
    move-result-object p1

    .line 41
    iget-object p3, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 46
    array-length v1, p1

    .line 47
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 50
    array-length v1, p1

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    aget-byte v3, p1, v2

    .line 56
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 68
    invoke-interface {p0, p2, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    .line 71
    move-result p0

    .line 72
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public final setTestMode(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final supportsBtSettingNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final unloadNanoapp(IIJ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;->mHub:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 3
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub;->unloadNanoApp(IJI)I

    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toTransactionResult(I)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method
