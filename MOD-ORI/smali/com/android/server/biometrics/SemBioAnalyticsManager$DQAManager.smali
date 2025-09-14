.class public final Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final FACE_FEATURE_HAL:Z

.field public final mContext:Landroid/content/Context;

.field public final mFaceBigDataNameMap:Ljava/util/Map;

.field public mFingerprintDaemonVersion:Ljava/lang/String;

.field public final mFpBigDataNameMap:Ljava/util/Map;

.field public mFpCalibrationStatus:Ljava/lang/String;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static -$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    new-instance v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x2

    .line 62
    invoke-direct {v2, v4, v5, v3, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFingerprintBigData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 74
    .line 75
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/lang/CharSequence;

    .line 102
    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p0, v2, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->resetDqaData()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "HqmManagerService"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/os/SemHqmManager;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "android.hardware.biometrics.face"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->resetDqaData()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 49
    .line 50
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 70
    .line 71
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v5, 0x0

    .line 78
    move-object v1, p1

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    const-string p1, "DQAManager: registerBroadCastReceiver : failed, "

    .line 85
    .line 86
    const-string v0, "BiometricService.AM"

    .line 87
    .line 88
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public static isUsingPackageNameAsExtra(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "FPIS"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "FPIF"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "FPQP"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string v0, "FPQI"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "FPQD"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string v0, "FPQS"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    const-string v0, "FPQF"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    const-string v0, "FPQW"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    const-string v0, "FPQL"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    :cond_0
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_1
    const/4 p0, 0x0

    .line 80
    return p0
.end method


# virtual methods
.method public final fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "FPDA"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    const-string v1, "FPCA"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpCalibrationStatus:Ljava/lang/String;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->isUsingPackageNameAsExtra(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 71
    .line 72
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->updateAppCountNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 95
    .line 96
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 97
    .line 98
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, ""

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    :goto_1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFingerprintBigData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void
.end method

.method public final resetDqaData()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 8
    .line 9
    const-string v2, "FPIS"

    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 15
    .line 16
    const-string v2, "FPIF"

    .line 17
    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 22
    .line 23
    const-string v2, "FPGT"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 29
    .line 30
    const-string v2, "FPQP"

    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 36
    .line 37
    const-string v2, "FPQI"

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 43
    .line 44
    const-string v2, "FPQD"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 50
    .line 51
    const-string v2, "FPQS"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 57
    .line 58
    const-string v2, "FPQF"

    .line 59
    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 64
    .line 65
    const-string v2, "FPQW"

    .line 66
    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 71
    .line 72
    const-string v2, "FPQL"

    .line 73
    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 78
    .line 79
    const-string v2, "FPMV"

    .line 80
    .line 81
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 85
    .line 86
    const-string v2, "FPOS"

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 92
    .line 93
    const-string v2, "FPOF"

    .line 94
    .line 95
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 99
    .line 100
    const-string v2, "FPFS"

    .line 101
    .line 102
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 106
    .line 107
    const-string v2, "FPFF"

    .line 108
    .line 109
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 113
    .line 114
    const-string v2, "FFOS"

    .line 115
    .line 116
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 120
    .line 121
    const-string v2, "FFOF"

    .line 122
    .line 123
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 127
    .line 128
    const-string v2, "FFFS"

    .line 129
    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 134
    .line 135
    const-string v2, "FFFF"

    .line 136
    .line 137
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    .line 141
    .line 142
    if-eqz v0, :cond_1

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 145
    .line 146
    const-string v2, "FAIS"

    .line 147
    .line 148
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 152
    .line 153
    const-string v2, "FAIF"

    .line 154
    .line 155
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 159
    .line 160
    const-string v2, "FAFS"

    .line 161
    .line 162
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 166
    .line 167
    const-string v2, "FAFF"

    .line 168
    .line 169
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 173
    .line 174
    const-string v2, "FATO"

    .line 175
    .line 176
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 180
    .line 181
    const-string v2, "FAQN"

    .line 182
    .line 183
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 187
    .line 188
    const-string v2, "FAQB"

    .line 189
    .line 190
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 194
    .line 195
    const-string v2, "FAQS"

    .line 196
    .line 197
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 201
    .line 202
    const-string v2, "FALI"

    .line 203
    .line 204
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 208
    .line 209
    const-string v2, "FABK"

    .line 210
    .line 211
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 215
    .line 216
    const-string v2, "FAMO"

    .line 217
    .line 218
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 222
    .line 223
    const-string v2, "FALQ"

    .line 224
    .line 225
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 229
    .line 230
    const-string v0, "FANM"

    .line 231
    .line 232
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_1
    return-void
.end method

.method public final sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    const-string v1, "\":\""

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    sget-boolean p2, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 10
    .line 11
    const-string v0, "BiometricService.AM"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "DQAManager.sendFaceBigData: feature = "

    .line 18
    .line 19
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", customDataSet = "

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-class v1, Landroid/os/SemHqmManager;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/os/SemHqmManager;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    const-string v4, "Camera"

    .line 62
    .line 63
    const-string/jumbo v6, "ph"

    .line 64
    .line 65
    .line 66
    const-string v7, "0.0"

    .line 67
    .line 68
    const-string/jumbo v8, "sec"

    .line 69
    .line 70
    .line 71
    const-string v9, ""

    .line 72
    .line 73
    const-string v11, ""

    .line 74
    .line 75
    move-object v5, p1

    .line 76
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string p0, "DQAManager.sendFaceBigData: SemHqmManager is null!!"

    .line 81
    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public final sendFingerprintBigData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->isUsingPackageNameAsExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "BiometricService.AM"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v6, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v7, "key"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string/jumbo v7, "value"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v4, "sendFingerprintBigData JSonParsingError: "

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    const-string v2, "\"ARR\":"

    .line 94
    .line 95
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_1
    move-object v10, v0

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "\""

    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, "\":\""

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2, v5, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 130
    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    check-cast v2, Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_2

    .line 140
    .line 141
    iget-object v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 142
    .line 143
    check-cast v2, Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_2

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/util/Map$Entry;

    .line 164
    .line 165
    const-string v6, ",\""

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_1

    .line 200
    :goto_3
    sget-boolean v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->DEBUG:Z

    .line 201
    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v2, "DQAManager.sendFingerprintBigData: "

    .line 207
    .line 208
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v2, ", feature = "

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v2, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, ", customDataSet = "

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 240
    .line 241
    if-nez v0, :cond_4

    .line 242
    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    const-class v2, Landroid/os/SemHqmManager;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Landroid/os/SemHqmManager;

    .line 252
    .line 253
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 254
    .line 255
    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 256
    .line 257
    if-eqz v2, :cond_5

    .line 258
    .line 259
    iget-object v5, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 260
    .line 261
    const-string v9, ""

    .line 262
    .line 263
    const-string v11, ""

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    const-string v4, "BFS"

    .line 267
    .line 268
    const-string/jumbo v6, "ph"

    .line 269
    .line 270
    .line 271
    const-string v7, "0.0"

    .line 272
    .line 273
    const-string/jumbo v8, "sec"

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_5
    const-string p0, "DQAManager.sendFingerprintBigData: SemHqmManager is null!!"

    .line 281
    .line 282
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    :goto_4
    return-void
.end method

.method public final updateAppCountNum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 4
    .line 5
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v2, 0x104036e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object p0, v2

    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    move-object v2, p0

    .line 46
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_4

    .line 51
    .line 52
    const-string/jumbo p0, "com.whatsapp"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    const-string/jumbo p0, "com.samsung.android.spay"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    const-string/jumbo p0, "com.kakao.talk"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    const-string/jumbo p0, "jp.naver.line.android"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    const-string/jumbo p0, "org.telegram.messenger"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string/jumbo p2, "others"

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_2
    const-string p0, ""

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catch_0
    move-exception p1

    .line 119
    goto :goto_4

    .line 120
    :cond_6
    :goto_3
    new-instance v0, Lorg/json/JSONObject;

    .line 121
    .line 122
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .line 133
    .line 134
    :goto_5
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    add-int/2addr p1, v1

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :catch_1
    move-exception p1

    .line 162
    goto :goto_7

    .line 163
    :cond_7
    new-instance p1, Ljava/lang/String;

    .line 164
    .line 165
    const-string v1, "1"

    .line 166
    .line 167
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    return-object p0

    .line 178
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method
