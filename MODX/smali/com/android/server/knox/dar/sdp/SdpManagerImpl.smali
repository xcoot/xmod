.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/pm/UserInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, -0x2710

    .line 7
    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    return-void
.end method

.method public static checkSystemPermission()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "SdpManagerImpl"

    .line 12
    const-string v1, "Require system permission."

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Ljava/lang/SecurityException;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "Security Exception Occurred in pid["

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "] with uid["

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "]"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method public static isSupportedDevice()V
    .locals 2

    .line 1
    const-string v0, "SdpManagerImpl"

    .line 3
    const-string v1, "SDP not supported"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public static native nativeOnBoot(II)I
.end method

.method public static native nativeOnChangePassword(I[B[B)I
.end method

.method public static native nativeOnDeviceLocked(II)I
.end method

.method public static native nativeOnDeviceUnlocked(I[B)I
.end method

.method public static native nativeOnMigration(IIII[B)I
.end method

.method public static native nativeOnUserAdded(II[B)I
.end method

.method public static native nativeOnUserRemoved(II)I
.end method


# virtual methods
.method public getResetToken(I)[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide p0

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw v0
.end method

.method public getResetTokenSafe(I)[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public getTokenHandle(I)J
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide p0

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw v0
.end method

.method public initializeMasterKeyIfRequired([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public lockSdpIfRequired(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public onCredentialChanged(II)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public onDeviceLocked(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public onDeviceUnlocked(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public saveMasterKeyIfUnsecured([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public saveResetTokenSafe([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    return-void
.end method

.method public unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public unlockSdpOnCredentialVerified([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method

.method public welcomeNewUser(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    .line 4
    return-void
.end method
