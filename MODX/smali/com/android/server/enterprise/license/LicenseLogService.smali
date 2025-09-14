.class public final Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

.field public static mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mReceiver:Lcom/android/server/enterprise/license/LicenseLogService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$1;

    .line 9
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 14
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    const-string/jumbo v1, "enterprise_license_policy"

    .line 24
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 30
    sput-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 32
    new-instance v1, Landroid/content/IntentFilter;

    .line 34
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 52
    new-instance p1, Landroid/os/HandlerThread;

    .line 54
    const-string v0, "LicenseLogService"

    .line 56
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance p1, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    .line 75
    sput-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 77
    return-void
.end method

.method public static _log_for_old(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 11
    const/16 v1, 0xc

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 16
    const/16 v1, 0xd

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 21
    const/16 v1, 0xe

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 26
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 29
    move-result-wide v0

    .line 30
    new-instance v2, Landroid/content/ContentValues;

    .line 32
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string/jumbo v3, "pkgName"

    .line 38
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo p1, "id"

    .line 44
    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo p0, "date"

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    const-string p1, "LICENSE_LOG"

    .line 61
    const-string/jumbo v0, "value"

    .line 64
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_0

    .line 70
    new-instance v1, Landroid/content/ContentValues;

    .line 72
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result p0

    .line 83
    add-int/lit8 p0, p0, 0x1

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 100
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method public final _log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 3
    const-string v1, "API_USAGE"

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    if-eqz p7, :cond_0

    .line 11
    move-object p1, p7

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, p2

    .line 14
    :goto_0
    const-string/jumbo v1, "pN"

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 23
    const-string/jumbo p1, "ppi"

    .line 26
    invoke-virtual {v0, p1, p6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 29
    iget-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 31
    if-eqz p7, :cond_1

    .line 33
    sget-object p1, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 35
    move p5, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const/4 p5, 0x0

    .line 38
    :try_start_0
    sget-object p6, Lcom/android/server/enterprise/utils/Utils;->daAllowedPermission:[Ljava/lang/String;

    .line 40
    invoke-static {p1, p2, p6}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 43
    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    const-string p1, "EnterpriseUtils"

    .line 47
    const-string p6, "NameNotFoundException"

    .line 49
    invoke-static {p1, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move p1, p5

    .line 53
    :goto_1
    if-eqz p1, :cond_2

    .line 55
    const/4 p5, 0x2

    .line 56
    :cond_2
    :goto_2
    const-string p1, "NON_DA"

    .line 58
    invoke-virtual {v0, p1, p5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 61
    if-eqz p3, :cond_3

    .line 63
    const-string/jumbo p1, "isGetterApi"

    .line 66
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 69
    :cond_3
    if-eqz p4, :cond_4

    .line 71
    const-string/jumbo p1, "ons"

    .line 74
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 77
    :cond_4
    :try_start_1
    const-string/jumbo p1, "pkMD5"

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p0, p2}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    const-string p0, "LicenseLogService"

    .line 92
    const-string/jumbo p1, "error getApplicationPubKeyMD5"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_3
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 101
    return-void
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
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
