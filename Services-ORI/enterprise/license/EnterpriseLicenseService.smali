.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/license/IDeviceProfileObserver;


# static fields
.field public static final MY_PID:I

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mElmPkgRecords:Ljava/util/Map;

.field public final mKlmElmChangeList:Ljava/util/List;

.field public final mKlmPkgRecords:Ljava/util/Map;

.field public final mPackageRemovedReceiver:Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

.field public final samsungSpecialPackages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "com.sec.knox.kccagent"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "com.sec.knox.klat.agent"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->samsungSpecialPackages:Ljava/util/List;

    .line 23
    .line 24
    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 35
    .line 36
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    .line 43
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 49
    .line 50
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 56
    .line 57
    new-instance v5, Landroid/content/IntentFilter;

    .line 58
    .line 59
    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 60
    .line 61
    invoke-direct {v5, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo p2, "package"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v2, p1

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 84
    .line 85
    new-instance p2, Lcom/android/server/enterprise/license/DeviceProfileListener;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Lcom/android/server/enterprise/license/DeviceProfileListener;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "[EnterpriseLicenseService] DeviceProfileListener"

    .line 91
    .line 92
    const-string/jumbo v0, "registerObserver()"

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p2, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    .line 99
    .line 100
    check-cast p1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v1, "#"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object p0, p0, v1

    .line 14
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const-string v2, "-"

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    array-length v3, p0

    .line 29
    const/4 v4, 0x6

    .line 30
    if-ge v3, v4, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    aget-object v5, p0, v1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aget-object v6, p0, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aget-object v7, p0, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aget-object v8, p0, v0

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    aget-object v9, p0, v0

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    aget-object v10, p0, v0

    .line 49
    .line 50
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static getMaskedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v0, v1

    .line 21
    const/4 v1, 0x0

    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v3, Ljava/lang/String;

    .line 33
    .line 34
    new-array v0, v0, [C

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    const-string v0, "\u0000"

    .line 40
    .line 41
    const-string v4, "*"

    .line 42
    .line 43
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v2

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "EnterpriseLicenseService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x3e8

    .line 12
    .line 13
    if-ne v2, v3, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    const-string/jumbo v3, "pkgName"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/content/ContentValues;

    .line 38
    .line 39
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "LICENSE"

    .line 46
    .line 47
    const-string/jumbo v3, "rightsObject"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4, p0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lcom/samsung/android/knox/license/RightsObject;

    .line 61
    .line 62
    const-string/jumbo v2, "getPermissions() - deserializeObject"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo p0, "ro is null!!"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string/jumbo p0, "getPermissions() failed"

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    return-object v1

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    .line 91
    const-string v0, "Caller "

    .line 92
    .line 93
    const-string v2, " is not SYSTEM_SERVICE OR SYSTEM APP"

    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public static isLicenseLocked(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 10
    .line 11
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getAttributes(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v0, -0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    and-int/lit8 p0, p0, 0x10

    .line 26
    .line 27
    if-lez p0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    const-string/jumbo p0, "isLicenseLocked : "

    .line 31
    .line 32
    .line 33
    const-string v0, "EnterpriseLicenseService"

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    return v1
.end method

.method public static resetELMInfo(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "rightsObject"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "pkgName"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string v2, "LICENSE"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "unregisterLicenseResultRecord() for "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "EnterpriseLicenseService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "DeathRecipient unlinked from "

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string/jumbo p1, "license record not found for "

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const-string v0, "activateKnoxLicense to "

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    const-string v1, "EnterpriseLicenseService"

    .line 13
    .line 14
    const-string v2, "activateKnoxLicense()"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    invoke-virtual {v8, v13, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    if-eqz v10, :cond_0

    .line 50
    .line 51
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    :cond_0
    move-object/from16 p1, v7

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    iget-object v2, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v8, v10, v1, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    const-string v0, "EnterpriseLicenseService"

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, " is not authorized to activate license for "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    :try_start_2
    const-string/jumbo v0, "package"

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-wide/16 v2, 0x0

    .line 118
    .line 119
    invoke-interface {v0, v10, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 126
    .line 127
    invoke-direct {v0, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    .line 130
    const/16 v2, 0xcc

    .line 131
    .line 132
    const/16 v3, 0x320

    .line 133
    .line 134
    move-object/from16 v1, p0

    .line 135
    .line 136
    move-object v4, v12

    .line 137
    move-object/from16 v5, p3

    .line 138
    .line 139
    move-object/from16 v17, v6

    .line 140
    .line 141
    move-object v6, v7

    .line 142
    move-object/from16 p1, v7

    .line 143
    .line 144
    move-object v7, v0

    .line 145
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    .line 147
    .line 148
    :try_start_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    .line 150
    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :catchall_1
    move-exception v0

    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :catch_0
    move-exception v0

    .line 160
    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    move-object/from16 v17, v6

    .line 163
    .line 164
    move-object/from16 p1, v7

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    move-object/from16 p1, v7

    .line 168
    .line 169
    move-object v7, v6

    .line 170
    goto :goto_1

    .line 171
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    move-object/from16 v7, v17

    .line 175
    .line 176
    :goto_1
    array-length v0, v7

    .line 177
    move/from16 v6, v16

    .line 178
    .line 179
    :goto_2
    if-ge v6, v0, :cond_3

    .line 180
    .line 181
    aget-object v5, v7, v6

    .line 182
    .line 183
    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 184
    .line 185
    invoke-direct {v4, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 186
    .line 187
    .line 188
    const/16 v2, 0xcc

    .line 189
    .line 190
    const/16 v3, 0x320

    .line 191
    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    move-object/from16 v17, v4

    .line 195
    .line 196
    move-object v4, v12

    .line 197
    move/from16 v18, v6

    .line 198
    .line 199
    move-object/from16 v6, p1

    .line 200
    .line 201
    move-object/from16 v19, v7

    .line 202
    .line 203
    move-object/from16 v7, v17

    .line 204
    .line 205
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    .line 207
    .line 208
    add-int/lit8 v6, v18, 0x1

    .line 209
    .line 210
    move-object/from16 v7, v19

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catch_2
    move-exception v0

    .line 214
    move-object/from16 v7, p1

    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :cond_3
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 219
    .line 220
    .line 221
    monitor-exit p0

    .line 222
    return-void

    .line 223
    :catch_3
    move-exception v0

    .line 224
    move-object/from16 p1, v7

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_4
    move-object/from16 p1, v7

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :goto_3
    move-object/from16 v10, p1

    .line 231
    .line 232
    :goto_4
    if-eqz v10, :cond_5

    .line 233
    .line 234
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_5

    .line 243
    .line 244
    iget-object v1, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 245
    .line 246
    invoke-virtual {v8, v12, v9, v11, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    .line 247
    .line 248
    .line 249
    const-string v1, "EnterpriseLicenseService"

    .line 250
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v0, " with uuid "

    .line 260
    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    new-instance v0, Landroid/os/Bundle;

    .line 275
    .line 276
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 292
    .line 293
    .line 294
    move-object/from16 v7, p1

    .line 295
    .line 296
    :try_start_8
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v1, Ljava/lang/Thread;

    .line 306
    .line 307
    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    const/4 v3, 0x2

    .line 310
    invoke-direct {v2, v8, v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    .line 311
    .line 312
    .line 313
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 317
    .line 318
    .line 319
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 320
    .line 321
    .line 322
    monitor-exit p0

    .line 323
    return-void

    .line 324
    :catch_4
    move-exception v0

    .line 325
    goto :goto_6

    .line 326
    :cond_5
    move-object/from16 v7, p1

    .line 327
    .line 328
    :try_start_a
    const-string v0, "EnterpriseLicenseService"

    .line 329
    .line 330
    const-string v1, "Invalid targetPackageName."

    .line 331
    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 333
    .line 334
    .line 335
    :goto_5
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 336
    .line 337
    .line 338
    move-object v5, v10

    .line 339
    goto :goto_7

    .line 340
    :goto_6
    :try_start_c
    const-string v1, "EnterpriseLicenseService"

    .line 341
    .line 342
    const-string v2, "activateKnoxLicense() failed."

    .line 343
    .line 344
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :goto_7
    if-nez v5, :cond_6

    .line 352
    .line 353
    :try_start_d
    iget-object v0, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_7

    .line 364
    .line 365
    array-length v1, v0

    .line 366
    if-lez v1, :cond_7

    .line 367
    .line 368
    array-length v10, v0

    .line 369
    move/from16 v13, v16

    .line 370
    .line 371
    :goto_8
    if-ge v13, v10, :cond_7

    .line 372
    .line 373
    aget-object v5, v0, v13

    .line 374
    .line 375
    new-instance v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 376
    .line 377
    invoke-direct {v14, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 378
    .line 379
    .line 380
    const/16 v2, 0x12d

    .line 381
    .line 382
    const/16 v3, 0x320

    .line 383
    .line 384
    move-object/from16 v1, p0

    .line 385
    .line 386
    move-object v4, v12

    .line 387
    move-object v6, v7

    .line 388
    move-object v15, v7

    .line 389
    move-object v7, v14

    .line 390
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 391
    .line 392
    .line 393
    add-int/lit8 v13, v13, 0x1

    .line 394
    .line 395
    move-object v7, v15

    .line 396
    goto :goto_8

    .line 397
    :cond_6
    move-object v15, v7

    .line 398
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 399
    .line 400
    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 401
    .line 402
    .line 403
    const/16 v2, 0x12d

    .line 404
    .line 405
    const/16 v3, 0x320

    .line 406
    .line 407
    move-object/from16 v1, p0

    .line 408
    .line 409
    move-object v4, v12

    .line 410
    move-object v6, v15

    .line 411
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 412
    .line 413
    .line 414
    :cond_7
    monitor-exit p0

    .line 415
    return-void

    .line 416
    :goto_9
    :try_start_e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    .line 418
    .line 419
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 420
    :goto_a
    monitor-exit p0

    .line 421
    throw v0
.end method

.method public final declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    move-object/from16 v10, p5

    .line 8
    .line 9
    const-string v0, "activateLicense to "

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    const-string v1, "EnterpriseLicenseService"

    .line 13
    .line 14
    const-string v2, "activateLicense()"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v13

    .line 43
    invoke-virtual {v7, v12, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    if-eqz v9, :cond_4

    .line 52
    .line 53
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    iget-object v4, v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v7, v9, v1, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    const-string v0, "EnterpriseLicenseService"

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v5, " is not authorized to activate license for "

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    :try_start_2
    const-string/jumbo v0, "package"

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0, v9, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    .line 123
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 124
    .line 125
    invoke-direct {v0, v7, v8, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    .line 127
    .line 128
    const/16 v2, 0xcc

    .line 129
    .line 130
    move-object/from16 v1, p0

    .line 131
    .line 132
    move-object v3, v11

    .line 133
    move-object/from16 v4, p3

    .line 134
    .line 135
    move-object v5, v15

    .line 136
    move-object v9, v6

    .line 137
    move-object v6, v0

    .line 138
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .line 140
    .line 141
    :try_start_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto/16 :goto_b

    .line 148
    .line 149
    :catchall_1
    move-exception v0

    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :catch_0
    move-exception v0

    .line 153
    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    move-object v9, v6

    .line 156
    goto :goto_0

    .line 157
    :cond_1
    move-object v9, v6

    .line 158
    goto :goto_1

    .line 159
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    :goto_1
    array-length v0, v9

    .line 163
    move/from16 v6, v16

    .line 164
    .line 165
    :goto_2
    if-ge v6, v0, :cond_2

    .line 166
    .line 167
    aget-object v4, v9, v6

    .line 168
    .line 169
    new-instance v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 170
    .line 171
    invoke-direct {v5, v7, v8, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 172
    .line 173
    .line 174
    const/16 v2, 0xcc

    .line 175
    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    move-object v3, v11

    .line 179
    move-object/from16 v17, v5

    .line 180
    .line 181
    move-object v5, v15

    .line 182
    move/from16 v18, v6

    .line 183
    .line 184
    move-object/from16 v6, v17

    .line 185
    .line 186
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    .line 188
    .line 189
    add-int/lit8 v6, v18, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_2
    move-exception v0

    .line 193
    move-object/from16 v4, p3

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :cond_2
    :try_start_6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    .line 199
    .line 200
    monitor-exit p0

    .line 201
    return-void

    .line 202
    :cond_3
    move-object/from16 v4, p3

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_4
    :goto_3
    move-object v4, v15

    .line 206
    :goto_4
    if-eqz v4, :cond_7

    .line 207
    .line 208
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_7

    .line 217
    .line 218
    if-eqz p4, :cond_5

    .line 219
    .line 220
    move-object/from16 v1, p4

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_5
    const-string/jumbo v5, "package"

    .line 224
    .line 225
    .line 226
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-interface {v5, v4, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :catch_3
    move-exception v0

    .line 244
    goto :goto_7

    .line 245
    :cond_6
    const/4 v1, 0x0

    .line 246
    :goto_5
    iget-object v2, v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 247
    .line 248
    invoke-virtual {v7, v11, v8, v10, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    const-string v2, "EnterpriseLicenseService"

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v0, " with uuid "

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    new-instance v0, Landroid/os/Bundle;

    .line 277
    .line 278
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Ljava/lang/Thread;

    .line 312
    .line 313
    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    invoke-direct {v2, v7, v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    .line 317
    .line 318
    .line 319
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 323
    .line 324
    .line 325
    :try_start_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 326
    .line 327
    .line 328
    monitor-exit p0

    .line 329
    return-void

    .line 330
    :cond_7
    :try_start_9
    const-string v0, "EnterpriseLicenseService"

    .line 331
    .line 332
    const-string v1, "Invalid targetPackageName."

    .line 333
    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 335
    .line 336
    .line 337
    :goto_6
    :try_start_a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :goto_7
    :try_start_b
    const-string v1, "EnterpriseLicenseService"

    .line 342
    .line 343
    const-string v2, "activateLicense() failed."

    .line 344
    .line 345
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 349
    .line 350
    .line 351
    goto :goto_6

    .line 352
    :goto_8
    if-nez v4, :cond_8

    .line 353
    .line 354
    :try_start_c
    iget-object v0, v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz v0, :cond_9

    .line 365
    .line 366
    array-length v1, v0

    .line 367
    if-lez v1, :cond_9

    .line 368
    .line 369
    array-length v9, v0

    .line 370
    move/from16 v12, v16

    .line 371
    .line 372
    :goto_9
    if-ge v12, v9, :cond_9

    .line 373
    .line 374
    aget-object v4, v0, v12

    .line 375
    .line 376
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 377
    .line 378
    invoke-direct {v6, v7, v8, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 379
    .line 380
    .line 381
    const/16 v2, 0x12d

    .line 382
    .line 383
    move-object/from16 v1, p0

    .line 384
    .line 385
    move-object v3, v11

    .line 386
    move-object v5, v15

    .line 387
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 388
    .line 389
    .line 390
    add-int/lit8 v12, v12, 0x1

    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_8
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 394
    .line 395
    invoke-direct {v6, v7, v8, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 396
    .line 397
    .line 398
    const/16 v2, 0x12d

    .line 399
    .line 400
    move-object/from16 v1, p0

    .line 401
    .line 402
    move-object v3, v11

    .line 403
    move-object v5, v15

    .line 404
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 405
    .line 406
    .line 407
    :cond_9
    monitor-exit p0

    .line 408
    return-void

    .line 409
    :goto_a
    :try_start_d
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    .line 411
    .line 412
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 413
    :goto_b
    monitor-exit p0

    .line 414
    throw v0
.end method

.method public final declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public final callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const-string/jumbo v0, "callLicenseAgent() - "

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "EnterpriseLicenseService"

    .line 13
    .line 14
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-object v4, p0

    .line 18
    :try_start_0
    iget-object v0, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v5, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    .line 25
    .line 26
    move-object/from16 v6, p2

    .line 27
    .line 28
    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    .line 41
    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    sparse-switch v9, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :sswitch_0
    const-string v9, "KLMRegistrationInternal"

    .line 53
    .line 54
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v8, 0x2

    .line 62
    goto :goto_0

    .line 63
    :sswitch_1
    const-string v9, "KLMDeactivationInternal"

    .line 64
    .line 65
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v8, 0x1

    .line 73
    goto :goto_0

    .line 74
    :sswitch_2
    const-string v9, "ELMRegistrationInternal"

    .line 75
    .line 76
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v8, 0x0

    .line 84
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    new-instance v12, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v13, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v5, "fail"

    .line 111
    .line 112
    .line 113
    const/16 v6, 0x12d

    .line 114
    .line 115
    const/16 v7, 0x320

    .line 116
    .line 117
    const/4 v11, -0x1

    .line 118
    const/4 v14, 0x0

    .line 119
    move-object v4, p0

    .line 120
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    new-instance v12, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v13, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v5, "fail"

    .line 147
    .line 148
    .line 149
    const/16 v6, 0x12d

    .line 150
    .line 151
    const/16 v7, 0x322

    .line 152
    .line 153
    const/4 v11, -0x1

    .line 154
    const/4 v14, 0x0

    .line 155
    move-object v4, p0

    .line 156
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_2
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    new-instance v12, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v13, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    const/16 v6, 0x12d

    .line 189
    .line 190
    const/4 v14, 0x0

    .line 191
    const-string/jumbo v5, "fail"

    .line 192
    .line 193
    .line 194
    const/4 v10, 0x0

    .line 195
    const/4 v11, -0x1

    .line 196
    move-object v4, p0

    .line 197
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 198
    .line 199
    .line 200
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "Exception calling KLMSAgent: "

    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 v0, 0x0

    .line 211
    return-object v0

    .line 212
    nop

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x6ebcf3c4 -> :sswitch_2
        -0x4f3822a0 -> :sswitch_1
        0x4e6ca3c2 -> :sswitch_0
    .end sparse-switch

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const-string/jumbo v0, "deactivateKnoxLicense to "

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    const-string v1, "EnterpriseLicenseService"

    .line 14
    .line 15
    const-string/jumbo v2, "deActivateKnoxLicense()"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v14

    .line 45
    invoke-virtual {v8, v13, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    if-eqz v10, :cond_0

    .line 52
    .line 53
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    :cond_0
    move-object/from16 p1, v7

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_1
    iget-object v2, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-virtual {v8, v10, v1, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    const-string v0, "EnterpriseLicenseService"

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, " is not authorized to deActivate license for "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    .line 110
    :try_start_2
    const-string/jumbo v0, "package"

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .line 123
    invoke-interface {v0, v10, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 130
    .line 131
    invoke-direct {v0, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    .line 133
    .line 134
    const/16 v2, 0xcc

    .line 135
    .line 136
    const/16 v3, 0x322

    .line 137
    .line 138
    move-object/from16 v1, p0

    .line 139
    .line 140
    move-object v4, v12

    .line 141
    move-object/from16 v5, p3

    .line 142
    .line 143
    move-object/from16 v17, v6

    .line 144
    .line 145
    move-object v6, v7

    .line 146
    move-object/from16 p1, v7

    .line 147
    .line 148
    move-object v7, v0

    .line 149
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    .line 151
    .line 152
    :try_start_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    .line 154
    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto/16 :goto_a

    .line 159
    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto/16 :goto_9

    .line 162
    .line 163
    :catch_0
    move-exception v0

    .line 164
    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    move-object/from16 v17, v6

    .line 167
    .line 168
    move-object/from16 p1, v7

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    move-object/from16 p1, v7

    .line 172
    .line 173
    move-object v7, v6

    .line 174
    goto :goto_1

    .line 175
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    move-object/from16 v7, v17

    .line 179
    .line 180
    :goto_1
    array-length v0, v7

    .line 181
    move/from16 v6, v16

    .line 182
    .line 183
    :goto_2
    if-ge v6, v0, :cond_3

    .line 184
    .line 185
    aget-object v5, v7, v6

    .line 186
    .line 187
    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 188
    .line 189
    invoke-direct {v4, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 190
    .line 191
    .line 192
    const/16 v2, 0xcc

    .line 193
    .line 194
    const/16 v3, 0x322

    .line 195
    .line 196
    move-object/from16 v1, p0

    .line 197
    .line 198
    move-object/from16 v17, v4

    .line 199
    .line 200
    move-object v4, v12

    .line 201
    move/from16 v18, v6

    .line 202
    .line 203
    move-object/from16 v6, p1

    .line 204
    .line 205
    move-object/from16 v19, v7

    .line 206
    .line 207
    move-object/from16 v7, v17

    .line 208
    .line 209
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    .line 211
    .line 212
    add-int/lit8 v6, v18, 0x1

    .line 213
    .line 214
    move-object/from16 v7, v19

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_2
    move-exception v0

    .line 218
    move-object/from16 v7, p1

    .line 219
    .line 220
    goto/16 :goto_6

    .line 221
    .line 222
    :cond_3
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    .line 224
    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 227
    :catch_3
    move-exception v0

    .line 228
    move-object/from16 p1, v7

    .line 229
    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :cond_4
    move-object/from16 p1, v7

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_5
    move-object/from16 p1, v7

    .line 236
    .line 237
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :goto_3
    move-object/from16 v10, p1

    .line 244
    .line 245
    :goto_4
    if-eqz v10, :cond_6

    .line 246
    .line 247
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_6

    .line 256
    .line 257
    iget-object v1, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 258
    .line 259
    invoke-virtual {v8, v12, v9, v11, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    .line 260
    .line 261
    .line 262
    const-string v1, "EnterpriseLicenseService"

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v0, " with uuid "

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    new-instance v0, Landroid/os/Bundle;

    .line 288
    .line 289
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 305
    .line 306
    .line 307
    move-object/from16 v7, p1

    .line 308
    .line 309
    :try_start_8
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Ljava/lang/Thread;

    .line 319
    .line 320
    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    const/4 v3, 0x0

    .line 323
    invoke-direct {v2, v8, v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    .line 324
    .line 325
    .line 326
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 330
    .line 331
    .line 332
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    .line 334
    .line 335
    monitor-exit p0

    .line 336
    return-void

    .line 337
    :catch_4
    move-exception v0

    .line 338
    goto :goto_6

    .line 339
    :cond_6
    move-object/from16 v7, p1

    .line 340
    .line 341
    :try_start_a
    const-string v0, "EnterpriseLicenseService"

    .line 342
    .line 343
    const-string v1, "Invalid targetPackageName."

    .line 344
    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 346
    .line 347
    .line 348
    :goto_5
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 349
    .line 350
    .line 351
    move-object v5, v10

    .line 352
    goto :goto_7

    .line 353
    :goto_6
    :try_start_c
    const-string v1, "EnterpriseLicenseService"

    .line 354
    .line 355
    const-string/jumbo v2, "deActivateKnoxLicense() failed."

    .line 356
    .line 357
    .line 358
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :goto_7
    if-nez v5, :cond_7

    .line 366
    .line 367
    :try_start_d
    iget-object v0, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-eqz v0, :cond_8

    .line 378
    .line 379
    array-length v1, v0

    .line 380
    if-lez v1, :cond_8

    .line 381
    .line 382
    array-length v10, v0

    .line 383
    move/from16 v13, v16

    .line 384
    .line 385
    :goto_8
    if-ge v13, v10, :cond_8

    .line 386
    .line 387
    aget-object v5, v0, v13

    .line 388
    .line 389
    new-instance v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 390
    .line 391
    invoke-direct {v14, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 392
    .line 393
    .line 394
    const/16 v2, 0x12d

    .line 395
    .line 396
    const/16 v3, 0x322

    .line 397
    .line 398
    move-object/from16 v1, p0

    .line 399
    .line 400
    move-object v4, v12

    .line 401
    move-object v6, v7

    .line 402
    move-object v15, v7

    .line 403
    move-object v7, v14

    .line 404
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 405
    .line 406
    .line 407
    add-int/lit8 v13, v13, 0x1

    .line 408
    .line 409
    move-object v7, v15

    .line 410
    goto :goto_8

    .line 411
    :cond_7
    move-object v15, v7

    .line 412
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 413
    .line 414
    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 415
    .line 416
    .line 417
    const/16 v2, 0x12d

    .line 418
    .line 419
    const/16 v3, 0x322

    .line 420
    .line 421
    move-object/from16 v1, p0

    .line 422
    .line 423
    move-object v4, v12

    .line 424
    move-object v6, v15

    .line 425
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 426
    .line 427
    .line 428
    :cond_8
    monitor-exit p0

    .line 429
    return-void

    .line 430
    :goto_9
    :try_start_e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .line 432
    .line 433
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 434
    :goto_a
    monitor-exit p0

    .line 435
    throw v0
.end method

.method public final deleteAllApiCallData()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    const-string v0, "LICENSE_LOG"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "EnterpriseLicenseService"

    .line 16
    .line 17
    const-string/jumbo v1, "deleteAllApiCallData() failed"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 2

    .line 1
    const-string/jumbo p1, "pkgName"

    .line 2
    .line 3
    .line 4
    const-string p3, "EnterpriseLicenseService"

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    if-eqz p2, :cond_3

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "instanceId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    .line 36
    const-string v1, "LICENSE"

    .line 37
    .line 38
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    const-string/jumbo p1, "deleteApiCallData(): result is null"

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    const-string/jumbo p1, "deleteApiCallData(): Record does not exist"

    .line 60
    .line 61
    .line 62
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {p2}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    .line 76
    const-string v1, "LICENSE_LOG"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return p0

    .line 83
    :goto_0
    const-string/jumbo p2, "deleteApiCallData() failed"

    .line 84
    .line 85
    .line 86
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return p0
.end method

.method public final deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    const-string/jumbo v0, "pkgName"

    .line 19
    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {p1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    const-string v2, "LICENSE_LOG"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    const-string v0, "EnterpriseLicenseService"

    .line 40
    .line 41
    const-string/jumbo v1, "deleteApiCallDataByAdmin() failed"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return p0
.end method

.method public final deleteLicense(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "LICENSE"

    .line 2
    .line 3
    const-string/jumbo v1, "pkgName"

    .line 4
    .line 5
    .line 6
    const-string v2, "EnterpriseLicenseService"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const/4 p0, 0x0

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    .line 30
    .line 31
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v6, "instanceId"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    .line 42
    invoke-virtual {p1, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string/jumbo p1, "deleteLicense(): result is null"

    .line 49
    .line 50
    .line 51
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    const-string/jumbo p1, "deleteLicense(): pkgName is null, Record does not exist"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :cond_2
    :try_start_2
    filled-new-array {v1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    filled-new-array {p1}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    invoke-virtual {v6, v0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 95
    .line 96
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    :try_start_3
    const-string/jumbo v0, "deleteLicense() failed"

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_2
    return p0

    .line 114
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_4
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    return p0
.end method

.method public final deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 12

    .line 1
    const-string v0, "EnterpriseLicenseService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string/jumbo v5, "pkgName"

    .line 29
    .line 30
    .line 31
    filled-new-array {v5}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    filled-new-array {p1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 40
    .line 41
    const-string v8, "LICENSE"

    .line 42
    .line 43
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 56
    .line 57
    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v5, -0x1

    .line 68
    if-le v4, v5, :cond_2

    .line 69
    .line 70
    const-string/jumbo v4, "isElmKey(True)"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    const-string/jumbo v4, "deleteLicenseByAdmin(): notify ELM observers"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/samsung/android/knox/license/LicenseResult;

    .line 83
    .line 84
    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    .line 85
    .line 86
    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 87
    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    move-object v5, v4

    .line 92
    move-object v6, p1

    .line 93
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Status;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    const-string/jumbo p0, "isElmKey(False)"

    .line 101
    .line 102
    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_1
    :try_start_3
    const-string/jumbo p0, "deleteLicenseByAdmin() failed"

    .line 111
    .line 112
    .line 113
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :goto_2
    return v3

    .line 118
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return v3
.end method

.method public final enforcePermission$1()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const-string v0, ",com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final getAllLicenseActivationsInfos()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    const-string/jumbo v3, "getAllActivations"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {p0, v3, v4, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const-string/jumbo v0, "result"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 9

    .line 1
    const-string/jumbo v0, "pkgVersion"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "instanceId"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "pkgName"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    const-string v5, "LICENSE"

    .line 21
    .line 22
    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/content/ContentValues;

    .line 54
    .line 55
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    .line 68
    .line 69
    invoke-direct {v8, v6, v7, v5}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseInfo;

    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    return-object v0

    .line 95
    :catch_0
    const-string v0, "EnterpriseLicenseService"

    .line 96
    .line 97
    const-string/jumbo v1, "getLicenseInfo() failed"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_1
    return-object p0
.end method

.method public final getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string/jumbo v0, "pkgName"

    .line 2
    .line 3
    .line 4
    const-string v1, "EnterpriseLicenseService"

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "instanceId"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    .line 36
    const-string v3, "LICENSE"

    .line 37
    .line 38
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const-string/jumbo p1, "getApiCallData(): result is null, Record does not exist"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-string/jumbo p1, "getApiCallData(): pkgName is null, Record does not exist"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :goto_0
    const-string/jumbo v0, "getApiCallData() failed"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-object p0
.end method

.method public final getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    const-string p0, "EnterpriseLicenseService"

    .line 29
    .line 30
    const-string/jumbo p1, "getApiCallDataByAdmin() failed"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-object v0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    const-string p1, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "getELMPermissions() failed: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "EnterpriseLicenseService"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "instanceId"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "pkgName"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    const-string v4, "LICENSE"

    .line 31
    .line 32
    invoke-virtual {v3, v4, v2, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/content/ContentValues;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const-string p1, "EnterpriseLicenseService"

    .line 78
    .line 79
    const-string/jumbo v0, "getInstanceId() failed"

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :try_start_0
    const-string/jumbo p1, "getActivations"

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const-string/jumbo p1, "result"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    move-object v2, p0

    .line 44
    check-cast v2, Lcom/samsung/android/knox/license/ActivationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 7

    .line 1
    const-string/jumbo v0, "pkgVersion"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "instanceId"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "pkgName"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    .line 33
    const-string v5, "LICENSE"

    .line 34
    .line 35
    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/content/ContentValues;

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lcom/samsung/android/knox/license/LicenseInfo;

    .line 84
    .line 85
    invoke-direct {v1, p1, v5, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    move-object p0, v1

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    const-string p1, "EnterpriseLicenseService"

    .line 91
    .line 92
    const-string/jumbo v0, "getLicenseInfo() failed"

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 6

    .line 1
    const-string/jumbo v0, "pkgVersion"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "instanceId"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "pkgName"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    .line 33
    const-string v5, "LICENSE"

    .line 34
    .line 35
    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/content/ContentValues;

    .line 62
    .line 63
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Lcom/samsung/android/knox/license/LicenseInfo;

    .line 84
    .line 85
    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    move-object p0, v2

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    const-string p1, "EnterpriseLicenseService"

    .line 91
    .line 92
    const-string/jumbo v0, "getLicenseInfoByAdmin() failed"

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final getPackageName(II)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const-string v0, ":"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "activity"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/ActivityManager;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, ""

    .line 39
    .line 40
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object p1, p0

    .line 48
    :cond_2
    :goto_1
    return-object p1
.end method

.method public final getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 5

    .line 1
    const-string v0, "EnterpriseLicenseService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string/jumbo v2, "instanceId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "LICENSE"

    .line 37
    .line 38
    const-string/jumbo v2, "rightsObject"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .line 53
    :try_start_1
    const-string/jumbo p0, "getRightsObject() - deserializeObject"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p1

    .line 63
    move-object v4, p1

    .line 64
    move-object p1, p0

    .line 65
    move-object p0, v4

    .line 66
    :goto_0
    const-string/jumbo v1, "getRightsObject() failed"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_1
    move-object p0, p1

    .line 76
    :cond_1
    :goto_2
    return-object p0
.end method

.method public final getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 5

    .line 1
    const-string v0, "EnterpriseLicenseService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string/jumbo v2, "pkgName"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "LICENSE"

    .line 37
    .line 38
    const-string/jumbo v2, "rightsObject"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .line 53
    :try_start_1
    const-string/jumbo p0, "getRightsObjectByAdmin() - deserializeObject"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p1

    .line 63
    move-object v4, p1

    .line 64
    move-object p1, p0

    .line 65
    move-object p0, v4

    .line 66
    :goto_0
    const-string/jumbo v1, "getRightsObjectByAdmin() failed"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_1
    move-object p0, p1

    .line 76
    :cond_1
    :goto_2
    return-object p0
.end method

.method public final isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-string v1, "EnterpriseLicenseService"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_1
    const-string p0, "Request allowed from callerSharedPackages to targetPackageName"

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    array-length p1, p3

    .line 24
    move v3, v0

    .line 25
    :goto_0
    if-ge v3, p1, :cond_2

    .line 26
    .line 27
    aget-object v4, p3, v3

    .line 28
    .line 29
    invoke-virtual {p0, p2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isCallerAllowedToPerformActionForAnotherPackage(ILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string p0, "Request allowed by platform signature or license permission"

    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return v0
.end method

.method public final isCallerAllowedToPerformActionForAnotherPackage(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->samsungSpecialPackages:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "android"

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    invoke-interface {p0, v3, p2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    return v0

    .line 32
    :catch_1
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "com.samsung.android.knox.kpu"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(ILjava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 63
    :try_start_4
    invoke-interface {p0, v3, p2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    if-nez p0, :cond_3

    .line 68
    .line 69
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    :try_start_6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v1, p2, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    move v0, v2

    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-exception p0

    .line 85
    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_3
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    return v0

    .line 94
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 104
    return p0

    .line 105
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    return v0
.end method

.method public final isEulaBypassAllowed(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "mamPackageName"

    .line 2
    .line 3
    .line 4
    const-string v1, "EnterpriseLicenseService"

    .line 5
    .line 6
    const-string/jumbo v2, "isEulaBypassAllowed"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string v4, "KNOX_CUSTOM"

    .line 23
    .line 24
    invoke-virtual {v3, p0, p0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/content/ContentValues;

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    const-string v4, ";"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    array-length v4, v3

    .line 65
    move v5, p0

    .line 66
    :goto_0
    if-ge v5, v4, :cond_0

    .line 67
    .line 68
    aget-object v6, v3, v5

    .line 69
    .line 70
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    const-string/jumbo v0, "isEulaBypassAllowed() failed"

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "isPackageInstalled() - "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "isPackageInstalled()"

    .line 5
    .line 6
    .line 7
    const-string v2, "EnterpriseLicenseService"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v3, "user"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/os/UserManager;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 43
    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 51
    .line 52
    invoke-virtual {v5, p1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, " found in user "

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :catch_0
    const-string v4, " not found in user "

    .line 86
    .line 87
    invoke-static {v0, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 92
    .line 93
    invoke-static {v4, v3, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    return v4
.end method

.method public final isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string p0, "EnterpriseLicenseService"

    .line 2
    .line 3
    const-string/jumbo v0, "isServiceAvailable"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_6

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    const-string/jumbo v1, "rightsObject"

    .line 21
    .line 22
    .line 23
    const-string v2, "LICENSE"

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string/jumbo v5, "pkgName"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v6, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v6, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    return v3

    .line 74
    :cond_2
    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v4, v2, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/content/ContentValues;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/samsung/android/knox/license/RightsObject;

    .line 118
    .line 119
    if-nez v2, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    return v3

    .line 133
    :catch_0
    const-string/jumbo p1, "check Service did not find permission"

    .line 134
    .line 135
    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_5
    return v0

    .line 140
    :cond_6
    :goto_2
    const-string/jumbo p1, "serviceName is null"

    .line 141
    .line 142
    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return v0
.end method

.method public final log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/16 v0, 0x2710

    .line 19
    .line 20
    if-lt p0, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x4e1f

    .line 23
    .line 24
    if-le p0, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "apiName"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p2, "adminUid"

    .line 45
    .line 46
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    .line 48
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo p2, "isGetterApi"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo p2, "isOldNamespace"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo p2, "profileUserId"

    .line 64
    .line 65
    .line 66
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 67
    .line 68
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo p2, "parent"

    .line 72
    .line 73
    .line 74
    iget-boolean p3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 75
    .line 76
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo p2, "dalessCallerPackage"

    .line 80
    .line 81
    .line 82
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    .line 83
    .line 84
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    const-string p1, "LicenseLogService"

    .line 98
    .line 99
    const-string/jumbo p2, "log() failed"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyContainerLicenseStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateContainerLicenseStatus(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 24
    .line 25
    invoke-interface {v2, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
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

.method public final onUserStarting(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;ILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move/from16 v4, p6

    .line 8
    .line 9
    const-string/jumbo v1, "pkgName"

    .line 10
    .line 11
    .line 12
    const-string v2, "LICENSE"

    .line 13
    .line 14
    const-string/jumbo v14, "processKnoxLicenseResponse: "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "klm activation record not found for "

    .line 18
    .line 19
    .line 20
    const-string/jumbo v6, "result setLicensePermissionForMDM("

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 24
    .line 25
    .line 26
    const-string v15, "EnterpriseLicenseService"

    .line 27
    .line 28
    const-string/jumbo v7, "processKnoxLicenseResponse()"

    .line 29
    .line 30
    .line 31
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v16

    .line 38
    const/16 v18, 0x0

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz p8, :cond_2

    .line 42
    .line 43
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Landroid/content/ContentValues;

    .line 52
    .line 53
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string/jumbo v11, "rightsObject"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 64
    .line 65
    .line 66
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    .line 68
    invoke-virtual {v10, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-lez v10, :cond_0

    .line 73
    .line 74
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    .line 76
    invoke-virtual {v1, v2, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_0
    const-string/jumbo v8, "instanceId"

    .line 88
    .line 89
    .line 90
    const-string v10, "-1"

    .line 91
    .line 92
    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v8, "pkgVersion"

    .line 96
    .line 97
    .line 98
    move-object/from16 v10, p3

    .line 99
    .line 100
    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_0
    if-eqz v1, :cond_1

    .line 113
    .line 114
    const-string/jumbo v2, "processKnoxLicenseResponse(): License Table update."

    .line 115
    .line 116
    .line 117
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v6, "): "

    .line 129
    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 134
    .line 135
    invoke-interface {v6, v13}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/util/ArrayList;

    .line 150
    .line 151
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 152
    .line 153
    invoke-interface {v6, v13}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    sget v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 161
    .line 162
    sget-object v6, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 165
    .line 166
    invoke-virtual {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    move-object v2, v7

    .line 171
    :goto_1
    move-object/from16 v19, v2

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    const-string/jumbo v1, "processKnoxLicenseResponse().RO is null"

    .line 175
    .line 176
    .line 177
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-object/from16 v19, v7

    .line 181
    .line 182
    move/from16 v1, v18

    .line 183
    .line 184
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    if-eqz v1, :cond_3

    .line 190
    .line 191
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Ljava/util/ArrayList;

    .line 196
    .line 197
    move-object/from16 v20, v1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    move-object/from16 v20, v2

    .line 201
    .line 202
    :goto_3
    if-eqz v5, :cond_5

    .line 203
    .line 204
    const/16 v1, 0x321

    .line 205
    .line 206
    if-eq v4, v1, :cond_4

    .line 207
    .line 208
    iget-object v2, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 209
    .line 210
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 211
    .line 212
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_4

    .line 217
    .line 218
    iget-object v1, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 219
    .line 220
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    .line 222
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 227
    .line 228
    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_4
    if-eq v4, v1, :cond_5

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, " and package "

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_5
    :goto_4
    new-instance v3, Lcom/samsung/android/knox/license/LicenseResult;

    .line 257
    .line 258
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-static {v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    move-object v6, v3

    .line 271
    move-object/from16 v7, p2

    .line 272
    .line 273
    move-object/from16 v8, p4

    .line 274
    .line 275
    move-object/from16 v11, v19

    .line 276
    .line 277
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    const/4 v11, 0x0

    .line 285
    move-object/from16 v1, p0

    .line 286
    .line 287
    move-object/from16 v2, p4

    .line 288
    .line 289
    move-object v12, v3

    .line 290
    move v3, v6

    .line 291
    move/from16 v4, p6

    .line 292
    .line 293
    move-object/from16 v5, p1

    .line 294
    .line 295
    move-object/from16 v6, p2

    .line 296
    .line 297
    move-object/from16 v7, p7

    .line 298
    .line 299
    move/from16 v8, p9

    .line 300
    .line 301
    move-object/from16 v9, v19

    .line 302
    .line 303
    move-object/from16 v10, v20

    .line 304
    .line 305
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    const/16 v2, 0x1f5

    .line 332
    .line 333
    if-eq v1, v2, :cond_6

    .line 334
    .line 335
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_6
    invoke-virtual {v0, v13, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, p4

    .line 342
    .line 343
    invoke-virtual {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .line 345
    .line 346
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    .line 348
    .line 349
    const/4 v0, 0x1

    .line 350
    return v0

    .line 351
    :goto_5
    :try_start_1
    const-string/jumbo v1, "processKnoxLicenseResponse() failed"

    .line 352
    .line 353
    .line 354
    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .line 359
    .line 360
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    .line 362
    .line 363
    return v18

    .line 364
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    .line 366
    .line 367
    throw v0
.end method

.method public final declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 22

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p9

    .line 8
    .line 9
    const-string/jumbo v1, "processLicenseActivationResponse:finally"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "elm activation record not found for "

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "processLicenseActivationResponse:finally"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v5, "elm activation record not found for "

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "processLicenseActivationResponse:finally"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v6, "elm activation record not found for "

    .line 25
    .line 26
    .line 27
    const-string/jumbo v7, "processLicenseActivationResponse: "

    .line 28
    .line 29
    .line 30
    const-string/jumbo v8, "processLicenseActivationResponse(): ret = "

    .line 31
    .line 32
    .line 33
    const-string/jumbo v15, "processLicenseActivationResponse:finally"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v9, "elm activation record not found for "

    .line 37
    .line 38
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 41
    .line 42
    .line 43
    const-string v10, "EnterpriseLicenseService"

    .line 44
    .line 45
    const-string/jumbo v11, "processLicenseActivationResponse()"

    .line 46
    .line 47
    .line 48
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/16 v16, 0x1

    .line 52
    .line 53
    if-eqz v14, :cond_1

    .line 54
    .line 55
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-eqz v11, :cond_2

    .line 67
    .line 68
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move/from16 v11, v16

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_11

    .line 75
    .line 76
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v17

    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    if-nez p6, :cond_6

    .line 85
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v11, :cond_3

    .line 96
    .line 97
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    :cond_3
    if-eqz v4, :cond_5

    .line 104
    .line 105
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 106
    .line 107
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 116
    .line 117
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 126
    .line 127
    move-object/from16 v19, v1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const-string v1, "EnterpriseLicenseService"

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v5, " and package "

    .line 141
    .line 142
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_2
    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    .line 156
    .line 157
    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 158
    .line 159
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    move-object v5, v2

    .line 164
    move-object/from16 v6, p2

    .line 165
    .line 166
    move-object/from16 v7, p4

    .line 167
    .line 168
    move v8, v3

    .line 169
    move-object/from16 v10, v20

    .line 170
    .line 171
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "EnterpriseLicenseService"

    .line 175
    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    move-object/from16 v1, p0

    .line 197
    .line 198
    move-object v15, v2

    .line 199
    move-object/from16 v2, p4

    .line 200
    .line 201
    move-object/from16 v4, p1

    .line 202
    .line 203
    move-object/from16 v5, p2

    .line 204
    .line 205
    move-object/from16 v6, p9

    .line 206
    .line 207
    move-object/from16 v7, p8

    .line 208
    .line 209
    move/from16 v8, p10

    .line 210
    .line 211
    move-object/from16 v9, v20

    .line 212
    .line 213
    move-object v10, v0

    .line 214
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v13, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v9, p4

    .line 221
    .line 222
    invoke-virtual {v12, v9, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .line 227
    .line 228
    monitor-exit p0

    .line 229
    return v16

    .line 230
    :cond_6
    move-object/from16 v9, p4

    .line 231
    .line 232
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    .line 233
    .line 234
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string/jumbo v15, "pkgName"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v15, Landroid/content/ContentValues;

    .line 244
    .line 245
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    const-string/jumbo v14, "rightsObject"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v15, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 256
    .line 257
    .line 258
    const-string/jumbo v9, "instanceId"

    .line 259
    .line 260
    .line 261
    move-object/from16 v14, p5

    .line 262
    .line 263
    invoke-virtual {v15, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string/jumbo v9, "pkgVersion"

    .line 267
    .line 268
    .line 269
    move-object/from16 v14, p3

    .line 270
    .line 271
    invoke-virtual {v15, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 275
    .line 276
    const-string v14, "LICENSE"

    .line 277
    .line 278
    invoke-virtual {v9, v14, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-lez v9, :cond_7

    .line 283
    .line 284
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 285
    .line 286
    const-string v14, "LICENSE"

    .line 287
    .line 288
    invoke-virtual {v9, v14, v15, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    :goto_3
    move v14, v9

    .line 293
    goto :goto_4

    .line 294
    :catchall_1
    move-exception v0

    .line 295
    const/4 v10, 0x0

    .line 296
    goto/16 :goto_e

    .line 297
    .line 298
    :catch_0
    move-exception v0

    .line 299
    const/16 v16, 0x0

    .line 300
    .line 301
    goto/16 :goto_a

    .line 302
    .line 303
    :cond_7
    const-string/jumbo v9, "pkgName"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v15, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 310
    .line 311
    const-string v10, "LICENSE"

    .line 312
    .line 313
    invoke-virtual {v9, v10, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 314
    .line 315
    .line 316
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    if-nez v10, :cond_8

    .line 318
    .line 319
    :try_start_2
    const-string v9, "EnterpriseLicenseService"

    .line 320
    .line 321
    const-string/jumbo v14, "check key field"

    .line 322
    .line 323
    .line 324
    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    const-string/jumbo v9, "licenseKey"

    .line 328
    .line 329
    .line 330
    const-string/jumbo v14, "na"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 337
    .line 338
    const-string v14, "LICENSE"

    .line 339
    .line 340
    invoke-virtual {v9, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 341
    .line 342
    .line 343
    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 344
    goto :goto_3

    .line 345
    :catchall_2
    move-exception v0

    .line 346
    goto/16 :goto_e

    .line 347
    .line 348
    :catch_1
    move-exception v0

    .line 349
    move/from16 v16, v10

    .line 350
    .line 351
    goto/16 :goto_a

    .line 352
    .line 353
    :cond_8
    move v14, v10

    .line 354
    :goto_4
    :try_start_3
    const-string v9, "EnterpriseLicenseService"

    .line 355
    .line 356
    new-instance v10, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    if-eqz v14, :cond_9

    .line 372
    .line 373
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 374
    .line 375
    invoke-interface {v8, v13}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    new-instance v8, Ljava/util/ArrayList;

    .line 379
    .line 380
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 381
    .line 382
    invoke-interface {v9, v13}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 387
    .line 388
    .line 389
    :try_start_4
    sget v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 390
    .line 391
    sget-object v9, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 394
    .line 395
    invoke-virtual {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 396
    .line 397
    .line 398
    move-object/from16 v20, v8

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :catchall_3
    move-exception v0

    .line 402
    move-object/from16 v20, v8

    .line 403
    .line 404
    :goto_5
    move v10, v14

    .line 405
    goto/16 :goto_e

    .line 406
    .line 407
    :catch_2
    move-exception v0

    .line 408
    move-object/from16 v20, v8

    .line 409
    .line 410
    :goto_6
    move/from16 v16, v14

    .line 411
    .line 412
    goto/16 :goto_a

    .line 413
    .line 414
    :catchall_4
    move-exception v0

    .line 415
    goto :goto_5

    .line 416
    :catch_3
    move-exception v0

    .line 417
    goto :goto_6

    .line 418
    :cond_9
    :goto_7
    :try_start_5
    const-string v8, "EnterpriseLicenseService"

    .line 419
    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    const/16 v8, 0x1f5

    .line 444
    .line 445
    if-eq v7, v8, :cond_a

    .line 446
    .line 447
    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 448
    .line 449
    .line 450
    :cond_a
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .line 454
    .line 455
    if-eqz v14, :cond_c

    .line 456
    .line 457
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v11, :cond_b

    .line 462
    .line 463
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Ljava/util/ArrayList;

    .line 468
    .line 469
    :cond_b
    move-object/from16 v15, p4

    .line 470
    .line 471
    move-object/from16 v16, v1

    .line 472
    .line 473
    move v3, v2

    .line 474
    goto :goto_8

    .line 475
    :cond_c
    const-string/jumbo v2, "fail"

    .line 476
    .line 477
    .line 478
    move-object/from16 v16, v1

    .line 479
    .line 480
    move-object v15, v2

    .line 481
    const/16 v3, 0x12d

    .line 482
    .line 483
    :goto_8
    if-eqz v4, :cond_e

    .line 484
    .line 485
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 486
    .line 487
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 488
    .line 489
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_d

    .line 494
    .line 495
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 496
    .line 497
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 498
    .line 499
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 504
    .line 505
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 506
    .line 507
    move-object/from16 v19, v1

    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_d
    const-string v1, "EnterpriseLicenseService"

    .line 511
    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v5, " and package "

    .line 521
    .line 522
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    :cond_e
    :goto_9
    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    .line 536
    .line 537
    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 538
    .line 539
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    move-object v5, v2

    .line 544
    move-object/from16 v6, p2

    .line 545
    .line 546
    move-object v7, v15

    .line 547
    move v8, v3

    .line 548
    move-object/from16 v10, v20

    .line 549
    .line 550
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    const-string v1, "EnterpriseLicenseService"

    .line 554
    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    const/4 v11, 0x0

    .line 575
    move-object/from16 v1, p0

    .line 576
    .line 577
    move-object v0, v2

    .line 578
    move-object v2, v15

    .line 579
    move-object/from16 v4, p1

    .line 580
    .line 581
    move-object/from16 v5, p2

    .line 582
    .line 583
    move-object/from16 v6, p9

    .line 584
    .line 585
    move-object/from16 v7, p8

    .line 586
    .line 587
    move/from16 v8, p10

    .line 588
    .line 589
    move-object/from16 v9, v20

    .line 590
    .line 591
    move-object/from16 v10, v16

    .line 592
    .line 593
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v12, v13, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v12, v15, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 603
    .line 604
    .line 605
    goto/16 :goto_d

    .line 606
    .line 607
    :goto_a
    :try_start_7
    const-string v6, "EnterpriseLicenseService"

    .line 608
    .line 609
    const-string/jumbo v7, "processLicenseActivationResponse() failed"

    .line 610
    .line 611
    .line 612
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 616
    .line 617
    .line 618
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 619
    .line 620
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .line 622
    .line 623
    if-eqz v16, :cond_10

    .line 624
    .line 625
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-eqz v11, :cond_f

    .line 630
    .line 631
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Ljava/util/ArrayList;

    .line 636
    .line 637
    :cond_f
    move-object v14, v0

    .line 638
    move/from16 v21, v1

    .line 639
    .line 640
    move-object/from16 v0, p4

    .line 641
    .line 642
    goto :goto_b

    .line 643
    :cond_10
    const-string/jumbo v1, "fail"

    .line 644
    .line 645
    .line 646
    move-object v14, v0

    .line 647
    move-object v0, v1

    .line 648
    const/16 v21, 0x12d

    .line 649
    .line 650
    :goto_b
    if-eqz v4, :cond_12

    .line 651
    .line 652
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 653
    .line 654
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 655
    .line 656
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    if-eqz v1, :cond_11

    .line 661
    .line 662
    iget-object v1, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 663
    .line 664
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 665
    .line 666
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 671
    .line 672
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 673
    .line 674
    move-object/from16 v19, v1

    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_11
    const-string v1, "EnterpriseLicenseService"

    .line 678
    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v5, " and package "

    .line 688
    .line 689
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    :cond_12
    :goto_c
    new-instance v15, Lcom/samsung/android/knox/license/LicenseResult;

    .line 703
    .line 704
    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 705
    .line 706
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v11

    .line 710
    move-object v5, v15

    .line 711
    move-object/from16 v6, p2

    .line 712
    .line 713
    move-object v7, v0

    .line 714
    move/from16 v8, v21

    .line 715
    .line 716
    move-object/from16 v10, v20

    .line 717
    .line 718
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    const-string v1, "EnterpriseLicenseService"

    .line 722
    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    const/4 v11, 0x0

    .line 743
    move-object/from16 v1, p0

    .line 744
    .line 745
    move-object v2, v0

    .line 746
    move/from16 v3, v21

    .line 747
    .line 748
    move-object/from16 v4, p1

    .line 749
    .line 750
    move-object/from16 v5, p2

    .line 751
    .line 752
    move-object/from16 v6, p9

    .line 753
    .line 754
    move-object/from16 v7, p8

    .line 755
    .line 756
    move/from16 v8, p10

    .line 757
    .line 758
    move-object/from16 v9, v20

    .line 759
    .line 760
    move-object v10, v14

    .line 761
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v12, v13, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v12, v0, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 771
    .line 772
    .line 773
    move/from16 v14, v16

    .line 774
    .line 775
    :goto_d
    monitor-exit p0

    .line 776
    return v14

    .line 777
    :catchall_5
    move-exception v0

    .line 778
    move/from16 v10, v16

    .line 779
    .line 780
    :goto_e
    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .line 784
    .line 785
    if-eqz v10, :cond_14

    .line 786
    .line 787
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-eqz v11, :cond_13

    .line 792
    .line 793
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    check-cast v3, Ljava/util/ArrayList;

    .line 798
    .line 799
    :cond_13
    move-object/from16 v14, p4

    .line 800
    .line 801
    move-object v15, v3

    .line 802
    move v3, v5

    .line 803
    goto :goto_f

    .line 804
    :cond_14
    const-string/jumbo v5, "fail"

    .line 805
    .line 806
    .line 807
    move-object v15, v3

    .line 808
    move-object v14, v5

    .line 809
    const/16 v3, 0x12d

    .line 810
    .line 811
    :goto_f
    if-eqz v4, :cond_16

    .line 812
    .line 813
    iget-object v5, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 814
    .line 815
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 816
    .line 817
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    if-eqz v5, :cond_15

    .line 822
    .line 823
    iget-object v2, v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 824
    .line 825
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 826
    .line 827
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    check-cast v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 832
    .line 833
    iget-object v2, v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 834
    .line 835
    move-object/from16 v19, v2

    .line 836
    .line 837
    goto :goto_10

    .line 838
    :cond_15
    const-string v5, "EnterpriseLicenseService"

    .line 839
    .line 840
    new-instance v6, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    const-string v2, " and package "

    .line 849
    .line 850
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    :cond_16
    :goto_10
    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    .line 864
    .line 865
    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 866
    .line 867
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v11

    .line 871
    move-object v5, v2

    .line 872
    move-object/from16 v6, p2

    .line 873
    .line 874
    move-object v7, v14

    .line 875
    move v8, v3

    .line 876
    move-object/from16 v10, v20

    .line 877
    .line 878
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    const-string v5, "EnterpriseLicenseService"

    .line 882
    .line 883
    new-instance v6, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .line 901
    .line 902
    const/4 v11, 0x0

    .line 903
    move-object/from16 v1, p0

    .line 904
    .line 905
    move-object v10, v2

    .line 906
    move-object v2, v14

    .line 907
    move-object/from16 v4, p1

    .line 908
    .line 909
    move-object/from16 v5, p2

    .line 910
    .line 911
    move-object/from16 v6, p9

    .line 912
    .line 913
    move-object/from16 v7, p8

    .line 914
    .line 915
    move/from16 v8, p10

    .line 916
    .line 917
    move-object/from16 v9, v20

    .line 918
    .line 919
    move-object/from16 p3, v0

    .line 920
    .line 921
    move-object v0, v10

    .line 922
    move-object v10, v15

    .line 923
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v12, v13, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v12, v14, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    .line 934
    .line 935
    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 936
    :goto_11
    monitor-exit p0

    .line 937
    throw v0
.end method

.method public final processLicenseValidationResult(Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 1
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "fail"

    const-string/jumbo v7, "processLicenseValidationResult(): ret = "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 2
    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v11, "processLicenseValidationResult()"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    :goto_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x1

    .line 5
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 6
    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v18, v6

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move-object/from16 v19, v8

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v20, v7

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v21, v5

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move-wide/from16 v22, v14

    const-string/jumbo v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const/4 v15, 0x0

    if-nez p2, :cond_5

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_3

    .line 8
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :cond_3
    invoke-virtual {v0, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    .line 12
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x321

    .line 14
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v13, :cond_4

    .line 15
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 17
    :cond_4
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 19
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object v7, v15

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 21
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v17, 0x1

    return v17

    :cond_5
    const/16 v17, 0x1

    .line 23
    :try_start_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 24
    :try_start_1
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v15, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object/from16 v24, v11

    .line 26
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 27
    :try_start_3
    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v4, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 28
    const-string/jumbo v2, "pkgVersion"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v11, v21

    invoke-virtual {v2, v11, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-lez v2, :cond_6

    .line 30
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v11, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v11, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v4, p7

    move-object/from16 p2, v0

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v2, v24

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v12, p4

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    :goto_3
    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v24

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v12, p4

    goto/16 :goto_15

    :cond_6
    const/4 v11, 0x0

    .line 31
    :goto_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object/from16 v4, v19

    :try_start_6
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v11, :cond_7

    .line 32
    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v10}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v4, p7

    move-object/from16 p2, v0

    move/from16 v16, v11

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v2, v24

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v16, v11

    move-object v15, v12

    move-object/from16 v11, v18

    :goto_6
    move-object/from16 v2, v24

    goto :goto_4

    .line 33
    :cond_7
    :goto_7
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 35
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 36
    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v15, 0x0

    .line 37
    invoke-virtual {v2, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v19, v12

    const/4 v15, 0x0

    .line 38
    :goto_8
    :try_start_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-ge v15, v12, :cond_a

    .line 39
    :try_start_a
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 p2, v2

    .line 40
    invoke-static {v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v20, v5

    .line 41
    :try_start_b
    sget-object v5, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 43
    check-cast v5, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v2, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, v20

    goto :goto_8

    .line 45
    :cond_9
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "processLicenseValidationResult():  u"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isLicenseLocked ? "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v17

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v4, p7

    move-object/from16 p2, v0

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v5, v20

    :goto_a
    move-object/from16 v2, v24

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    move-object/from16 v12, p4

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v5, v20

    :goto_b
    move-object/from16 v2, v24

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v12, p4

    move-object/from16 v4, p7

    move-object/from16 p2, v0

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v20, v5

    :goto_c
    move-object/from16 v12, p4

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    goto :goto_b

    :cond_a
    move-object/from16 v20, v5

    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_c

    .line 46
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 48
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 49
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 50
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 52
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 53
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 54
    invoke-static {v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move/from16 v15, v17

    :cond_c
    if-eqz v15, :cond_d

    .line 55
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 56
    :cond_d
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v10}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_f

    if-eqz v13, :cond_e

    .line 58
    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_e
    invoke-virtual {v2, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    move-object/from16 v5, v20

    .line 62
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v12, p4

    move-object/from16 v15, v19

    .line 63
    invoke-virtual {v2, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_e
    move-object/from16 v4, v24

    const/16 v3, 0x321

    goto :goto_f

    :cond_f
    move-object/from16 v4, v18

    move-object/from16 v5, v20

    .line 64
    invoke-virtual {v2, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x12d

    .line 65
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_e

    .line 66
    :goto_f
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v13, :cond_10

    move-object/from16 v3, p7

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 69
    :cond_10
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    new-instance v12, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v12

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v10, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 73
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_19

    :catchall_4
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v4, v18

    move-object/from16 v15, v19

    move-object/from16 v5, v20

    move-object/from16 v2, v24

    move-object/from16 p2, v0

    move/from16 v16, v11

    move-object v11, v4

    move-object/from16 v4, p7

    goto/16 :goto_1a

    :catchall_5
    move-exception v0

    move-object/from16 v12, p4

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    move-object/from16 v5, v20

    :goto_10
    move-object/from16 v2, v24

    :goto_11
    move-object/from16 v4, p7

    move-object/from16 p2, v0

    goto/16 :goto_1a

    :catchall_6
    move-exception v0

    move-object/from16 v12, p4

    move/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v15, v19

    goto :goto_10

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move/from16 v16, v11

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v2, v24

    move-object/from16 v12, p4

    goto :goto_11

    :catch_5
    move-exception v0

    move/from16 v16, v11

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v1, p7

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v2, v24

    const/16 v16, 0x0

    move-object/from16 v12, p4

    :goto_12
    move-object/from16 p2, v0

    move-object v4, v1

    :goto_13
    move-object/from16 v1, p0

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object/from16 v1, p7

    goto/16 :goto_3

    :catchall_9
    move-exception v0

    move-object/from16 v1, p7

    move-object v15, v12

    move-object/from16 v11, v18

    const/16 v16, 0x0

    move-object v12, v2

    move-object/from16 v2, v24

    goto :goto_12

    :catch_7
    move-exception v0

    move-object/from16 v1, p7

    move-object v15, v12

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    const/16 v16, 0x0

    move-object v12, v2

    goto/16 :goto_b

    :catchall_a
    move-exception v0

    move-object/from16 v1, p7

    move-object v15, v12

    const/16 v16, 0x0

    move-object v12, v2

    move-object v2, v11

    move-object/from16 v11, v18

    goto :goto_12

    :catch_8
    move-exception v0

    move-object/from16 v1, p7

    :goto_14
    move-object v15, v12

    move-object/from16 v4, v19

    const/16 v16, 0x0

    move-object v12, v2

    move-object v2, v11

    move-object/from16 v11, v18

    goto :goto_15

    :catchall_b
    move-exception v0

    move-object v1, v4

    move-object v15, v12

    const/16 v16, 0x0

    move-object v12, v2

    move-object v2, v11

    move-object/from16 v11, v18

    move-object/from16 p2, v0

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v1, v4

    goto :goto_14

    .line 75
    :goto_15
    :try_start_e
    const-string/jumbo v1, "processLicenseValidationResult() failed"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_12

    if-eqz v13, :cond_11

    .line 78
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_11
    invoke-virtual {v0, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    .line 82
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_16
    const/16 v1, 0x321

    goto :goto_17

    .line 84
    :cond_12
    invoke-virtual {v0, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12d

    .line 85
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_16

    .line 86
    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v13, :cond_13

    move-object/from16 v1, p7

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 88
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_18

    :cond_13
    move-object/from16 v1, p0

    .line 89
    :goto_18
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 91
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 93
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v11, v16

    :goto_19
    return v11

    :catchall_c
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_11

    .line 95
    :goto_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_15

    if-eqz v13, :cond_14

    .line 96
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_14
    invoke-virtual {v0, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    .line 100
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1b
    const/16 v3, 0x321

    goto :goto_1c

    .line 102
    :cond_15
    invoke-virtual {v0, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x12d

    .line 103
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1b

    .line 104
    :goto_1c
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v13, :cond_16

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    :cond_16
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 109
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 111
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw p2
.end method

.method public final registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .locals 9

    .line 1
    const-string v0, "DeathRecipient successfully linked to "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "registerLicenseResultRecord() for "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "EnterpriseLicenseService"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    .line 24
    .line 25
    move-object v3, v1

    .line 26
    move-object v4, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-object v7, p3

    .line 30
    move-object v8, p4

    .line 31
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    :try_start_0
    invoke-interface {p3}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    invoke-interface {p4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final resetLicense(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "pkgName"

    .line 2
    .line 3
    .line 4
    const-string v1, "EnterpriseLicenseService"

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 p0, 0x0

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v5, "instanceId"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    const-string v5, "LICENSE"

    .line 41
    .line 42
    invoke-virtual {p1, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string/jumbo p1, "resetLicense(): result is null"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    const-string/jumbo p1, "resetLicense(): pkgName is null, Record does not exist"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 85
    .line 86
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_3
    const-string/jumbo v0, "resetLicense() failed"

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_2
    return p0

    .line 104
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_4
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    return p0
.end method

.method public final resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 35
    .line 36
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    :try_start_1
    const-string p0, "EnterpriseLicenseService"

    .line 47
    .line 48
    const-string/jumbo p1, "resetLicenseByAdmin() failed"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return v2

    .line 56
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method public final sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendDeviceRegistrationIntentToKpmAgent : status : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "EnterpriseLicenseService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "success"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "packageName"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo p2, "com.samsung.android.knox.attestation"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/16 p2, 0x20

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 58
    .line 59
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final sendElmResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 11

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string/jumbo v1, "fail"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p9

    .line 2
    const-string v12, "ELM result sent by callback to "

    const-string v13, "EnterpriseLicenseService"

    if-nez p10, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v3, "ELM Record not found. Caller died or race condition for "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object/from16 v14, p10

    :goto_1
    const/16 v15, 0x320

    if-eqz v14, :cond_2

    .line 6
    iget-object v0, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_2

    const/16 v16, 0x1

    .line 7
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    .line 8
    invoke-static {v15}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v6

    iget-object v8, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 9
    iget-object v2, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    .line 11
    :goto_2
    const-string v2, "RemoteException in sendElmResult"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 12
    :goto_3
    const-string v2, "DeadObjectException in sendElmResult"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_2
    :goto_4
    const/16 v16, 0x0

    :goto_5
    if-eqz v14, :cond_3

    .line 13
    iget-object v0, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_3

    if-eqz v16, :cond_6

    .line 14
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move/from16 v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v3, p6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move/from16 v3, p7

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v3, p8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz v11, :cond_4

    .line 22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v3, "Permissions"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 24
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    :cond_4
    const-string v2, "ELM result sent by Intent to "

    if-eqz v10, :cond_5

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 28
    iget-object v5, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 29
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    invoke-virtual {v2, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_5
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 33
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    invoke-static {v2, v9, v13}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final sendKlmResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 11

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    const-string/jumbo v1, "fail"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p9

    .line 2
    const-string v13, "KLM result sent by callback to "

    const/16 v14, 0x321

    const-string v15, "EnterpriseLicenseService"

    if-nez p10, :cond_1

    if-eqz v0, :cond_1

    if-eq v2, v14, :cond_1

    .line 3
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-static {v0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string v4, "KLM Record not found. Caller died or race condition for "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p10

    :goto_1
    if-eqz v9, :cond_2

    .line 6
    iget-object v0, v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_2

    if-eq v2, v14, :cond_2

    const/16 v16, 0x1

    .line 7
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    .line 8
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v7

    iget-object v8, v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v0

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v17, v8

    move-object/from16 v8, p8

    move-object v14, v9

    move-object/from16 v9, v17

    :try_start_1
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 9
    iget-object v3, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v14, v9

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v14, v9

    goto :goto_3

    .line 11
    :goto_2
    const-string v3, "RemoteException in sendKlmResult"

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 12
    :goto_3
    const-string v3, "DeadObjectException in sendKlmResult"

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_2
    move-object v14, v9

    :goto_4
    const/16 v16, 0x0

    :goto_5
    if-eqz v14, :cond_3

    .line 13
    iget-object v0, v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_3

    if-nez v16, :cond_3

    const/16 v3, 0x321

    if-ne v2, v3, :cond_7

    .line 14
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    move-object/from16 v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v4, p8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v3, 0x320

    if-ne v2, v3, :cond_4

    .line 20
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move/from16 v3, p7

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    if-eqz v12, :cond_5

    .line 21
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v3, "Permissions"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 23
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    :cond_5
    const-string v2, "KLM result sent by intent to "

    if-eqz v11, :cond_6

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 25
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 27
    iget-object v5, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 28
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_6
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 32
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    invoke-static {v2, v10, v15}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateAdminPermissions()V
    .locals 5

    .line 1
    const-string p0, "EnterpriseLicenseService"

    .line 2
    .line 3
    const-string/jumbo v0, "pkgName"

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    const-string v3, "LICENSE"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/content/ContentValues;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v4, "updateAdminPermissions() :"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .line 77
    .line 78
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 79
    .line 80
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string/jumbo v1, "updateAdminPermissions() failed"

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 101
    .line 102
    const-string v0, "Caller is not SYSTEM_PROCESS"

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final declared-synchronized validateLicenses$1()V
    .locals 6

    .line 1
    const-string/jumbo v0, "validateLicenses to "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    const-string v3, "EnterpriseLicenseService"

    .line 13
    .line 14
    const-string v4, "all packages"

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/lang/Thread;

    .line 36
    .line 37
    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    .line 62
    throw v0
.end method
