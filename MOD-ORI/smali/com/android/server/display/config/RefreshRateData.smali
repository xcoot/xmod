.class public final Lcom/android/server/display/config/RefreshRateData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;


# instance fields
.field public final defaultPeakRefreshRate:I

.field public final defaultRefreshRate:I

.field public final defaultRefreshRateInHbmHdr:I

.field public final defaultRefreshRateInHbmSunlight:I

.field public final lowLightBlockingZoneSupportedModes:Ljava/util/List;

.field public final lowPowerSupportedModes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 11
    .line 12
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method public static loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    move-object p0, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    .line 7
    .line 8
    :goto_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_1
    move v3, v1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    if-eqz p1, :cond_3

    .line 21
    .line 22
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const v1, 0x10e0127

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const v1, 0x10e007c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/16 v1, 0x3c

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :goto_2
    const/4 v1, 0x0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_3
    move v4, v2

    .line 57
    goto :goto_4

    .line 58
    :cond_4
    if-eqz p1, :cond_6

    .line 59
    .line 60
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    const v2, 0x10e0126

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    const v2, 0x10e007a

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    goto :goto_3

    .line 80
    :cond_6
    move v4, v1

    .line 81
    :goto_4
    if-eqz p0, :cond_7

    .line 82
    .line 83
    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    .line 84
    .line 85
    if-eqz v2, :cond_7

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :goto_5
    move v5, v2

    .line 92
    goto :goto_6

    .line 93
    :cond_7
    if-eqz p1, :cond_8

    .line 94
    .line 95
    const v2, 0x10e007d

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move v5, v1

    .line 104
    :goto_6
    if-eqz p0, :cond_9

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    .line 107
    .line 108
    if-eqz v2, :cond_9

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    :goto_7
    move v6, p1

    .line 115
    goto :goto_8

    .line 116
    :cond_9
    if-eqz p1, :cond_a

    .line 117
    .line 118
    const v1, 0x10e007e

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    goto :goto_7

    .line 126
    :cond_a
    move v6, v1

    .line 127
    :goto_8
    if-nez p0, :cond_b

    .line 128
    .line 129
    move-object p1, v0

    .line 130
    goto :goto_9

    .line 131
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 132
    .line 133
    :goto_9
    invoke-static {p1}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    if-nez p0, :cond_c

    .line 138
    .line 139
    move-object p0, v0

    .line 140
    goto :goto_a

    .line 141
    :cond_c
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 142
    .line 143
    :goto_a
    if-nez p0, :cond_d

    .line 144
    .line 145
    goto :goto_b

    .line 146
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 147
    .line 148
    :goto_b
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    new-instance p0, Lcom/android/server/display/config/RefreshRateData;

    .line 153
    .line 154
    move-object v2, p0

    .line 155
    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/config/RefreshRateData;-><init>(IIIILjava/util/List;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RefreshRateData {defaultRefreshRate: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", defaultPeakRefreshRate: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", defaultRefreshRateInHbmHdr: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", defaultRefreshRateInHbmSunlight: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", lowPowerSupportedModes="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", lowLightBlockingZoneSupportedModes="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string/jumbo p0, "} "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
