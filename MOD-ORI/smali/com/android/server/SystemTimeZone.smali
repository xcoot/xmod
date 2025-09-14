.class public abstract Lcom/android/server/SystemTimeZone;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTimeZoneDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/LocalLog;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 10
    .line 11
    return-void
.end method

.method public static initializeTimeZoneSettingsIfRequired()V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.timezone"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "initializeTimeZoneSettingsIfRequired():persist.sys.timezone is not valid ("

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "); setting to GMT"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "SystemTimeZone"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const-string v1, "GMT"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {v2, v1, v0}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(ILjava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public static setTimeZoneId(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "Time zone or confidence set:  (new) timeZoneId="

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_6

    .line 9
    .line 10
    if-eqz p1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_6

    .line 17
    .line 18
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    const-class v1, Lcom/android/server/SystemTimeZone;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    const-string/jumbo v3, "persist.sys.timezone"

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v3, v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    :goto_0
    const-string/jumbo v3, "persist.sys.timezone"

    .line 53
    .line 54
    .line 55
    invoke-static {v3, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v3, v4

    .line 59
    :goto_1
    const-string/jumbo v5, "persist.sys.timezone_confidence"

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ltz v5, :cond_2

    .line 67
    .line 68
    const/16 v6, 0x64

    .line 69
    .line 70
    if-gt v5, v6, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v5, v2

    .line 74
    :goto_2
    if-eq v5, p0, :cond_3

    .line 75
    .line 76
    const-string/jumbo v2, "persist.sys.timezone_confidence"

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move v2, v4

    .line 87
    :cond_3
    if-nez v3, :cond_4

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", (new) confidence="

    .line 100
    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p0, ", logInfo="

    .line 108
    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    sget-object p1, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    monitor-exit v1

    .line 125
    return v3

    .line 126
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_6
    const-string/jumbo v0, "setTimeZoneId: Invalid time zone ID. timeZoneId="

    .line 129
    .line 130
    .line 131
    const-string v1, ", confidence="

    .line 132
    .line 133
    const-string v3, ", logInfo="

    .line 134
    .line 135
    invoke-static {p0, v0, p1, v1, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    sget-object p1, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v2
.end method
