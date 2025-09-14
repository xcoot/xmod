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

    .line 2
    .line 3
    .line 4
    const-string/jumbo p2, "face_unlock_keyguard_enabled"

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 12
    .line 13
    const-string/jumbo p2, "face_unlock_app_enabled"

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 21
    .line 22
    const-string/jumbo p2, "face_unlock_always_require_confirmation"

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 30
    .line 31
    const-string/jumbo p2, "biometric_keyguard_enabled"

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 39
    .line 40
    const-string/jumbo p2, "biometric_app_enabled"

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 48
    .line 49
    const-string/jumbo p2, "mandatory_biometrics"

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 57
    .line 58
    const-string/jumbo p2, "mandatory_biometrics_requirements_satisfied"

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 66
    .line 67
    const-string/jumbo p2, "sem_biometric_fp_bio_start_enabled"

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 75
    .line 76
    new-instance p2, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 82
    .line 83
    new-instance p2, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 89
    .line 90
    new-instance p2, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 96
    .line 97
    new-instance p2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 103
    .line 104
    new-instance p2, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 110
    .line 111
    new-instance p2, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 117
    .line 118
    new-instance p2, Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    .line 131
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 132
    .line 133
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const-string p3, "android.hardware.fingerprint"

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string p3, "android.hardware.biometrics.face"

    .line 150
    .line 151
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    sget p3, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 156
    .line 157
    const/16 p4, 0x1d

    .line 158
    .line 159
    if-gt p3, p4, :cond_0

    .line 160
    .line 161
    if-eqz p1, :cond_0

    .line 162
    .line 163
    if-nez p2, :cond_0

    .line 164
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

    .line 169
    .line 170
    if-eqz p5, :cond_1

    .line 171
    .line 172
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    .line 173
    .line 174
    invoke-direct {p1, p0, p5}, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p5, p1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    if-eqz p6, :cond_2

    .line 181
    .line 182
    new-instance p1, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    .line 183
    .line 184
    invoke-direct {p1, p0, p6}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p6, p1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 191
    .line 192
    .line 193
    return-void
.end method


# virtual methods
.method public final getEnabledForApps(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    check-cast p0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final getEnabledOnKeyguard(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final notifyEnabledOnKeyguardCallbacks(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    check-cast v3, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v4, "BiometricService"

    .line 40
    .line 41
    :try_start_0
    iget-object v5, v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 42
    .line 43
    invoke-interface {v5, v3, p1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
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

    .line 52
    .line 53
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_2
    const-string v5, "Death while invoking notify"

    .line 58
    .line 59
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 65
    .line 66
    check-cast v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 72
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

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    .line 19
    const-string/jumbo v4, "face_unlock_keyguard_enabled"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast p2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-ne p3, p2, :cond_e

    .line 43
    .line 44
    if-nez p1, :cond_e

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    .line 67
    const-string/jumbo v0, "face_unlock_app_enabled"

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    move v1, v2

    .line 77
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p1, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    .line 104
    const-string/jumbo v0, "face_unlock_always_require_confirmation"

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    move v1, v2

    .line 114
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p1, Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 126
    .line 127
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    iget-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledOnKeyguard:Ljava/util/Map;

    .line 134
    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 140
    .line 141
    const-string/jumbo v4, "biometric_keyguard_enabled"

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    move v1, v2

    .line 151
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast p2, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-ne p3, p2, :cond_e

    .line 165
    .line 166
    if-nez p1, :cond_e

    .line 167
    .line 168
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_7
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mBiometricEnabledForApps:Ljava/util/Map;

    .line 181
    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    .line 188
    const-string/jumbo v0, "biometric_app_enabled"

    .line 189
    .line 190
    .line 191
    invoke-static {p0, v0, v2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_8

    .line 196
    .line 197
    move v1, v2

    .line 198
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p1, Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_9
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_a

    .line 215
    .line 216
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_a
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_b
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_e

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 241
    .line 242
    const-string/jumbo p1, "sem_biometric_fp_bio_start_enabled"

    .line 243
    .line 244
    .line 245
    invoke-static {p0, p1, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_c

    .line 250
    .line 251
    move v1, v2

    .line 252
    :cond_c
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 260
    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    const-string p1, "FP BIO STAR: "

    .line 264
    .line 265
    const-string p2, "BiometricStats"

    .line 266
    .line 267
    invoke-static {p1, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    :cond_d
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 271
    .line 272
    :cond_e
    :goto_0
    return-void
.end method

.method public final updateContentObserver()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_APP_ENABLED:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_KEYGUARD_ENABLED:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_APP_ENABLED:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_ENABLED:Landroid/net/Uri;

    .line 51
    .line 52
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 60
    .line 61
    .line 62
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->BIOMETRIC_FP_BIO_STAR_ENABLED:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    .line 77
    const-string/jumbo v1, "sem_biometric_fp_bio_start_enabled"

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 91
    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    const-string p0, "FP BIO STAR: "

    .line 95
    .line 96
    const-string v1, "BiometricStats"

    .line 97
    .line 98
    invoke-static {p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iput-boolean v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 102
    .line 103
    return-void
.end method

.method public final updateMandatoryBiometricsForAllProfiles(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "mandatory_biometrics"

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    array-length p1, v1

    .line 27
    move v5, v4

    .line 28
    :goto_1
    if-ge v5, p1, :cond_4

    .line 29
    .line 30
    aget v6, v1, v5

    .line 31
    .line 32
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 39
    .line 40
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 45
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

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v7, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    .line 69
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move v3, v4

    .line 77
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast v1, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public final updateMandatoryBiometricsRequirementsForAllProfiles(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUserManager:Landroid/os/UserManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "mandatory_biometrics_requirements_satisfied"

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    array-length p1, v1

    .line 27
    move v5, v3

    .line 28
    :goto_1
    if-ge v5, p1, :cond_4

    .line 29
    .line 30
    aget v6, v1, v5

    .line 31
    .line 32
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 39
    .line 40
    invoke-static {v8, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_1

    .line 45
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

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v7, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    .line 69
    invoke-static {p0, v2, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    move v3, v4

    .line 76
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast v1, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method
