.class public final Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$endTime:J

.field public final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    .line 4
    .line 5
    const/16 p1, 0x2ee0

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const-string v0, "ShutdownThread"

    .line 2
    .line 3
    const-string v1, "!@Start shutdown radios"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/util/TimingsTraceLog;

    .line 9
    .line 10
    const-string v2, "ShutdownTiming"

    .line 11
    .line 12
    const-wide/32 v3, 0x80000

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v5, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v5, v4

    .line 44
    :goto_1
    if-nez v5, :cond_2

    .line 45
    .line 46
    const-string v6, "Turning off cellular radios..."

    .line 47
    .line 48
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    .line 57
    .line 58
    .line 59
    :cond_2
    const-string v6, "Waiting for Radio..."

    .line 60
    .line 61
    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    :goto_2
    sub-long/2addr v6, v8

    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    cmp-long v8, v6, v8

    .line 74
    .line 75
    if-lez v8, :cond_6

    .line 76
    .line 77
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 78
    .line 79
    if-eqz v8, :cond_3

    .line 80
    .line 81
    iget v8, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    .line 82
    .line 83
    int-to-long v9, v8

    .line 84
    sub-long/2addr v9, v6

    .line 85
    long-to-double v6, v9

    .line 86
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 87
    .line 88
    mul-double/2addr v6, v9

    .line 89
    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    .line 90
    .line 91
    mul-double/2addr v6, v9

    .line 92
    int-to-double v8, v8

    .line 93
    div-double/2addr v6, v8

    .line 94
    double-to-int v6, v6

    .line 95
    add-int/lit8 v6, v6, 0x6

    .line 96
    .line 97
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-virtual {v7, v6, v8}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    if-nez v5, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    xor-int/2addr v5, v4

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    const-string v6, "!@Radio turned off."

    .line 113
    .line 114
    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v7, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v6

    .line 134
    const-string v8, "ShutdownRadio"

    .line 135
    .line 136
    invoke-virtual {v1, v8, v6, v7}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    :cond_4
    if-eqz v5, :cond_5

    .line 140
    .line 141
    const-string v1, "Radio shutdown complete."

    .line 142
    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    .line 147
    .line 148
    aput-boolean v4, p0, v3

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    const-string v6, "!@before sleep"

    .line 152
    .line 153
    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v6, 0x64

    .line 157
    .line 158
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 159
    .line 160
    .line 161
    const-string v6, "!@after sleep"

    .line 162
    .line 163
    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v7, "!@[Phone off retry:"

    .line 169
    .line 170
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v7

    .line 177
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v7, "] : "

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    .line 186
    .line 187
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v7, " radio="

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    .line 206
    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_6
    :goto_3
    return-void
.end method
