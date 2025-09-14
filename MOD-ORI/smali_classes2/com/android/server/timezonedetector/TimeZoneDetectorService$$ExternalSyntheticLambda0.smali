.class public final synthetic Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 29
    .line 30
    const-string v1, "New telephony time zone suggested. suggestion="

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v2, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v4, 0x5

    .line 51
    const/4 v5, 0x4

    .line 52
    if-eq v3, v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ne v3, v5, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x3

    .line 66
    const/4 v5, 0x1

    .line 67
    if-ne v3, v5, :cond_2

    .line 68
    .line 69
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v6, 0x2

    .line 76
    if-ne v3, v6, :cond_3

    .line 77
    .line 78
    move v3, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ne v3, v4, :cond_5

    .line 85
    .line 86
    :cond_4
    :goto_0
    move v3, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    .line 89
    .line 90
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :goto_1
    new-instance v4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 95
    .line 96
    invoke-direct {v4, p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v3, v5, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v0, v2, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    monitor-exit v0

    .line 131
    throw p0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
