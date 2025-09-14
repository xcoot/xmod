.class public abstract Lcom/android/server/devicepolicy/KnoxUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static disableComponent(ILandroid/content/ComponentName;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "package"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v0, "DevicePolicyManager::KnoxUtils"

    .line 13
    .line 14
    :try_start_0
    const-string v6, "KnoxUtils"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    move-object v2, p1

    .line 19
    move v5, p0

    .line 20
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Component not found, not changing enabled setting: "

    .line 29
    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    const-string p1, "This should not happen."

    .line 49
    .line 50
    invoke-static {p1, p0, v0}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public static setKnoxWorkChallengeRequiredComponent(Landroid/content/Context;II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setKnoxWorkChallengeRequiredComponent profileUser = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DevicePolicyManager::KnoxUtils"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v2, "knox_screen_off_timeout"

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 37
    .line 38
    invoke-direct {v2, p1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x4

    .line 54
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "Failed to set default kcm biometric password policy "

    .line 60
    .line 61
    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method
