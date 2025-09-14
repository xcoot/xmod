.class public final Lcom/android/server/enterprise/device/DeviceInfo;
.super Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mSignalStrength:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDataCallConnected:Z

.field public mDataCallLogLastNetType:Ljava/lang/String;

.field public mDataCallLogLastStatus:Ljava/lang/String;

.field public mDataCallLogLastTime:J

.field public mDataCallLogLastValue:J

.field public final mDataConnectionStateChangeReceiver:Lcom/android/server/enterprise/device/DeviceInfo$1;

.field public mDataLogEnabled:Z

.field public final mDataStatisticsReceiver:Lcom/android/server/enterprise/device/DeviceInfo$1;

.field public final mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

.field public mDataStatsCounter:I

.field public mDataStatsEnabled:Z

.field public final mDataUsageEventsHandler:Landroid/os/Handler;

.field public mDataUsageTimer:I

.field public mDataUsageTimerActivated:Z

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mLastUpdateMobileRx:J

.field public mLastUpdateMobileTx:J

.field public mLastUpdateWifiRx:J

.field public mLastUpdateWifiTx:J

.field public final mMessagingReceiver:Lcom/android/server/enterprise/device/DeviceInfo$1;

.field public mStorageMobileRx:J

.field public mStorageMobileTx:J

.field public mStorageWifiRx:J

.field public mStorageWifiTx:J

.field public final mTelMgr:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiStatsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x63

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 13
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 15
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 17
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 19
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 21
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 23
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 25
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 27
    const/4 v3, 0x0

    .line 28
    iput v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 30
    const/16 v4, 0xbb8

    .line 32
    iput v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 34
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 36
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 40
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 42
    new-instance v4, Landroid/os/Handler;

    .line 44
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 47
    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 49
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 51
    const-string v4, ""

    .line 53
    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 57
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 59
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 61
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$1;

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;I)V

    .line 67
    new-instance v2, Lcom/android/server/enterprise/device/DeviceInfo$1;

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;I)V

    .line 73
    new-instance v3, Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 75
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/device/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    .line 78
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 80
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 82
    new-instance v5, Lcom/android/server/enterprise/device/DeviceInfo$1;

    .line 84
    const/4 v0, 0x2

    .line 85
    invoke-direct {v5, p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;I)V

    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 99
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 101
    invoke-static {v0, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 104
    move-result-object v0

    .line 105
    const-string/jumbo v3, "phone"

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 114
    iput-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 116
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    new-instance v6, Landroid/content/IntentFilter;

    .line 121
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string/jumbo p0, "com.samsung.mms.RECEIVED_MSG"

    .line 127
    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo p0, "com.samsung.mms.SENT_MSG"

    .line 133
    invoke-virtual {v6, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const/4 v9, 0x2

    .line 137
    const-string/jumbo v7, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    .line 140
    const/4 v8, 0x0

    .line 141
    move-object v4, p1

    .line 142
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 145
    new-instance p0, Landroid/content/IntentFilter;

    .line 147
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x2

    .line 156
    invoke-virtual {p1, v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method public static getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "(?i:model)\\s*(?i:name).*:.*[a-zA-Z].*"

    .line 3
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const-string v0, "(?i:processor).*:.*[a-zA-Z].*"

    .line 11
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Ljava/util/StringTokenizer;

    .line 23
    const-string v1, ":"

    .line 25
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "^[0-9]+$"

    .line 45
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 51
    return-object p0

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "unknown"

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "DeviceInfo"

    .line 20
    const-string/jumbo v0, "could not get property"

    .line 23
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_0
    return-object v1
.end method

.method public static getTrafficWifiRx()J
    .locals 9

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 11
    cmp-long v6, v4, v2

    .line 13
    const-wide/16 v7, 0x0

    .line 15
    if-nez v6, :cond_0

    .line 17
    move-wide v2, v7

    .line 18
    :cond_0
    cmp-long v4, v4, v0

    .line 20
    if-nez v4, :cond_1

    .line 22
    move-wide v0, v7

    .line 23
    :cond_1
    sub-long/2addr v2, v0

    .line 24
    return-wide v2
.end method

.method public static getTrafficWifiTx()J
    .locals 9

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 11
    cmp-long v6, v4, v2

    .line 13
    const-wide/16 v7, 0x0

    .line 15
    if-nez v6, :cond_0

    .line 17
    move-wide v2, v7

    .line 18
    :cond_0
    cmp-long v4, v4, v0

    .line 20
    if-nez v4, :cond_1

    .line 22
    move-wide v0, v7

    .line 23
    :cond_1
    sub-long/2addr v2, v0

    .line 24
    return-wide v2
.end method

.method public static isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string p2, ";"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    array-length p2, p1

    .line 23
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    if-ge v2, p2, :cond_1

    .line 27
    aget-object v3, p1, v2

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    move-result v3

    .line 33
    if-ne p0, v3, :cond_0

    .line 35
    return v1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return v0

    .line 40
    :cond_2
    return v1
.end method


# virtual methods
.method public final clearCallingLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 17
    const-string v0, "CallingLog"

    .line 19
    const-string/jumbo v2, "callingCaptureAdmin"

    .line 22
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    .line 1
    const-string v0, ";"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v2

    .line 17
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v3, :cond_5

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/ContentValues;

    .line 30
    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_4

    .line 36
    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    array-length v6, v5

    .line 49
    if-ne v6, v4, :cond_1

    .line 51
    aget-object v6, v5, v1

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    move-result v6

    .line 57
    if-ne p1, v6, :cond_1

    .line 59
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    invoke-virtual {v4, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 64
    move-result v3

    .line 65
    if-gtz v3, :cond_0

    .line 67
    return v1

    .line 68
    :cond_1
    array-length v6, v5

    .line 69
    if-le v6, v4, :cond_0

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    array-length v6, v5

    .line 77
    move v7, v1

    .line 78
    :goto_0
    if-ge v7, v6, :cond_3

    .line 80
    aget-object v8, v5, v7

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    move-result v9

    .line 86
    if-eq p1, v9, :cond_2

    .line 88
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    .line 99
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v5, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    invoke-virtual {v4, p2, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_0

    .line 117
    return v1

    .line 118
    :cond_4
    if-nez p4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    invoke-virtual {v4, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 125
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-gtz v3, :cond_0

    .line 128
    return v1

    .line 129
    :cond_5
    return v4

    .line 130
    :catch_0
    const-string p0, "DeviceInfo"

    .line 132
    const-string/jumbo p1, "could not write log edm database"

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v1
.end method

.method public final clearMMSLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const-string/jumbo v0, "mmsCaptureAdmin"

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "MMS"

    .line 13
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final clearSMSLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const-string/jumbo v0, "smsCaptureAdmin"

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "SMS"

    .line 13
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 7
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 9
    if-nez p1, :cond_1

    .line 11
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 13
    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p1, v0

    .line 33
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 37
    if-nez v2, :cond_2

    .line 39
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 41
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 47
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 59
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 65
    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 69
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 73
    iget p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 75
    int-to-long v1, p0

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    if-nez p1, :cond_3

    .line 82
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 84
    if-eqz p1, :cond_3

    .line 86
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 88
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 90
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 92
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    :cond_3
    :goto_2
    return-void
.end method

.method public final enableCallingCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 9
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v1, "MISC"

    .line 22
    const-string v5, "CallingLogEnabled"

    .line 24
    move v3, p2

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final enableMMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const-string v1, "MISC"

    .line 11
    const-string/jumbo v5, "mmsLogEnabled"

    .line 14
    const/4 v4, 0x0

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    const-string p0, "DeviceInfo"

    .line 23
    const-string/jumbo p1, "could not enable mms capture"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final enableSMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const-string v1, "MISC"

    .line 11
    const-string/jumbo v5, "smsLogEnabled"

    .line 14
    const/4 v4, 0x0

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    const-string p0, "DeviceInfo"

    .line 23
    const-string/jumbo p1, "could not enable sms capture"

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getAvailableCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 4

    .line 1
    const-class p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 3
    const-wide/16 v0, -0x1

    .line 5
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 13
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 15
    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 22
    move-object p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 26
    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    :goto_0
    if-nez p1, :cond_1

    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string/jumbo v3, "mounted"

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    :goto_1
    if-eqz p1, :cond_4

    .line 43
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 51
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 62
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_2
    if-nez v2, :cond_3

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    new-instance p0, Landroid/os/StatFs;

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 80
    move-result-wide v2

    .line 81
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 84
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    mul-long v0, p0, v2

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_4
    :goto_3
    return-wide v0
.end method

.method public final getAvailableCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 6

    .line 1
    const-wide/16 p0, -0x1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/StatFs;

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 23
    move-result-wide v0

    .line 24
    mul-long/2addr v0, v2

    .line 25
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 27
    const-class v3, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 35
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 42
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v2, :cond_1

    .line 49
    :cond_0
    move-object v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    array-length v4, v2

    .line 52
    if-lez v4, :cond_0

    .line 54
    const/4 v4, 0x0

    .line 55
    aget-object v5, v2, v4

    .line 57
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_0

    .line 63
    aget-object v2, v2, v4

    .line 65
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo v5, "fuse"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 78
    const-string v2, "/"

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    :goto_0
    if-nez v2, :cond_3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 90
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    :goto_1
    if-nez v3, :cond_4

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    new-instance v2, Landroid/os/StatFs;

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 108
    move-result-wide v3

    .line 109
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 112
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    mul-long/2addr p0, v3

    .line 114
    add-long/2addr p0, v0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_2
    return-wide p0
.end method

.method public final getAvailableRamMemory(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 6

    .line 1
    const-string p0, "MemFree:"

    .line 3
    const-string p1, "Cached:"

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x2

    .line 10
    new-array v0, p1, [J

    .line 12
    const-string v1, "/proc/meminfo"

    .line 14
    invoke-static {v1, p0, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 17
    const/4 p0, 0x0

    .line 18
    move v1, p0

    .line 19
    :goto_0
    if-ge v1, p1, :cond_0

    .line 21
    aget-wide v2, v0, v1

    .line 23
    const-wide/16 v4, 0x400

    .line 25
    mul-long/2addr v2, v4

    .line 26
    aput-wide v2, v0, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    aget-wide p0, v0, p0

    .line 33
    const/4 v1, 0x1

    .line 34
    aget-wide v0, v0, v1

    .line 36
    add-long/2addr p0, v0

    .line 37
    return-wide p0
.end method

.method public final getBytesReceivedNetwork(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 6
    return-wide p0
.end method

.method public final getBytesReceivedWiFi(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 6
    return-wide p0
.end method

.method public final getBytesSentNetwork(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 6
    return-wide p0
.end method

.method public final getBytesSentWiFi(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 6
    return-wide p0
.end method

.method public final getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 23
    return p1

    .line 24
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string p0, "DeviceInfo"

    .line 31
    const-string/jumbo p1, "could not parse integer "

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return v0
.end method

.method public final getCellTowerCID(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getCellTowerLAC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getCellTowerPSC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final getCellTowerRSSI(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    const/16 v0, 0x63

    .line 8
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v2, "DeviceInfo"

    .line 17
    if-ne p1, v1, :cond_0

    .line 19
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " dBm "

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " asu"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    sput-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v0, "updateSignalStrength: "

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 81
    return-object p0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 90
    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 95
    move-result p1

    .line 96
    const/4 v1, -0x1

    .line 97
    if-eq p1, v1, :cond_3

    .line 99
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 101
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_2

    .line 107
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 110
    move-result v1

    .line 111
    if-lez v1, :cond_2

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object p0

    .line 117
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_3

    .line 123
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    .line 129
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    .line 132
    move-result v2

    .line 133
    if-ne v2, p1, :cond_1

    .line 135
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    .line 138
    move-result v0

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-string p0, "Could not retrieve NeighboringCellInfo"

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    .line 147
    return-object p0

    .line 148
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method public final getDataCallLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-string/jumbo p1, "dataCallDate"

    .line 7
    const-string/jumbo v0, "dataCallStatus"

    .line 10
    const-string/jumbo v1, "dataCallNetType"

    .line 13
    const-string/jumbo v2, "dataCallBytes"

    .line 16
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    if-eqz p2, :cond_0

    .line 22
    const-string/jumbo v4, "dataCallDate>=?"

    .line 25
    invoke-static {v4, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 28
    move-result-object p2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const-string v4, "DATACALLLOG"

    .line 35
    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 38
    move-result-object p0

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/content/ContentValues;

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v5, ";"

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    return-object p2
.end method

.method public final getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    const-string p1, "PHONERESTRICTION"

    .line 8
    const-string/jumbo v0, "enableDataCallLogging"

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_0

    .line 39
    move v1, p1

    .line 40
    :cond_1
    return v1
.end method

.method public final getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 5
    const-string/jumbo v0, "enableWifiDataCallDataStatistic"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_0

    .line 36
    move v1, p1

    .line 37
    :cond_1
    return v1
.end method

.method public final getDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    const-string v0, "MISC"

    .line 7
    const-string/jumbo v1, "miscDataStatisticTimer"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result p0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "DeviceInfo"

    .line 19
    const-string/jumbo v0, "getDataUsageTimer could not read database"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Landroid/util/AndroidException;->printStackTrace()V

    .line 28
    const/4 p0, -0x1

    .line 29
    :goto_0
    return p0
.end method

.method public final getDeviceMaker(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "ro.product.manufacturer"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getDeviceName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "device_name"

    .line 10
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    :cond_0
    return-object p1
.end method

.method public final getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "os.name"

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p0, "DeviceInfo"

    .line 11
    const-string/jumbo p1, "could not get property"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public final getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "os.version"

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p0, "DeviceInfo"

    .line 11
    const-string/jumbo p1, "could not get property"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public final getDevicePlatform(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "ro.build.version.release"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string p1, "Android "

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public final getDeviceProcessorSpeed(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    .line 4
    new-instance v0, Ljava/io/FileReader;

    .line 6
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 8
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_0
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :catch_1
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    move-object v2, p1

    .line 33
    move-object p1, p0

    .line 34
    move-object p0, v2

    .line 35
    goto :goto_3

    .line 36
    :catch_2
    move-exception p1

    .line 37
    move-object v2, p1

    .line 38
    move-object p1, p0

    .line 39
    move-object p0, v2

    .line 40
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    if-eqz p1, :cond_0

    .line 45
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 48
    goto :goto_2

    .line 49
    :catch_3
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_0
    :goto_2
    const-string p0, ""

    .line 55
    return-object p0

    .line 56
    :goto_3
    if-eqz p1, :cond_1

    .line 58
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 61
    goto :goto_4

    .line 62
    :catch_4
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_1
    :goto_4
    throw p0
.end method

.method public final getDeviceProcessorType(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    .line 4
    new-instance v0, Ljava/io/FileReader;

    .line 6
    const-string v1, "/proc/cpuinfo"

    .line 8
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :goto_0
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 42
    goto :goto_2

    .line 43
    :catch_2
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    goto :goto_2

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    move-object v2, p1

    .line 50
    move-object p1, p0

    .line 51
    move-object p0, v2

    .line 52
    goto :goto_3

    .line 53
    :catch_3
    move-exception p1

    .line 54
    move-object v2, p1

    .line 55
    move-object p1, p0

    .line 56
    move-object p0, v2

    .line 57
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    if-eqz p1, :cond_2

    .line 62
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 65
    :cond_2
    :goto_2
    const-string p0, ""

    .line 67
    return-object p0

    .line 68
    :goto_3
    if-eqz p1, :cond_3

    .line 70
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 73
    goto :goto_4

    .line 74
    :catch_4
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_3
    :goto_4
    throw p0
.end method

.method public final getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "dropped"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getInboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    const-string/jumbo v1, "mmsType"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "1"

    .line 19
    filled-new-array {v2}, [Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v3, "MMS"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/content/ContentValues;

    .line 48
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    const-string/jumbo v3, "mmsCaptureAdmin"

    .line 53
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "From:"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "mmsAddress"

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, " - TimeStamp:"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "mmsTimeStamp"

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, " - Body:"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v3, "mmsBody"

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-object v0

    .line 118
    :catch_0
    const-string p0, "DeviceInfo"

    .line 120
    const-string/jumbo p1, "could not open edm database"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0
.end method

.method public final getInboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    const-string/jumbo v1, "smsType"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "1"

    .line 19
    filled-new-array {v2}, [Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v3, "SMS"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/content/ContentValues;

    .line 48
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    const-string/jumbo v3, "smsCaptureAdmin"

    .line 53
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "From:"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "smsAddress"

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, " - TimeStamp:"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "smsTimeStamp"

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, " - Body:"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v3, "smsBody"

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-object v0

    .line 118
    :catch_0
    const-string p0, "DeviceInfo"

    .line 120
    const-string/jumbo p1, "could not open edm database"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0
.end method

.method public final getIncomingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :try_start_0
    const-string/jumbo v1, "callingType"

    .line 27
    filled-new-array {v1}, [Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "1"

    .line 33
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    const-string v3, "CallingLog"

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 50
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/content/ContentValues;

    .line 62
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    const-string/jumbo v3, "callingCaptureAdmin"

    .line 67
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v3, "From:"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v3, "callingAddress"

    .line 86
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, " - TimeStamp:"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v3, "callingTimeStamp"

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, " - Duration:"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v3, "callingDuration"

    .line 116
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, " - Status:"

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v3, "callingStatus"

    .line 131
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 146
    :catch_0
    const-string p0, "DeviceInfo"

    .line 148
    const-string/jumbo p1, "could not open edm database"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    return-object v0
.end method

.method public final getKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "DeviceInfo"

    .line 17
    const-string v2, ""

    .line 19
    if-eqz v0, :cond_7

    .line 21
    array-length v3, v0

    .line 22
    if-nez v3, :cond_0

    .line 24
    goto/16 :goto_3

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    aget-object v0, v0, v3

    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    move-result v4

    .line 33
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 36
    move-result-object v5

    .line 37
    :try_start_0
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 40
    invoke-interface {v5, v6, v0, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 43
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v4, :cond_1

    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v4

    .line 49
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    :cond_1
    move v4, v3

    .line 53
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v6, "callingPackage "

    .line 58
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v6, ", isKnoxInternalApp = "

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "KnoxServiceIdTable"

    .line 81
    const-string/jumbo v5, "serviceId"

    .line 84
    if-eqz v4, :cond_3

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    .line 88
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 95
    const-string v3, "adminUid"

    .line 97
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 102
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    if-nez p0, :cond_2

    .line 108
    return-object v2

    .line 109
    :cond_2
    return-object p0

    .line 110
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 112
    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 125
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object p0

    .line 129
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_6

    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/content/ContentValues;

    .line 141
    const-string/jumbo v1, "packageList"

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_4

    .line 150
    const-string v4, ","

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    array-length v4, v1

    .line 157
    move v6, v3

    .line 158
    :goto_2
    if-ge v6, v4, :cond_4

    .line 160
    aget-object v7, v1, v6

    .line 162
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_5

    .line 168
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    move-object v2, p1

    .line 173
    goto :goto_1

    .line 174
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 176
    goto :goto_2

    .line 177
    :cond_6
    return-object v2

    .line 178
    :cond_7
    :goto_3
    const-string/jumbo p0, "unable to find the packages for uid : "

    .line 181
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v2
.end method

.method public final getKnoxServicePackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result p1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const-string/jumbo v1, "packageList"

    .line 36
    filled-new-array {v1}, [Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Landroid/content/ContentValues;

    .line 42
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 49
    const-string v4, "adminUid"

    .line 51
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 56
    const-string p1, "KnoxServiceIdTable"

    .line 58
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p0

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/content/ContentValues;

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_0

    .line 96
    const-string v2, ","

    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    array-length v2, p1

    .line 103
    const/4 v3, 0x0

    .line 104
    :goto_0
    if-ge v3, v2, :cond_0

    .line 106
    aget-object v4, p1, v3

    .line 108
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-object v0
.end method

.method public final getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "missed"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getModelName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "ro.product.name"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getModelNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "ro.product.model"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getModemFirmware(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "gsm.version.baseband"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getOutboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    const-string/jumbo v1, "mmsType"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "0"

    .line 19
    filled-new-array {v2}, [Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v3, "MMS"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/content/ContentValues;

    .line 48
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    const-string/jumbo v3, "mmsCaptureAdmin"

    .line 53
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "To:"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "mmsAddress"

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, " - TimeStamp:"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "mmsTimeStamp"

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, " - Body:"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v3, "mmsBody"

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-object v0

    .line 118
    :catch_0
    const-string p0, "DeviceInfo"

    .line 120
    const-string/jumbo p1, "could not open edm database"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0
.end method

.method public final getOutboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    const-string/jumbo v1, "smsType"

    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "0"

    .line 19
    filled-new-array {v2}, [Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v3, "SMS"

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/content/ContentValues;

    .line 48
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    const-string/jumbo v3, "smsCaptureAdmin"

    .line 53
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "To:"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "smsAddress"

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, " - TimeStamp:"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "smsTimeStamp"

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v3, " - Body:"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v3, "smsBody"

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-object v0

    .line 118
    :catch_0
    const-string p0, "DeviceInfo"

    .line 120
    const-string/jumbo p1, "could not open edm database"

    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v0
.end method

.method public final getOutgoingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    :try_start_0
    const-string/jumbo v1, "callingType"

    .line 27
    filled-new-array {v1}, [Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "0"

    .line 33
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    const-string v3, "CallingLog"

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 50
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/content/ContentValues;

    .line 62
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    const-string/jumbo v3, "callingCaptureAdmin"

    .line 67
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v3, "To:"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v3, "callingAddress"

    .line 86
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, " - TimeStamp:"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v3, "callingTimeStamp"

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, " - Duration:"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v3, "callingDuration"

    .line 116
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, " - Status:"

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v3, "callingStatus"

    .line 131
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 146
    :catch_0
    const-string p0, "DeviceInfo"

    .line 148
    const-string/jumbo p1, "could not log edm database"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    return-object v0
.end method

.method public final getPlatformSDK(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    .line 1
    const-string/jumbo p0, "ro.build.version.sdk"

    .line 4
    const/4 p1, -0x1

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string p0, "DeviceInfo"

    .line 12
    const-string/jumbo v0, "could not get property"

    .line 15
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    return p1
.end method

.method public final getPlatformVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "ro.build.version.release"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getPlatformVersionName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "UNKNOWN"

    .line 3
    return-object p0
.end method

.method public final getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string p0, "DeviceInfo"

    .line 3
    const-string p1, "SalesCode : return ("

    .line 5
    const-string/jumbo v0, "ril.sales_code"

    .line 8
    const-string/jumbo v1, "none"

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 24
    const-string v2, "BTU"

    .line 26
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :try_start_0
    const-string v2, "MSK"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    const-string v0, "SKT"

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto/16 :goto_1

    .line 44
    :cond_1
    const-string v2, "MKT/KTT"

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 52
    const-string v0, "KT"

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v2, "MLG/LGT"

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 63
    const-string v0, "LG"

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v2, "BST/SPR/VMU/XAS"

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne v2, v3, :cond_4

    .line 75
    const-string v0, "SPR"

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-string v2, "TFG"

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 86
    const-string/jumbo v2, "ril.product_code"

    .line 89
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_5

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 102
    move-result v1

    .line 103
    add-int/lit8 v1, v1, -0x3

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    const-string v2, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    if-eqz v2, :cond_5

    .line 117
    :try_start_1
    const-string v0, "SalesCode : Use product code as customerCode for Movistar single binary(TFG)"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    move-object v0, v1

    .line 123
    goto :goto_0

    .line 124
    :catch_1
    move-exception p1

    .line 125
    move-object v0, v1

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string p1, ")"

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    goto :goto_2

    .line 148
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v2, "getSalesCode : RuntimeException : "

    .line 153
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_2
    return-object v0
.end method

.method public final getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "00000000000"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 11
    filled-new-array {v2}, [Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 25
    const-string/jumbo p0, "ril.serialnumber"

    .line 28
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    move-object v0, p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    const-string/jumbo p0, "ro.boot.serialno"

    .line 50
    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :goto_2
    return-object v0
.end method

.method public final getStrictDataUsageTimer()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "MISC"

    .line 6
    const-string/jumbo v2, "miscDataStatisticTimer"

    .line 9
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v1

    .line 33
    if-eqz v0, :cond_1

    .line 35
    if-ge v1, v0, :cond_0

    .line 37
    :cond_1
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-nez v0, :cond_3

    .line 41
    const/4 v0, 0x3

    .line 42
    :cond_3
    return v0
.end method

.method public final getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "success"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getTotalCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 4

    .line 1
    const-class p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 3
    const-wide/16 v0, -0x1

    .line 5
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 13
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 15
    invoke-virtual {p1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 22
    move-object p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 26
    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    :goto_0
    if-nez p1, :cond_1

    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string/jumbo v3, "mounted"

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    :goto_1
    if-eqz p1, :cond_4

    .line 43
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 51
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 62
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_2
    if-nez v2, :cond_3

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    new-instance p0, Landroid/os/StatFs;

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 80
    move-result-wide v2

    .line 81
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 84
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    mul-long v0, p0, v2

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_4
    :goto_3
    return-wide v0
.end method

.method public final getTotalCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 6

    .line 1
    const-wide/16 p0, -0x1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/StatFs;

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 23
    move-result-wide v0

    .line 24
    mul-long/2addr v0, v2

    .line 25
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 27
    const-class v3, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 35
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 42
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v2, :cond_1

    .line 49
    :cond_0
    move-object v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    array-length v4, v2

    .line 52
    if-lez v4, :cond_0

    .line 54
    const/4 v4, 0x0

    .line 55
    aget-object v5, v2, v4

    .line 57
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_0

    .line 63
    aget-object v2, v2, v4

    .line 65
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo v5, "fuse"

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 78
    const-string v2, "/"

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    :goto_0
    if-nez v2, :cond_3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v3, Ljava/io/File;

    .line 90
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    :goto_1
    if-nez v3, :cond_4

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    new-instance v2, Landroid/os/StatFs;

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 108
    move-result-wide v3

    .line 109
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 112
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    mul-long/2addr p0, v3

    .line 114
    add-long/2addr p0, v0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_2
    return-wide p0
.end method

.method public final getTotalRamMemory(Lcom/samsung/android/knox/ContextInfo;)J
    .locals 4

    .line 1
    const-string p0, "MemTotal:"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x1

    .line 8
    new-array p1, p1, [J

    .line 10
    const-string v0, "/proc/meminfo"

    .line 12
    invoke-static {v0, p0, p1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 15
    const/4 p0, 0x0

    .line 16
    aget-wide v0, p1, p0

    .line 18
    const-wide/16 v2, 0x400

    .line 20
    mul-long/2addr v0, v2

    .line 21
    aput-wide v0, p1, p0

    .line 23
    return-wide v0
.end method

.method public final getTrafficMobileRx()J
    .locals 6

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 7
    const-wide/16 v4, 0x0

    .line 9
    cmp-long v2, v2, v4

    .line 11
    if-lez v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 15
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 23
    :cond_0
    const-wide/16 v2, -0x1

    .line 25
    cmp-long p0, v2, v0

    .line 27
    if-nez p0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-wide v4, v0

    .line 31
    :goto_0
    return-wide v4
.end method

.method public final getTrafficMobileTx()J
    .locals 6

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 7
    const-wide/16 v4, 0x0

    .line 9
    cmp-long v2, v2, v4

    .line 11
    if-lez v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 15
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 23
    :cond_0
    const-wide/16 v2, -0x1

    .line 25
    cmp-long p0, v2, v0

    .line 27
    if-nez p0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-wide v4, v0

    .line 31
    :goto_0
    return-wide v4
.end method

.method public final getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "MISC"

    .line 5
    const-string/jumbo v0, "enableWifiDataStatistic"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_0

    .line 36
    move v1, p1

    .line 37
    :cond_1
    return v1
.end method

.method public final isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e9

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 14
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 21
    return v0

    .line 22
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string p1, "MISC"

    .line 26
    const-string v1, "CallingLogEnabled"

    .line 28
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz p1, :cond_2

    .line 54
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :catch_0
    const-string p0, "DeviceInfo"

    .line 58
    const-string/jumbo p1, "could not open edm database"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    return v0
.end method

.method public final isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo p1, "keyguard"

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/KeyguardManager;

    .line 12
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "isDeviceSecure "

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 25
    move-result p0

    .line 26
    const-string p1, "DeviceInfo"

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    const/4 p0, 0x0

    .line 57
    :goto_0
    return p0

    .line 58
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v0, "MISC"

    .line 6
    const-string/jumbo v1, "mmsLogEnabled"

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :catch_0
    const-string p0, "DeviceInfo"

    .line 39
    const-string/jumbo v0, "could not open edm database"

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    return p1
.end method

.method public final isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e9

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    const-string v0, "MISC"

    .line 17
    const-string/jumbo v1, "smsLogEnabled"

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catch_0
    const-string p0, "DeviceInfo"

    .line 50
    const-string/jumbo v0, "could not open edm database"

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    return p1
.end method

.method public final isWifiStateEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "wifi"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 20
    const/4 v0, 0x0

    .line 21
    if-nez p0, :cond_1

    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x3

    .line 29
    if-ne p0, v1, :cond_2

    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_2
    return v0
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
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    move-result v1

    .line 26
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 31
    const-string v0, "CallingLog"

    .line 33
    const-string/jumbo v1, "callingCaptureAdmin"

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    const-string v0, "SMS"

    .line 42
    const-string/jumbo v1, "smsCaptureAdmin"

    .line 45
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    const-string v0, "MMS"

    .line 50
    const-string/jumbo v1, "mmsCaptureAdmin"

    .line 53
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    const-string/jumbo v1, "success"

    .line 19
    const-string v2, "0"

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    const-string/jumbo v3, "missed"

    .line 30
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    and-int/2addr p1, v1

    .line 35
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    const-string/jumbo v1, "dropped"

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    and-int/2addr p0, p1

    .line 45
    return p0
.end method

.method public final resetDataCallLogging(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 8
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 10
    const/4 p1, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 13
    const-string/jumbo v0, "dataCallDate<=?"

    .line 16
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "DATACALLLOG"

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-nez p2, :cond_1

    .line 36
    const-string p0, "1"

    .line 38
    invoke-virtual {v0, v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    move-result p0

    .line 42
    if-ltz p0, :cond_2

    .line 44
    :goto_1
    move v2, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 49
    move-result p0

    .line 50
    if-lez p0, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    return v2
.end method

.method public final resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 15
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 17
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 19
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 21
    new-instance p1, Landroid/content/ContentValues;

    .line 23
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 26
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object v2

    .line 32
    const-string/jumbo v3, "deviceWifiSent"

    .line 35
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v2

    .line 44
    const-string/jumbo v3, "deviceWifiReceived"

    .line 47
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v2

    .line 56
    const-string/jumbo v3, "deviceNetworkSent"

    .line 59
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v2

    .line 68
    const-string/jumbo v3, "deviceNetworkReceived"

    .line 71
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    const-string v3, "DEVICE"

    .line 78
    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 81
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    .line 84
    move-result-wide v2

    .line 85
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 87
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    .line 90
    move-result-wide v2

    .line 91
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 93
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    .line 96
    move-result-wide v2

    .line 97
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 99
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    .line 102
    move-result-wide v2

    .line 103
    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 105
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 107
    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 111
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 113
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_0
    return-void
.end method

.method public final setDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 12
    const-string/jumbo v5, "enableDataCallLogging"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 31
    :cond_0
    return p2
.end method

.method public final setDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 12
    const-string/jumbo v5, "enableWifiDataCallDataStatistic"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 31
    :cond_0
    return p2
.end method

.method public final setDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    if-lt p2, p1, :cond_1

    .line 17
    const/16 p1, 0x3c

    .line 19
    if-le p2, p1, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    move v3, p2

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    const/4 p2, 0x3

    .line 25
    goto :goto_0

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    const-string v4, "MISC"

    .line 30
    const-string/jumbo v5, "miscDataStatisticTimer"

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    .line 43
    move-result p2

    .line 44
    mul-int/lit16 p2, p2, 0x3e8

    .line 46
    iput p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 48
    :cond_2
    iget-boolean p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 50
    if-eqz p2, :cond_3

    .line 52
    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 56
    iget p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 58
    int-to-long v1, p0

    .line 59
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_3
    return p1
.end method

.method public final setKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    const/4 p1, 0x0

    .line 25
    const-string v0, "DeviceInfo"

    .line 27
    if-eqz p2, :cond_7

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_7

    .line 35
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    goto/16 :goto_1

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    move-result v1

    .line 47
    const-string v2, "adminUid"

    .line 49
    const-string/jumbo v3, "packageList"

    .line 52
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    const-string v6, "KnoxServiceIdTable"

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    move-result v5

    .line 71
    const-string v7, ","

    .line 73
    if-nez v5, :cond_3

    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v4

    .line 79
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroid/content/ContentValues;

    .line 91
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 102
    move-result v5

    .line 103
    if-eqz v8, :cond_1

    .line 105
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 108
    move-result-object v8

    .line 109
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 112
    move-result-object v8

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object v9

    .line 117
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_1

    .line 123
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Ljava/lang/String;

    .line 129
    if-eqz v8, :cond_2

    .line 131
    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_2

    .line 137
    if-eq v5, v1, :cond_2

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string p2, " already stored by uid "

    .line 149
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 159
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return p1

    .line 163
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object p2

    .line 172
    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_5

    .line 178
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Ljava/lang/String;

    .line 184
    if-eqz v5, :cond_4

    .line 186
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 189
    move-result v8

    .line 190
    if-lez v8, :cond_4

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 195
    move-result-object v5

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_0

    .line 215
    :cond_5
    new-instance p2, Landroid/content/ContentValues;

    .line 217
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {p2, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v3, "serviceId"

    .line 237
    invoke-virtual {p2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance p3, Landroid/content/ContentValues;

    .line 242
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 254
    invoke-virtual {p0, v6, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 257
    move-result p0

    .line 258
    if-nez p0, :cond_6

    .line 260
    const-string/jumbo p0, "setKnoxServiceId() fail"

    .line 263
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return p1

    .line 267
    :cond_6
    const/4 p0, 0x1

    .line 268
    return p0

    .line 269
    :cond_7
    :goto_1
    const-string/jumbo p0, "packageList or serviceId is null"

    .line 272
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return p1
.end method

.method public final setWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "MISC"

    .line 12
    const-string/jumbo v5, "enableWifiDataStatistic"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 31
    :cond_0
    return p2
.end method

.method public final storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "adminUid"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x3e9

    .line 9
    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 22
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 25
    new-instance v2, Landroid/content/ContentValues;

    .line 27
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    :try_start_0
    const-string v4, "CallingLogEnabled"

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    const-string v5, "MISC"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/content/ContentValues;

    .line 75
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v4, ";"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 98
    const-string/jumbo v0, "callingType"

    .line 101
    if-eqz p5, :cond_2

    .line 103
    const-string p5, "1"

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const-string p5, "0"

    .line 108
    :goto_1
    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo p5, "callingStatus"

    .line 114
    invoke-virtual {v1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo p4, "callingAddress"

    .line 120
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo p1, "callingTimeStamp"

    .line 126
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo p1, "callingDuration"

    .line 132
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo p1, "callingCaptureAdmin"

    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 147
    const-string p1, "CallingLog"

    .line 149
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_2

    .line 153
    :catch_0
    const-string p0, "DeviceInfo"

    .line 155
    const-string/jumbo p1, "could not write log edm database"

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    :goto_2
    return-void

    .line 162
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 164
    const-string p1, "Can only be called by internal phone"

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0
.end method

.method public final storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "adminUid"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 10
    move-result v2

    .line 11
    if-ne v1, v2, :cond_2

    .line 13
    new-instance v1, Landroid/content/ContentValues;

    .line 15
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 18
    new-instance v2, Landroid/content/ContentValues;

    .line 20
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    :try_start_0
    const-string/jumbo v4, "mmsLogEnabled"

    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    const-string v5, "MISC"

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/content/ContentValues;

    .line 69
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v4, ";"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 92
    const-string/jumbo v0, "mmsType"

    .line 95
    if-eqz p4, :cond_1

    .line 97
    const-string p4, "1"

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const-string p4, "0"

    .line 102
    :goto_1
    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo p4, "mmsAddress"

    .line 108
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo p1, "mmsTimeStamp"

    .line 114
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo p1, "mmsBody"

    .line 120
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo p1, "mmsCaptureAdmin"

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 135
    const-string p1, "MMS"

    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    const-string p0, "DeviceInfo"

    .line 143
    const-string/jumbo p1, "could not write log edm database"

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_2
    return-void
.end method

.method public final storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "adminUid"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x3e9

    .line 9
    if-ne v1, v2, :cond_3

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 16
    new-instance v2, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :try_start_0
    const-string/jumbo v4, "smsLogEnabled"

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    const-string v5, "MISC"

    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/content/ContentValues;

    .line 67
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, ";"

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v0, "smsType"

    .line 93
    if-eqz p4, :cond_1

    .line 95
    const-string p4, "1"

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const-string p4, "0"

    .line 100
    :goto_1
    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo p4, "smsAddress"

    .line 106
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo p1, "smsTimeStamp"

    .line 112
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo p1, "smsBody"

    .line 118
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo p1, "smsCaptureAdmin"

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 133
    const-string p1, "SMS"

    .line 135
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_2

    .line 139
    :catch_0
    const-string p0, "DeviceInfo"

    .line 141
    const-string/jumbo p1, "could not write log edm database"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    :goto_2
    return-void

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 150
    const-string p1, "Can only be called by internal phone"

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
