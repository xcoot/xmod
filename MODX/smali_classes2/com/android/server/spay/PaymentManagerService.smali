.class public final Lcom/android/server/spay/PaymentManagerService;
.super Landroid/spay/IPaymentManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field public final mRegisteredFWKClientMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.product_ship"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/2addr v0, v1

    .line 10
    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    .line 11
    .line 12
    const-string/jumbo v0, "ro.csc.countryiso_code"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/spay/IPaymentManager$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 10
    .line 11
    sget-boolean p0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    .line 12
    .line 13
    const-string v0, "PaymentManagerService"

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "PaymentManagerService() called"

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    sput-object p1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p0, Landroid/content/IntentFilter;

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "package"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "com.samsung.android.spayfw"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const-string v3, "com.samsung.android.spay"

    .line 52
    .line 53
    invoke-virtual {p0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v4, "com.samsung.android.spaymini"

    .line 57
    .line 58
    invoke-virtual {p0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string v5, "com.samsung.android.samsungpay.gear"

    .line 62
    .line 63
    invoke-virtual {p0, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string v6, "com.samsung.android.rajaampat"

    .line 67
    .line 68
    invoke-virtual {p0, v6, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const/16 v7, 0x3e8

    .line 72
    .line 73
    invoke-virtual {p0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Lcom/android/server/spay/UpdateReceiver;

    .line 77
    .line 78
    invoke-direct {v7}, Lcom/android/server/spay/UpdateReceiver;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v8, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v8, v7, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string p0, "com.samsung.android.app.stubupdater"

    .line 87
    .line 88
    const-string/jumbo v7, "spay state = "

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v9, 0x1

    .line 96
    :try_start_0
    invoke-virtual {v8, p0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-nez v10, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    if-nez v10, :cond_2

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-virtual {v8, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v7, ", updater state = "

    .line 127
    .line 128
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    const/4 v7, 0x2

    .line 142
    if-eq p0, v7, :cond_3

    .line 143
    .line 144
    if-eq v10, v7, :cond_3

    .line 145
    .line 146
    invoke-virtual {v8, v3, v7, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception p0

    .line 151
    goto :goto_0

    .line 152
    :catch_1
    const-string/jumbo p0, "updater /spay app is not installed"

    .line 153
    .line 154
    .line 155
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    invoke-static {p1, v3, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v1, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 166
    .line 167
    .line 168
    invoke-static {p1, v4, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v5, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    invoke-static {p1, v6, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "PaymentManagerService"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "PaymentManagerService() - Valid Caller"

    .line 20
    .line 21
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Security Exception Occurred while pid["

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "] with uid["

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "] trying to access methodName ["

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, "] in [PaymentManagerService] service"

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "PaymentManagerService() - Invalid Caller"

    .line 74
    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    throw v0
.end method


# virtual methods
.method public final getMeasurementFile()[B
    .locals 0

    .line 1
    const-string p0, "getMeasurementFile"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "/system/tima_measurement_info"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const-string/jumbo v0, "registerSPayFW"

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string v2, "activity"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/app/ActivityManager;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const-string v7, "PaymentManagerService"

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 55
    .line 56
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 57
    .line 58
    if-ne v5, v4, :cond_0

    .line 59
    .line 60
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "Error: am.getRunningAppProcesses() is null"

    .line 64
    .line 65
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    move-object v1, v3

    .line 69
    :goto_0
    if-nez v1, :cond_3

    .line 70
    .line 71
    const-string v1, "Error: can\'t find processname for PID"

    .line 72
    .line 73
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_3
    move-object v8, v1

    .line 81
    const-string v1, "Inside registerSPayFW, uid: "

    .line 82
    .line 83
    const-string v2, ", pid: "

    .line 84
    .line 85
    const-string v5, ", package: "

    .line 86
    .line 87
    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0, v8, v7}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v6, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 95
    .line 96
    check-cast v0, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    iget-object v0, v6, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 105
    .line 106
    check-cast v0, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 113
    .line 114
    iget v1, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    .line 115
    .line 116
    if-eq v4, v1, :cond_4

    .line 117
    .line 118
    const-string v1, "Registered Client Died. Need to Rebind"

    .line 119
    .line 120
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const-string v0, "Error: Framework App is already registered. Re-Registration not allowed"

    .line 130
    .line 131
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-object v3

    .line 135
    :cond_5
    :goto_1
    new-instance v9, Landroid/spay/PaymentTZServiceCommnInfo;

    .line 136
    .line 137
    invoke-direct {v9}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    .line 138
    .line 139
    .line 140
    const/16 v0, 0x9

    .line 141
    .line 142
    iput v0, v9, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    .line 143
    .line 144
    move-object/from16 v2, p1

    .line 145
    .line 146
    iget-object v0, v2, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    .line 168
    new-instance v3, Lcom/android/server/spay/TAController;

    .line 169
    .line 170
    sget-object v5, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    check-cast v10, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    check-cast v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .line 187
    .line 188
    invoke-direct {v3}, Landroid/spay/ITAController$Stub;-><init>()V

    .line 189
    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    iput-boolean v12, v3, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 193
    .line 194
    sget-boolean v13, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 195
    .line 196
    if-eqz v13, :cond_6

    .line 197
    .line 198
    const-string v13, "TAController constructor: taId = "

    .line 199
    .line 200
    const-string v14, "; maxSendCmdSize = "

    .line 201
    .line 202
    invoke-static {v10, v13, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    iget v14, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 207
    .line 208
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v14, "; maxRecvRespSize = "

    .line 212
    .line 213
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget v14, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 217
    .line 218
    invoke-static {v13, v14, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    iput-object v5, v3, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    iput v10, v3, Lcom/android/server/spay/TAController;->mTAId:I

    .line 224
    .line 225
    new-instance v5, Lcom/android/server/spay/PaymentTZNative;

    .line 226
    .line 227
    iget-object v13, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v14, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v15, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 232
    .line 233
    iget v12, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 234
    .line 235
    iget v11, v11, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    sget-boolean v16, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 241
    .line 242
    if-eqz v16, :cond_7

    .line 243
    .line 244
    move-object/from16 v16, v0

    .line 245
    .line 246
    const-string v0, "PaymentTZNative constructor: taId = "

    .line 247
    .line 248
    invoke-static {v10, v0, v7}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    move-object/from16 v16, v0

    .line 253
    .line 254
    :goto_3
    iput v10, v5, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 255
    .line 256
    move-object v10, v7

    .line 257
    const-wide/16 v6, 0x0

    .line 258
    .line 259
    iput-wide v6, v5, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 260
    .line 261
    iput v12, v5, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 262
    .line 263
    iput v11, v5, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 264
    .line 265
    iput-object v13, v5, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 266
    .line 267
    iput-object v14, v5, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 268
    .line 269
    iput-object v15, v5, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    .line 270
    .line 271
    const/4 v0, 0x0

    .line 272
    iput-boolean v0, v5, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 273
    .line 274
    iput-object v5, v3, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 275
    .line 276
    iget-object v0, v9, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    .line 277
    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-object/from16 v6, p0

    .line 288
    .line 289
    move-object v7, v10

    .line 290
    move-object/from16 v0, v16

    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :cond_8
    move-object v10, v7

    .line 295
    const-string v0, "KR"

    .line 296
    .line 297
    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_9

    .line 304
    .line 305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    new-instance v3, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 310
    .line 311
    sget-object v5, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 312
    .line 313
    invoke-direct {v3, v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    const-string v5, "com.samsung.android.spayfw"

    .line 321
    .line 322
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    .line 327
    .line 328
    :cond_9
    new-instance v6, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 329
    .line 330
    move-object v0, v6

    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    move-object/from16 v2, p1

    .line 334
    .line 335
    move-object v3, v9

    .line 336
    move-object v5, v8

    .line 337
    invoke-direct/range {v0 .. v5}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v0, p0

    .line 341
    .line 342
    iget-object v1, v0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 343
    .line 344
    check-cast v1, Ljava/util/HashMap;

    .line 345
    .line 346
    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v2, "callingApp: "

    .line 352
    .line 353
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v2, " is registed, current size: "

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 365
    .line 366
    check-cast v0, Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    return-object v9
.end method
