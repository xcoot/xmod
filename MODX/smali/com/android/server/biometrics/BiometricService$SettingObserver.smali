.class public Lcom/android/server/biometrics/BiometricService$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

.field public final BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

.field public final FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

.field public final FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

.field public final MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

.field public final mBiometricEnabledForApps:Ljava/util/Map;

.field public final mBiometricEnabledOnKeyguard:Ljava/util/Map;

.field public final mCallbacks:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFaceAlwaysRequireConfirmation:Ljava/util/Map;

.field public final mFaceEnrolledForUser:Ljava/util/Map;

.field public final mFingerprintEnrolledForUser:Ljava/util/Map;

.field public final mMandatoryBiometricsEnabled:Ljava/util/Map;

.field public final mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

.field public final mUseLegacyFaceOnlySettings:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string/jumbo p2, "face_unlock_keyguard_enabled"

    .line 7
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 13
    const-string/jumbo p2, "face_unlock_app_enabled"

    .line 16
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 22
    const-string/jumbo p2, "face_unlock_always_require_confirmation"

    .line 25
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 31
    const-string/jumbo p2, "biometric_keyguard_enabled"

    .line 34
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 40
    const-string/jumbo p2, "biometric_app_enabled"

    .line 43
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 49
    const-string/jumbo p2, "mandatory_biometrics"

    .line 52
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 58
    const-string/jumbo p2, "mandatory_biometrics_requirements_satisfied"

    .line 61
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 67
    const-string/jumbo p2, "sem_biometric_fp_bio_start_enabled"

    .line 70
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 76
    new-instance p2, Ljava/util/HashMap;

    .line 78
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 83
    new-instance p2, Ljava/util/HashMap;

    .line 85
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 90
    new-instance p2, Ljava/util/HashMap;

    .line 92
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 97
    new-instance p2, Ljava/util/HashMap;

    .line 99
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 104
    new-instance p2, Ljava/util/HashMap;

    .line 106
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 111
    new-instance p2, Ljava/util/HashMap;

    .line 113
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 118
    new-instance p2, Ljava/util/HashMap;

    .line 120
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    move-result-object p2

    .line 129
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 131
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 133
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 138
    move-result-object p2

    .line 139
    const-string p3, "android.hardware.fingerprint"

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 144
    move-result p2

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 148
    move-result-object p1

    .line 149
    const-string p3, "android.hardware.biometrics.face"

    .line 151
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 154
    move-result p1

    .line 155
    sget p3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 157
    const/16 p4, 0x1d

    .line 159
    if-gt p3, p4, :cond_0

    .line 161
    if-eqz p1, :cond_0

    .line 163
    if-nez p2, :cond_0

    .line 165
    const/4 p1, 0x1

    .line 166
    goto :goto_0

    .line 167
    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 170
    if-eqz p5, :cond_1

    .line 172
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    .line 174
    invoke-direct {p1, p0, p5}, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 177
    invoke-virtual {p5, p1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 180
    :cond_1
    if-eqz p6, :cond_2

    .line 182
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    .line 184
    invoke-direct {p1, p0, p6}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V

    .line 187
    invoke-virtual {p6, p1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 193
    return-void
.end method


# virtual methods
.method public final getEnabledForApps(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 28
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    check-cast p0, Ljava/util/HashMap;

    .line 41
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final getEnabledOnKeyguard(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 28
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    check-cast p0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final notifyEnabledOnKeyguardCallbacks(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v2

    .line 8
    if-ge v1, v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    .line 16
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    check-cast v3, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v4, "BiometricService"

    .line 41
    :try_start_0
    iget-object v5, v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 43
    invoke-interface {v5, v3, p1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception v2

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception v3

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    const-string v3, "Failed to invoke onChanged"

    .line 53
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    goto :goto_3

    .line 57
    :goto_2
    const-string v5, "Death while invoking notify"

    .line 59
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 64
    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 66
    check-cast v3, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 19
    const-string/jumbo v4, "face_unlock_keyguard_enabled"

    .line 22
    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    move v1, v2

    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v1

    .line 33
    check-cast p2, Ljava/util/HashMap;

    .line 35
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 41
    move-result p2

    .line 42
    if-ne p3, p2, :cond_e

    .line 44
    if-nez p1, :cond_e

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 49
    goto/16 :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 53
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 59
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p2

    .line 65
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    const-string/jumbo v0, "face_unlock_app_enabled"

    .line 70
    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 76
    move v1, v2

    .line 77
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object p0

    .line 81
    check-cast p1, Ljava/util/HashMap;

    .line 83
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    goto/16 :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 90
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 96
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p2

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    const-string/jumbo v0, "face_unlock_always_require_confirmation"

    .line 107
    invoke-static {p0, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_4

    .line 113
    move v1, v2

    .line 114
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    move-result-object p0

    .line 118
    check-cast p1, Ljava/util/HashMap;

    .line 120
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto/16 :goto_0

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 127
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 133
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v0

    .line 139
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 141
    const-string/jumbo v4, "biometric_keyguard_enabled"

    .line 144
    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_6

    .line 150
    move v1, v2

    .line 151
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    move-result-object v1

    .line 155
    check-cast p2, Ljava/util/HashMap;

    .line 157
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 163
    move-result p2

    .line 164
    if-ne p3, p2, :cond_e

    .line 166
    if-nez p1, :cond_e

    .line 168
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 171
    goto :goto_0

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 174
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_9

    .line 180
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object p2

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 188
    const-string/jumbo v0, "biometric_app_enabled"

    .line 191
    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_8

    .line 197
    move v1, v2

    .line 198
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    move-result-object p0

    .line 202
    check-cast p1, Ljava/util/HashMap;

    .line 204
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    goto :goto_0

    .line 208
    :cond_9
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 210
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_a

    .line 216
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    .line 219
    goto :goto_0

    .line 220
    :cond_a
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 222
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_b

    .line 228
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    .line 231
    goto :goto_0

    .line 232
    :cond_b
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 234
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_e

    .line 240
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 242
    const-string/jumbo p1, "sem_biometric_fp_bio_start_enabled"

    .line 245
    invoke-static {p0, p1, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_c

    .line 251
    move v1, v2

    .line 252
    :cond_c
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 261
    if-eqz p1, :cond_d

    .line 263
    const-string p1, "FP BIO STAR: "

    .line 265
    const-string p2, "BiometricStats"

    .line 267
    invoke-static {p1, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 272
    :cond_e
    :goto_0
    return-void
.end method

.method public final updateContentObserver()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 14
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 16
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 19
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 23
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 29
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 31
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 38
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 45
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 52
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 59
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 68
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 74
    move-result-object v0

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    const-string/jumbo v1, "sem_biometric_fp_bio_start_enabled"

    .line 80
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 86
    const/4 v2, 0x1

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 92
    if-eqz p0, :cond_2

    .line 94
    const-string p0, "FP BIO STAR: "

    .line 96
    const-string v1, "BiometricStats"

    .line 98
    invoke-static {p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    :cond_2
    iput-boolean v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 103
    return-void
.end method

.method public final updateMandatoryBiometricsForAllProfiles(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 15
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "mandatory_biometrics"

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 26
    array-length p1, v1

    .line 27
    move v5, v4

    .line 28
    :goto_1
    if-ge v5, p1, :cond_4

    .line 30
    aget v6, v1, v5

    .line 32
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v6

    .line 38
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 46
    move v8, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v8, v4

    .line 49
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v8

    .line 53
    check-cast v7, Ljava/util/HashMap;

    .line 55
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move v3, v4

    .line 77
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object p0

    .line 81
    check-cast v1, Ljava/util/HashMap;

    .line 83
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    return-void
.end method

.method public final updateMandatoryBiometricsRequirementsForAllProfiles(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 15
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "mandatory_biometrics_requirements_satisfied"

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v1, :cond_2

    .line 26
    array-length p1, v1

    .line 27
    move v5, v3

    .line 28
    :goto_1
    if-ge v5, p1, :cond_4

    .line 30
    aget v6, v1, v5

    .line 32
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v6

    .line 38
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 46
    move v8, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v8, v3

    .line 49
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v8

    .line 53
    check-cast v7, Ljava/util/HashMap;

    .line 55
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 75
    move v3, v4

    .line 76
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    move-result-object p0

    .line 80
    check-cast v1, Ljava/util/HashMap;

    .line 82
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_4
    return-void
.end method
