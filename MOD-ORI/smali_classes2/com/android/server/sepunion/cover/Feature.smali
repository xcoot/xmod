.class public final Lcom/android/server/sepunion/cover/Feature;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sDeviceTypeProperty:Ljava/lang/String; = null

.field public static sHardwareProperty:Ljava/lang/String; = null

.field public static sInstance:Lcom/android/server/sepunion/cover/Feature; = null

.field public static sIsDeviceSupportDetectCover:Z = false

.field public static sIsDeviceSupportQueried:Z = false

.field public static sIsDeviceSupportVerifyCover:Z = false

.field public static sIsNfcAuthSystemFeatureEnabled:Z = false

.field public static sIsSupportClearCameraViewCover:Z = false

.field public static sIsSupportClearCover:Z = false

.field public static sIsSupportClearSideViewCover:Z = false

.field public static sIsSupportFlipCover:Z = false

.field public static sIsSupportGamePackCover:Z = false

.field public static sIsSupportLEDBackCover:Z = false

.field public static sIsSupportMiniSviewWalletCover:Z = false

.field public static sIsSupportNeonCover:Z = false

.field public static sIsSupportNfcLedCover:Z = false

.field public static sIsSupportSecureCover:Z = false

.field public static sIsSystemFeatureQueried:Z = false

.field public static sSupportNfcLedCoverLevel:I


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/sepunion/cover/Feature;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "ro.hardware"

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lcom/android/server/sepunion/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "ro.build.characteristics"

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/android/server/sepunion/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    sget-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v1, "com.sec.feature.cover.flip"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 52
    .line 53
    const-string v1, "com.sec.feature.cover.clearcover"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 60
    .line 61
    const-string v1, "com.sec.feature.nfc_authentication_cover"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 68
    .line 69
    const-string v1, "com.sec.feature.cover.nfcledcover"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 76
    .line 77
    const-string v1, "com.sec.feature.cover.gamepackcover"

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    .line 84
    .line 85
    const-string v1, "com.sec.feature.cover.ledbackcover"

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 92
    .line 93
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    sput v1, Lcom/android/server/sepunion/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 104
    .line 105
    const-string v1, "com.sec.feature.cover.neoncover"

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 112
    .line 113
    const-string v1, "com.sec.feature.cover.securecover"

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    .line 120
    .line 121
    const-string v1, "com.sec.feature.cover.clearsideviewcover"

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 128
    .line 129
    const-string v1, "com.sec.feature.cover.minisviewwalletcover"

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    sput-boolean v1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 136
    .line 137
    const-string v1, "com.sec.feature.cover.clearcameraviewcover"

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    .line 144
    .line 145
    sput-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 146
    .line 147
    :cond_2
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 148
    .line 149
    if-nez p0, :cond_4

    .line 150
    .line 151
    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 152
    .line 153
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_3

    .line 158
    .line 159
    const-string p0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    .line 160
    .line 161
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_3

    .line 166
    .line 167
    move p0, v2

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    const/4 p0, 0x0

    .line 170
    :goto_0
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportVerifyCover:Z

    .line 171
    .line 172
    const-string p0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    .line 173
    .line 174
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    sput-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 179
    .line 180
    sput-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 181
    .line 182
    :cond_4
    sput-object v0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 183
    .line 184
    :cond_5
    sget-object p0, Lcom/android/server/sepunion/cover/Feature;->sInstance:Lcom/android/server/sepunion/cover/Feature;

    .line 185
    .line 186
    return-object p0
.end method
