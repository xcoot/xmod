.class public final Lcom/samsung/android/knoxguard/service/utils/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "KG.Utils"

.field public static mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const v2, 0x1040712

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v3, 0x104070c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :goto_0
    move-object v7, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const v2, 0x1040711

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v3, 0x104070b

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const-string v2, " ("

    .line 50
    .line 51
    const-string v4, ")\n\n"

    .line 52
    .line 53
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v3, v1

    .line 58
    :cond_1
    const/4 v14, 0x1

    .line 59
    const/4 v1, 0x3

    .line 60
    const/4 v2, 0x1

    .line 61
    const-string v4, ""

    .line 62
    .line 63
    const-string v5, ""

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    const-wide/16 v9, 0x0

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v12, 0x1

    .line 71
    const/4 v13, 0x0

    .line 72
    move-object v0, p0

    .line 73
    invoke-static/range {v0 .. v14}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static buildDefaultRetryLockInfo(Landroid/content/Context;)Lcom/android/internal/widget/RemoteLockInfo;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x1040712

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x104070c

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const v0, 0x1040711

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x104070b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    const-string v1, " (2002)\n\n"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public static checkCaller(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "com.samsung.android.kgclient"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    const-string v0, "caller should be com.samsung.android.kgclient"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static checkCallerAndKgPermission(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "com.samsung.android.knoxguard.STATUS"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkCaller(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 10
    .line 11
    const-string v0, "does not have "

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static getKGPolicyCompany()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "generalInfo"

    .line 2
    .line 3
    const-string v1, "getKGPolicyCompany company "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v4, "getKGPolicyCompany"

    .line 9
    .line 10
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v4, "companyName"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, v2

    .line 49
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :goto_1
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "getKGPolicyCompany Exception: "

    .line 70
    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    const-string v1, "getKGPolicyCompany Exception: Parsing Error!"

    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :goto_2
    return-object v2
.end method

.method public static getPendingIntentForRetryLockAction(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.knoxguard.RETRY_LOCK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "alarm_type"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0xc000000

    .line 14
    .line 15
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static getRlcClientDataCompany(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static getRlcClientDataMessageType(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static getStateAndSetToKGSystemProperty()I
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x5

    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    if-le v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v2

    .line 23
    :cond_1
    :goto_0
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v6, "getStateAndSetToKGSystemProperty - knox.kg.state : "

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v6, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v7, v6, v3

    .line 35
    .line 36
    invoke-static {v5, v7, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    const-string v4, "knox.kg.state"

    .line 40
    .line 41
    aget-object v3, v6, v3

    .line 42
    .line 43
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v3

    .line 48
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v6, "Cannot set SystemProperty(knox.kg.state) - "

    .line 53
    .line 54
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v5, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method public static getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "Cannot get String property("

    .line 19
    .line 20
    const-string v3, ") - "

    .line 21
    .line 22
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getTextFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Stream closing error"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v3, Ljava/io/InputStreamReader;

    .line 7
    .line 8
    new-instance v4, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v1, v2

    .line 34
    goto :goto_6

    .line 35
    :catch_0
    move-object p0, v1

    .line 36
    move-object v1, v2

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-object p0, v1

    .line 39
    move-object v1, v2

    .line 40
    goto :goto_3

    .line 41
    :catch_2
    move-object p0, v1

    .line 42
    move-object v1, v2

    .line 43
    goto :goto_4

    .line 44
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 45
    .line 46
    .line 47
    goto :goto_5

    .line 48
    :catch_3
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_6

    .line 56
    :catch_4
    move-object p0, v1

    .line 57
    goto :goto_1

    .line 58
    :catch_5
    move-object p0, v1

    .line 59
    goto :goto_3

    .line 60
    :catch_6
    move-object p0, v1

    .line 61
    goto :goto_4

    .line 62
    :goto_1
    :try_start_3
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "File reading error"

    .line 65
    .line 66
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_7
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_2
    move-object v1, p0

    .line 81
    goto :goto_5

    .line 82
    :goto_3
    :try_start_5
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "File not found"

    .line 85
    .line 86
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :goto_4
    :try_start_7
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 96
    .line 97
    const-string v3, "Encoding not supported"

    .line 98
    .line 99
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_5
    return-object v1

    .line 109
    :goto_6
    if-eqz v1, :cond_2

    .line 110
    .line 111
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 112
    .line 113
    .line 114
    goto :goto_7

    .line 115
    :catch_8
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_7
    throw p0
.end method

.method public static isChinaDevice()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.csc.country_code"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "China"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public static isEqualOrAbove(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    if-lt v0, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static isOtpBitFusedWithActive()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.boot.kg.bit"

    .line 2
    .line 3
    .line 4
    const-string v1, "FF"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "01"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "isOtpBitFusedWithActive - "

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static isRetryLockAlarmRunning(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.knoxguard.RETRY_LOCK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "alarm_type"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x24000000

    .line 14
    .line 15
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static isSetupWizardFinished(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "device_provisioned"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public static isSingleOtpBitFused()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.boot.kg.bit"

    .line 2
    .line 3
    .line 4
    const-string v1, "FF"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "isSingleOtpBitFused - "

    .line 19
    .line 20
    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public static isSingleOtpBitFusedAndStateIsNotCompleted(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSingleOtpBitFusedAndStateIsNotCompleted(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFused()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSkipSupportContainerSupported()Z
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "call isSkipSupportContainerSupported : "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public static isStateForEnrolledDevice(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isStateForEnrolledDevice(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 2
    const-string v0, "Normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Blink"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Locked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportKGOnCsc()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CscFeature_Knox_SupportKnoxGuard"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    :cond_0
    return v2
.end method

.method public static isSupportKGOnSEC()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static isTabletDevice()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.characteristics"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v1, "tablet"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getKGPolicyCompany()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isTabletDevice()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const v4, 0x1040711

    .line 13
    .line 14
    .line 15
    const-string v5, "Device Services"

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const v3, 0x104070f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v2, 0x1040710

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const v2, 0x1040712

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-eqz v2, :cond_2

    .line 61
    .line 62
    const v3, 0x104070d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const v2, 0x104070e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_0
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_3

    .line 104
    .line 105
    const-string v5, " ("

    .line 106
    .line 107
    const-string v6, ")\n\n"

    .line 108
    .line 109
    invoke-static {v5, v1, v6, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    move-object v3, v1

    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    .line 116
    move-object v7, v2

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v7, v1

    .line 123
    :goto_1
    const/4 v14, 0x1

    .line 124
    const/4 v1, 0x3

    .line 125
    const/4 v2, 0x1

    .line 126
    const-string v4, ""

    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    const/4 v8, 0x0

    .line 132
    const-wide/16 v9, 0x0

    .line 133
    .line 134
    const/4 v11, 0x0

    .line 135
    const/4 v12, 0x1

    .line 136
    const/4 v13, 0x0

    .line 137
    move-object v0, p0

    .line 138
    invoke-static/range {v0 .. v14}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static performLockscreen(Lcom/android/internal/widget/ILockSettings;Lcom/android/internal/widget/RemoteLockInfo;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setUserPresentReceiverEnabled(Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-interface {p0, p2, p1}, Lcom/android/internal/widget/ILockSettings;->setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setLockResult(Z)V

    .line 13
    .line 14
    .line 15
    return p0
.end method

.method public static powerOff(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "powerOff by "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "power"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/os/PowerManager;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "KnoxGuard : system recovery (%d)"

    .line 39
    .line 40
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0, p1, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static setKGSystemProperty()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x5

    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    if-le v2, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    move v2, v3

    .line 22
    :cond_1
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v5, "setKGSystemProperty - knox.kg.state : "

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v6, v5, v2

    .line 35
    .line 36
    invoke-static {v4, v6, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    const-string v3, "knox.kg.state"

    .line 40
    .line 41
    aget-object v2, v5, v2

    .line 42
    .line 43
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "Cannot set SystemProperty(knox.kg.state) - "

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v4, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 15

    const/4 v14, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    .line 1
    invoke-static/range {v0 .. v14}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public static setRemoteLockToLockscreen(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 1

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 3
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v0, p7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p9, p10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->performLockscreen(Lcom/android/internal/widget/ILockSettings;Lcom/android/internal/widget/RemoteLockInfo;Z)Z

    move-result p3

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 8
    sget-boolean p2, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_SUPPORT_KGTA:Z

    if-eqz p2, :cond_1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->startRetryLockAlarm(Landroid/content/Context;Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 11
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "call setRemoteLockToLockscreen Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static setRetryLock(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "lock_settings"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getRemoteLockInfoForRetry()Lcom/android/internal/widget/RemoteLockInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->buildDefaultRetryLockInfo(Landroid/content/Context;)Lcom/android/internal/widget/RemoteLockInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/Utils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 31
    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-interface {p0, v1, v0}, Lcom/android/internal/widget/ILockSettings;->setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setLockResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :goto_1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "call setRetryLock Exception : "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRetryRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public static startRetryLockAlarm(Landroid/content/Context;Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/Utils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "startRetryLockAlarm"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isRetryLockAlarmRunning(Landroid/content/Context;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Retry lock alarm is already running!!! - do nothing."

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRetryRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/32 v4, 0x493e0

    .line 30
    .line 31
    .line 32
    add-long/2addr v2, v4

    .line 33
    const-string p1, "alarm"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/app/AlarmManager;

    .line 40
    .line 41
    invoke-static {p0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getPendingIntentForRetryLockAction(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo p1, "startRetryLockAlarm - alarm scheduled @"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo p0, "startRetryLockAlarm - null pi or am"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method
