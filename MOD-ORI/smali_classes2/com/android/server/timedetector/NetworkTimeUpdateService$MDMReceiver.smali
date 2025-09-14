.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onReceive + intent "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "NetworkTimeUpdateService"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string p2, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x1

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :try_start_0
    const-string v2, "date_time_policy"

    .line 49
    .line 50
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v3}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    :cond_0
    const/4 v2, 0x0

    .line 74
    const v3, 0x10e0109

    .line 75
    .line 76
    .line 77
    const v4, 0x10e0108

    .line 78
    .line 79
    .line 80
    const v5, 0x10e0107

    .line 81
    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    const-wide/16 v8, 0x0

    .line 96
    .line 97
    cmp-long v10, v8, v6

    .line 98
    .line 99
    if-eqz v10, :cond_1

    .line 100
    .line 101
    long-to-int v5, v6

    .line 102
    iput v5, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    iput v5, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 114
    .line 115
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    cmp-long v7, v8, v5

    .line 120
    .line 121
    if-eqz v7, :cond_2

    .line 122
    .line 123
    long-to-int v4, v5

    .line 124
    iput v4, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iput v4, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 136
    .line 137
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    iput v1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 155
    .line 156
    :goto_2
    sput-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 157
    .line 158
    iput v2, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainCounter:I

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    sput-boolean v2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpSetByMDM:Z

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iput v0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNormalPollingIntervalMillis:I

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mShortPollingIntervalMillis:I

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    iput p1, p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mTryAgainTimesMax:I

    .line 192
    .line 193
    :goto_3
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 196
    .line 197
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_5
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_6

    .line 208
    .line 209
    sput-boolean v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mBootCompleted:Z

    .line 210
    .line 211
    :cond_6
    :goto_4
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$MDMReceiver;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    const-string v0, "NTP_PARAMETERS_UPDATED"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
