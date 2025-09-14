.class public abstract Lcom/android/server/biometrics/SemBiometricFeature;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_FINGERPRINT_JDM_HAL:Z

.field public static final FEATURE_INTEGRATED_LOCKOUT:Z

.field public static final FEATURE_JDM_HAL:Z

.field public static final FEATURE_LOGGING_MODE:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_DESKTOP_MODE:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

.field public static final FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

.field public static final FP_FEATURE_EARLY_WAKE_UP:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_LOCAL_HBM:Z

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_SIDE:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

.field public static final FP_FEATURE_SUPPORT_FINGERPRINT:Z

.field public static final FP_FEATURE_SUPPORT_LOCAL_HBM_IN_HOUSE:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static final FP_FEATURE_USE_AOSP_HAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 13
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEVICE_MANUFACTURING_TYPE"

    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "jdm"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v0

    .line 30
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 38
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 44
    move-result-object v1

    .line 45
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    .line 47
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 53
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    .line 59
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 65
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 68
    move-result-object v1

    .line 69
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    .line 71
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "aodversion"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v1

    .line 81
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    .line 83
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 86
    move-result-object v1

    .line 87
    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 89
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x1

    .line 94
    const/4 v3, 0x0

    .line 95
    if-lez v1, :cond_0

    .line 97
    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move v1, v3

    .line 100
    :goto_0
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    .line 102
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    .line 104
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 109
    move-result-object v0

    .line 110
    const-string v4, "SEC_FLOATING_FEATURE_BIOAUTH_CONFIG_FINGERPRINT_FEATURES"

    .line 112
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    const-string/jumbo v5, "display"

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v0

    .line 123
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    const-string/jumbo v5, "optical"

    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v0

    .line 140
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 142
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    const-string/jumbo v4, "ultrasonic"

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    move-result v0

    .line 157
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 159
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_SIDE:Z

    .line 161
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 164
    move-result-object v0

    .line 165
    const-string v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    .line 167
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 170
    move-result v0

    .line 171
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_EARLY_WAKE_UP:Z

    .line 173
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 176
    move-result-object v0

    .line 177
    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    .line 179
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 182
    move-result v0

    .line 183
    if-lt v0, v2, :cond_1

    .line 185
    move v0, v2

    .line 186
    goto :goto_1

    .line 187
    :cond_1
    move v0, v3

    .line 188
    :goto_1
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 190
    sput-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 192
    const-string/jumbo v0, "vendor.display.enable_brightness_drm_prop"

    .line 195
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_2

    .line 201
    move v0, v2

    .line 202
    goto :goto_2

    .line 203
    :cond_2
    move v0, v3

    .line 204
    :goto_2
    sput-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    .line 206
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 209
    move-result-object v0

    .line 210
    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_LOCAL_HBM"

    .line 212
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 215
    move-result v0

    .line 216
    if-ne v0, v2, :cond_3

    .line 218
    move v3, v2

    .line 219
    :cond_3
    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_LOCAL_HBM_IN_HOUSE:Z

    .line 221
    sput-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_LOCAL_HBM:Z

    .line 223
    sput-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    .line 225
    return-void
.end method
