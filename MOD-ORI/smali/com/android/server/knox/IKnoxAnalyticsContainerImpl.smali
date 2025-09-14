.class public final Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mContext:Landroid/content/Context;

.field public final personaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static getDeviceOwnerPackage()Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "device_policy"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "IFKnoxAnalyticsContainer"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    invoke-interface {v0, v3}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string/jumbo v3, "getDeviceOwnerPackage exception -"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    const-string/jumbo v0, "getDeviceOwnerPackage packageName -"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v2
.end method

.method public static getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static hasKnoxPermission(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "IFKnoxAnalyticsContainer"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string/jumbo v2, "enterprise_license_policy"

    .line 5
    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 34
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v3, "hasKnoxPermission error : "

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string p0, "EnterpriseLicenseService is null"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v1
.end method

.method public static isAppSeparationUserId(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "cTp"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "device_policy"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 19
    .line 20
    new-instance v0, Landroid/os/UserHandle;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_0
    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "user"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/UserManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->userManager:Landroid/os/UserManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getVisibleApps(I)Ljava/util/Set;
    .locals 2

    .line 1
    const-string v0, "android.intent.action.MAIN"

    .line 2
    .line 3
    const-string v1, "android.intent.category.LAUNCHER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/high16 v1, 0xc0000

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 41
    .line 42
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object p1
.end method

.method public final isLoggingAllowedForUser(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "ro.organization_owned"

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "true"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isAppSeparationUserId(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getUserManager()Landroid/os/UserManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :cond_0
    if-nez v1, :cond_1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    :goto_0
    return p0
.end method
