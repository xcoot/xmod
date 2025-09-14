.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# static fields
.field static final DB_UDFPS_HIDE_AUTH_GUIDE_LAYER_PACKAGES:Ljava/lang/String; = "config_biometric_udfps_flag_hide_auth_guide_layer_packages"


# instance fields
.field public mAuthFailCount:I

.field public final mContext:Landroid/content/Context;

.field public mCustomIconAttribute:Landroid/os/Bundle;

.field public final mHashCode:I

.field mHideAuthenticationGuide:Z

.field public mIsAuthenticated:Z

.field public mIsBiometricPrompt:Z

.field public final mIsKeyguard:Z

.field public mIsRequireTouchBlock:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

.field mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public mSysUiSessionId:I

.field public mSysUiType:I

.field public final mToken:Landroid/os/IBinder;

.field mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUserId:I

    .line 11
    .line 12
    sget-object p1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 21
    .line 22
    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    .line 32
    .line 33
    iput-boolean p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final checkGuideLayerAndTouchBlock(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v3, "config_biometric_udfps_flag_hide_auth_guide_layer_packages"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, ";"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    array-length v3, v0

    .line 37
    if-ge v3, v2, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v3, 0x10700aa

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    if-eqz v0, :cond_4

    .line 53
    .line 54
    array-length v3, v0

    .line 55
    move v4, v1

    .line 56
    :goto_1
    if-ge v4, v3, :cond_4

    .line 57
    .line 58
    aget-object v5, v0, v4

    .line 59
    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    const-string v0, "Biometrics/SemUdfpsSysUiImpl"

    .line 71
    .line 72
    const-string v3, "ClientExtImpl: specific allowlist attr"

    .line 73
    .line 74
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    and-int/lit8 p1, p1, 0x10

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    move v1, v2

    .line 92
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    .line 93
    .line 94
    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 7
    .line 8
    const-wide/16 v1, 0xfa0

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final handleOnAcquired(II)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 6
    .line 7
    const/16 v2, 0xca

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 17
    .line 18
    invoke-direct {v3, v0, v2, p2, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 26
    .line 27
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v3, v2, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/16 v0, 0x2712

    .line 33
    .line 34
    if-ne p2, v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    const/16 v1, 0x9

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0

    .line 48
    throw p0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 50
    .line 51
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 52
    .line 53
    const/16 v3, 0xc9

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setTspModeControl()V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final handleOnAuthenticated(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mAuthFailCount:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsAuthenticated:Z

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v7, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v0, v7

    .line 39
    move-object v1, v6

    .line 40
    move v4, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v7}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setTspModeControl()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final handleOnError(II)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 9
    .line 10
    const/16 v2, 0xcc

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0, v2, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 19
    .line 20
    const/16 v2, 0xcb

    .line 21
    .line 22
    invoke-virtual {p2, v1, v0, v2, p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    sget-boolean p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 36
    .line 37
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 40
    .line 41
    const-string p2, "0"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setHwLightMode(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final handleOnPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x70

    .line 8
    .line 9
    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final handleOnResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x71

    .line 8
    .line 9
    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onDismissed(I[B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onError(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 17
    .line 18
    return-void
.end method

.method public final setTspModeControl()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mAuthFailCount:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mAuthFailCount:I

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-lt v0, v2, :cond_5

    .line 13
    .line 14
    const/16 v3, 0x19

    .line 15
    .line 16
    if-gt v0, v3, :cond_5

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    const/4 v5, 0x5

    .line 24
    if-lt v0, v2, :cond_0

    .line 25
    .line 26
    if-ge v0, v5, :cond_0

    .line 27
    .line 28
    :try_start_0
    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-lt v0, v5, :cond_1

    .line 32
    .line 33
    if-ge v0, v4, :cond_1

    .line 34
    .line 35
    iput v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 v2, 0xf

    .line 39
    .line 40
    if-lt v0, v4, :cond_2

    .line 41
    .line 42
    if-ge v0, v2, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-lt v0, v2, :cond_3

    .line 49
    .line 50
    if-ge v0, v3, :cond_3

    .line 51
    .line 52
    iput v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 56
    .line 57
    if-lt v0, v3, :cond_4

    .line 58
    .line 59
    iput v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    .line 60
    .line 61
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    .line 70
    throw v0

    .line 71
    :cond_5
    :goto_1
    return-void
.end method

.method public final start()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHideAuthenticationGuide:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    :goto_0
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 21
    .line 22
    :cond_1
    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiType:I

    .line 23
    .line 24
    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mCustomIconAttribute:Landroid/os/Bundle;

    .line 25
    .line 26
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsRequireTouchBlock:Z

    .line 27
    .line 28
    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUserId:I

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v12, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    const-wide/16 v8, 0x0

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    move-object v1, v12

    .line 41
    move-object v2, v0

    .line 42
    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v12}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsBiometricPrompt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mSysUiSessionId:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;

    .line 13
    .line 14
    invoke-direct {v2, v0, v1}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mHashCode:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    .line 25
    .line 26
    .line 27
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 36
    .line 37
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 40
    .line 41
    const-string v1, "0"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->setHwLightMode(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mIsKeyguard:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mAuthFailCount:I

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->mUdfpsTspManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 54
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0

    .line 65
    :cond_2
    :goto_0
    return-void
.end method
