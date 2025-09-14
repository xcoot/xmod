.class public final synthetic Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 41
    .line 42
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 43
    .line 44
    const-string v1, "New telephony time suggested. suggestion="

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 48
    .line 49
    .line 50
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit v0

    .line 91
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    .line 94
    throw p0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Landroid/app/time/ExternalTimeSuggestion;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 102
    .line 103
    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 104
    .line 105
    const-string v1, "External time suggestion received: suggestion="

    .line 106
    .line 107
    const-string v2, "External suggestion received. currentUserConfig="

    .line 108
    .line 109
    monitor-enter v0

    .line 110
    :try_start_4
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 111
    .line 112
    const-string/jumbo v4, "time_detector"

    .line 113
    .line 114
    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " suggestion="

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    monitor-exit v0

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    :try_start_5
    iget-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 154
    .line 155
    invoke-virtual {v2, p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .line 172
    .line 173
    monitor-exit v0

    .line 174
    :goto_1
    return-void

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    monitor-exit v0

    .line 177
    throw p0

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
