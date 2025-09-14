.class public final Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# virtual methods
.method public final preProcess(Landroid/service/timezone/TimeZoneProviderEvent;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "event="

    .line 59
    .line 60
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " has unsupported zone("

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ")"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->$r8$clinit:I

    .line 84
    .line 85
    const/4 v0, 0x4

    .line 86
    const-string v1, "LocationTZDetector"

    .line 87
    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_2
    new-instance p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;-><init>(Landroid/service/timezone/TimeZoneProviderStatus;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x3

    .line 107
    invoke-virtual {p0, v0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->build()Landroid/service/timezone/TimeZoneProviderStatus;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v0, v1, p0}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(JLandroid/service/timezone/TimeZoneProviderStatus;)Landroid/service/timezone/TimeZoneProviderEvent;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_3
    :goto_0
    return-object p1
.end method
