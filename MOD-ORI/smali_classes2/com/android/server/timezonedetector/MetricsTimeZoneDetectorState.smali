.class public final Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final mDeviceTimeZoneId:Ljava/lang/String;

.field public final mDeviceTimeZoneIdOrdinal:I

.field public final mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field public final mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

.field public final mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 18
    .line 19
    return-void
.end method

.method public static create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .locals 9

    .line 1
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v5, p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, v1

    .line 9
    :goto_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 p2, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    move-object v6, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {p3}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-array v3, p2, [Ljava/lang/String;

    .line 29
    .line 30
    aput-object p3, v3, v2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v3, v1

    .line 34
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    filled-new-array {p3}, [I

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance v6, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 43
    .line 44
    invoke-direct {v6, p3, v3}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;-><init>([I[Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    if-nez p4, :cond_3

    .line 48
    .line 49
    move-object v7, v1

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    invoke-virtual {p4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    if-nez p3, :cond_4

    .line 56
    .line 57
    new-instance p2, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 58
    .line 59
    invoke-direct {p2, v1, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;-><init>([I[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v7, p2

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    if-eqz v0, :cond_5

    .line 65
    .line 66
    new-array p2, p2, [Ljava/lang/String;

    .line 67
    .line 68
    aput-object p3, p2, v2

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    move-object p2, v1

    .line 72
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    filled-new-array {p3}, [I

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    new-instance p4, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 81
    .line 82
    invoke-direct {p4, p3, p2}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;-><init>([I[Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v7, p4

    .line 86
    :goto_4
    if-eqz p5, :cond_a

    .line 87
    .line 88
    iget-object p2, p5, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 89
    .line 90
    if-nez p2, :cond_6

    .line 91
    .line 92
    goto :goto_7

    .line 93
    :cond_6
    iget-object p2, p2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 94
    .line 95
    if-nez p2, :cond_7

    .line 96
    .line 97
    new-instance p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 98
    .line 99
    invoke-direct {p0, v1, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;-><init>([I[Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_5
    move-object v1, p0

    .line 103
    goto :goto_7

    .line 104
    :cond_7
    if-eqz v0, :cond_8

    .line 105
    .line 106
    new-array p3, v2, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    move-object v1, p3

    .line 113
    check-cast v1, [Ljava/lang/String;

    .line 114
    .line 115
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    new-array p4, p3, [I

    .line 120
    .line 121
    :goto_6
    if-ge v2, p3, :cond_9

    .line 122
    .line 123
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p5

    .line 127
    invoke-virtual {p0, p5}, Lcom/android/server/timezonedetector/OrdinalGenerator;->ordinal(Ljava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    aput p5, p4, v2

    .line 132
    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    new-instance p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 137
    .line 138
    invoke-direct {p0, p4, v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;-><init>([I[Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_a
    :goto_7
    move-object v8, v1

    .line 143
    new-instance p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 144
    .line 145
    move-object v2, p0

    .line 146
    move-object v3, p1

    .line 147
    invoke-direct/range {v2 .. v8}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;-><init>(Lcom/android/server/timezonedetector/ConfigurationInternal;ILjava/lang/String;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)V

    .line 148
    .line 149
    .line 150
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 58
    .line 59
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 68
    .line 69
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 78
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v5, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 16
    .line 17
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MetricsTimeZoneDetectorState{mConfigurationInternal="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDeviceTimeZoneIdOrdinal="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneIdOrdinal:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mDeviceTimeZoneId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mDeviceTimeZoneId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mLatestManualSuggestion="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mLatestTelephonySuggestion="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestTelephonySuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mLatestGeolocationSuggestion="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->mLatestGeolocationSuggestion:Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
