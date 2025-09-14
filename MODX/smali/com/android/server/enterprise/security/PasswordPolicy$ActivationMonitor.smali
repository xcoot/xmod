.class public final Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 6
    iget-object v0, p1, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string/jumbo v0, "enterprise_license_policy"

    .line 13
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 19
    iput-object v0, p1, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 21
    :cond_0
    iget-object p1, p1, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 28
    iget-object p1, p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 30
    check-cast p1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public final onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 3
    const-string/jumbo v0, "onUpdateElm - isServiceAvailable : "

    .line 6
    const-string v1, "PasswordPolicy"

    .line 8
    const-string/jumbo v2, "onUpdateElm is called"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 16
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 37
    move-result-object p2

    .line 38
    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 40
    if-ne p2, v3, :cond_0

    .line 42
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 44
    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 48
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 51
    move-result-object p2

    .line 52
    if-eqz p1, :cond_0

    .line 54
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 68
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 71
    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    move-result p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 94
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string/jumbo p1, "onUpdateElm() failed "

    .line 112
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    :goto_0
    return-void
.end method

.method public final onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 3
    const-string/jumbo v0, "onUpdateKlm - isServiceAvailable : "

    .line 6
    const-string v1, "PasswordPolicy"

    .line 8
    const-string/jumbo v2, "onUpdateKlm is called"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 16
    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 37
    move-result-object p2

    .line 38
    sget-object v3, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 40
    if-ne p2, v3, :cond_0

    .line 42
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 44
    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 48
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 51
    move-result-object p2

    .line 52
    if-eqz p1, :cond_0

    .line 54
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 68
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 71
    invoke-virtual {p2, p1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    move-result p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mUserManager:Landroid/os/UserManager;

    .line 94
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string/jumbo p1, "onUpdateKlm() failed "

    .line 112
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    :goto_0
    return-void
.end method
