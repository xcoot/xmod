.class public Lcom/android/server/pm/PersonaServiceHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

.field public static final DTI_PACKAGES:Ljava/util/ArrayList;

.field public static mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public static mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public static mUserManager:Lcom/android/server/pm/UserManagerService;

.field public static final packagesForDual:Ljava/util/Map;

.field public static final packagesForPOP:Ljava/util/Map;

.field public static final packagesForSF:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpSinkService"

    .line 4
    .line 5
    const-string v2, "com.android.bluetooth/com.android.bluetooth.hfpclient.HeadsetClientService"

    .line 6
    .line 7
    const-string v3, "com.android.bluetooth/com.android.bluetooth.hfp.HeadsetService"

    .line 8
    .line 9
    const-string v4, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpService"

    .line 10
    .line 11
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 26
    .line 27
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 28
    .line 29
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$1;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$1;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$2;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$2;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$3;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$3;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    const-string v27, "com.dti.aon"

    .line 55
    .line 56
    const-string v28, "com.tims.rt"

    .line 57
    .line 58
    const-string v1, "com.dti.samsung"

    .line 59
    .line 60
    const-string v2, "com.smg.rt"

    .line 61
    .line 62
    const-string v3, "com.aura.oobe.samsung.gl"

    .line 63
    .line 64
    const-string v4, "com.aura.oobe.samsung"

    .line 65
    .line 66
    const-string v5, "com.dti.telefonica"

    .line 67
    .line 68
    const-string v6, "com.dti.tracfone"

    .line 69
    .line 70
    const-string v7, "com.dti.att"

    .line 71
    .line 72
    const-string v8, "com.aura.oobe.att"

    .line 73
    .line 74
    const-string v9, "com.aura.jet.att"

    .line 75
    .line 76
    const-string v10, "com.LogiaGroup.LogiaDeck"

    .line 77
    .line 78
    const-string v11, "com.dti.attmx"

    .line 79
    .line 80
    const-string v12, "com.dti.millicom"

    .line 81
    .line 82
    const-string v13, "com.dti.cricket"

    .line 83
    .line 84
    const-string v14, "com.dti.globe"

    .line 85
    .line 86
    const-string v15, "com.dti.bouygues"

    .line 87
    .line 88
    const-string v16, "com.dti.uscc"

    .line 89
    .line 90
    const-string v17, "com.dti.amx"

    .line 91
    .line 92
    const-string v18, "com.dti.wiko"

    .line 93
    .line 94
    const-string v19, "com.dti.sliide"

    .line 95
    .line 96
    const-string v20, "com.dti.karbonn"

    .line 97
    .line 98
    const-string v21, "com.dti.intex"

    .line 99
    .line 100
    const-string v22, "com.dti.itel"

    .line 101
    .line 102
    const-string v23, "com.dti.gionee"

    .line 103
    .line 104
    const-string v24, "com.at.tg.rt"

    .line 105
    .line 106
    const-string v25, "com.applovin.array.apphub.samsung"

    .line 107
    .line 108
    const-string v26, "com.dish.wireless.installer"

    .line 109
    .line 110
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    .line 122
    .line 123
    return-void
.end method

.method public static canAddMoreManagedProfiles(IZLjava/util/List;)Z
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v2, v1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/high16 p2, 0x20000

    .line 39
    .line 40
    and-int/2addr p0, p2

    .line 41
    const/4 p2, 0x1

    .line 42
    const-string v3, "PersonaServiceHelper"

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    const-string p0, "creating user owned container"

    .line 47
    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    if-lt v2, p2, :cond_4

    .line 52
    .line 53
    const-string p0, "creation failed when already exists user-owned container"

    .line 54
    .line 55
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_3
    const-string p0, "creating enterprise owned container"

    .line 60
    .line 61
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    if-lt v1, p2, :cond_4

    .line 65
    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    const-string p0, "creation failed when not allowed to remove PO"

    .line 69
    .line 70
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return v0

    .line 74
    :cond_4
    return p2
.end method

.method public static containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-ne p0, p1, :cond_4

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    :cond_4
    return v1
.end method

.method public static getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v2, -0x1

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-wide/16 v2, 0x80

    .line 16
    .line 17
    const/4 v5, -0x1

    .line 18
    move-object v6, p0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "application_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 18
    .line 19
    return-object v0
.end method

.method public static getDualDARType(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    :cond_2
    :goto_0
    const-string p0, "DualDAR Container Type : "

    .line 22
    .line 23
    const-string v1, "PersonaServiceHelper"

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method public static getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "user"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/pm/UserManagerService;

    .line 13
    .line 14
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 17
    .line 18
    return-object v0
.end method

.method public static isCallerApprovedToInstall(II)Z
    .locals 4

    .line 1
    const-string v0, "isCallerApprovedToInstall(uid:"

    .line 2
    .line 3
    const-string v1, " userHandle:"

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "PersonaServiceHelper"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    const-string p0, "caller is system_service process...."

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const-string p0, "Secure folder or BBD has no Knox app install enforcement"

    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return v3

    .line 61
    :cond_1
    if-nez p1, :cond_4

    .line 62
    .line 63
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string p0, "DO is not enabled. no Knox app install enforcement"

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return v3

    .line 75
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v2, 0x0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    const-string p0, "failed to find application policy service"

    .line 83
    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isFromApprovedInstaller(II)Z

    .line 93
    .line 94
    .line 95
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_0
    return v2

    .line 102
    :cond_4
    const-string p0, "Sub user. No Knox app install enforcement"

    .line 103
    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v3
.end method

.method public static isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const-string v0, "isDisallowedAppForKnox - DTI package : "

    .line 2
    .line 3
    const-string v1, "isDisallowedAppForKnox - METADATA_DISALLOWED_MANAGED_PROFILE is defined. "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "PersonaServiceHelper"

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    :try_start_1
    const-string v3, "com.samsung.android.multiuser.disallowed_managed_profile"

    .line 19
    .line 20
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " / "

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return v4

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 53
    .line 54
    .line 55
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    :try_start_2
    const-string/jumbo p0, "persist.sys.knox.leave_all_system_apps_enabled"

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    return v2

    .line 68
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " / installer : "

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    .line 111
    return v4

    .line 112
    :catch_1
    move-exception p0

    .line 113
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    .line 115
    .line 116
    :cond_3
    return v2

    .line 117
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    return v2
.end method

.method public static isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "isRequiredAppForKnox - METADATA_REQUIRED_MANAGED_PROFILE is defined. "

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const-string v3, "com.samsung.android.multiuser.required_managed_profile"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "PersonaServiceHelper"

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " / "

    .line 38
    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return v1
.end method

.method public static shouldBlockBluetooth(Landroid/content/Context;I)Z
    .locals 4

    .line 1
    const-string v0, "PersonaServiceHelper"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "isKnoxBluetoothEnabled(): SecurityException: "

    .line 37
    .line 38
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    move p0, v3

    .line 52
    :goto_0
    const-string p1, "BMS::isKnoxBluetoothEnabled = "

    .line 53
    .line 54
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    return v3

    .line 61
    :cond_3
    :goto_1
    return v1
.end method

.method public static shouldBlockBluetoothHeadset(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo p2, "retrieveServiceLocked(): SecurityException: "

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "PersonaServiceHelper"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    move p0, v0

    .line 61
    :goto_0
    if-eqz p0, :cond_1

    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    return p0
.end method

.method public static shouldBlockUsbHostMode(Landroid/content/Context;)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string v0, "PersonaServiceHelper"

    .line 13
    .line 14
    const-string v2, "Exception in isUsbHostModeEnabledForContainer:"

    .line 15
    .line 16
    const-string v3, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    .line 17
    .line 18
    const-string v4, "isUsbHostModeEnabledForContainer: userId-"

    .line 19
    .line 20
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    invoke-direct {v4, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 57
    .line 58
    invoke-direct {v9, v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, p0, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, ". Ignoring USB device access request..."

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :catch_0
    move-exception v3

    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-exception v3

    .line 105
    move p0, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    move p0, v1

    .line 108
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :goto_2
    if-nez p0, :cond_2

    .line 132
    .line 133
    const/4 p0, 0x1

    .line 134
    return p0

    .line 135
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_2
    return v1
.end method
