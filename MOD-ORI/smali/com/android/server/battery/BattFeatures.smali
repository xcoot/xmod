.class public abstract Lcom/android/server/battery/BattFeatures;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_FULL_BATTERY_CYCLE:Z

.field public static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field public static final FEATURE_SUPPORT_ASOC:Z

.field public static final SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

.field public static final SUPPORT_ECO_BATTERY:Z

.field public static final cachedData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.product.vendor.device"

    .line 2
    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "e1"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string/jumbo v1, "e2"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string/jumbo v1, "e3"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move v1, v3

    .line 47
    :goto_1
    const-string/jumbo v4, "r0"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    const-string/jumbo v4, "g0"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    const-string/jumbo v4, "dm1"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    const-string/jumbo v4, "dm2"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v0, v2

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    :goto_2
    move v0, v3

    .line 87
    :goto_3
    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 88
    .line 89
    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    .line 90
    .line 91
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 96
    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    const-string v0, "/sys/class/power_supply/battery/support_functions"

    .line 104
    .line 105
    invoke-static {v0, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    .line 110
    .line 111
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v1, "cachedData = "

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v1, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    .line 120
    .line 121
    const-string v4, "BattFeatures"

    .line 122
    .line 123
    invoke-static {v0, v1, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lcom/android/server/battery/BattFeatures;->cachedData:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    const-string v1, "BFSU"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    const-string/jumbo v0, "isSupport(BFSU) = true"

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_5
    move v2, v3

    .line 145
    :cond_6
    sput-boolean v2, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 146
    .line 147
    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    .line 148
    .line 149
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SUPPORT_ASOC:Z

    .line 154
    .line 155
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v1, "SEC_FLOATING_FEATURE_BATTERY_DISABLE_ECO_BATTERY_FEATURE"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    xor-int/2addr v0, v3

    .line 166
    sput-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 167
    .line 168
    return-void
.end method
