.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 2
    .line 3
    const-string/jumbo v0, "onProviderStateChange: Unexpected provider="

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "onProviderStateChange: Unexpected state change for provider, provider="

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "onProviderStateChange: Received notification of a state change while started, provider="

    .line 10
    .line 11
    .line 12
    const-string v3, "Received notification of permanent failure for provider="

    .line 13
    .line 14
    const-string/jumbo v4, "onProviderStateChange: Ignoring provider state change because both providers have not yet completed initialization. providerState="

    .line 15
    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 20
    .line 21
    .line 22
    iget-object v5, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 25
    .line 26
    if-eq v5, v6, :cond_1

    .line 27
    .line 28
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 29
    .line 30
    if-ne v5, v6, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Unknown provider: "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v6

    .line 56
    :try_start_0
    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, "PROVIDERS_INITIALIZING"

    .line 63
    .line 64
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v8, 0x0

    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0, v8}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v6

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    iget v4, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 91
    .line 92
    packed-switch v4, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0, v8}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0, v8}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    monitor-exit v6

    .line 165
    :goto_2
    return-void

    .line 166
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
