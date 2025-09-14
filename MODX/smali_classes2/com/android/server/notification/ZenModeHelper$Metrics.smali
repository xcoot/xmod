.class public final Lcom/android/server/notification/ZenModeHelper$Metrics;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mModeLogTimeMs:J

.field public mNumZenRules:I

.field public mPreviousZenMode:I

.field public mPreviousZenType:I

.field public mRuleCountLogTime:J

.field public mTypeLogTimeMs:J

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final emit()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 4
    .line 5
    sget v1, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v2, 0x1499700

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 22
    .line 23
    sub-long v4, v2, v4

    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 28
    .line 29
    iget v7, v6, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 30
    .line 31
    const/4 v8, -0x1

    .line 32
    const-wide/32 v9, 0xea60

    .line 33
    .line 34
    .line 35
    if-ne v0, v7, :cond_0

    .line 36
    .line 37
    cmp-long v7, v4, v9

    .line 38
    .line 39
    if-lez v7, :cond_2

    .line 40
    .line 41
    :cond_0
    if-eq v0, v8, :cond_1

    .line 42
    .line 43
    iget-object v0, v6, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v11, "dnd_mode_"

    .line 48
    .line 49
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v11, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 53
    .line 54
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    long-to-int v4, v4

    .line 62
    invoke-static {v0, v7, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget v0, v6, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 66
    .line 67
    iput v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenMode:I

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mModeLogTimeMs:J

    .line 70
    .line 71
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 76
    .line 77
    sub-long/2addr v2, v4

    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 86
    .line 87
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 94
    .line 95
    if-ne v5, v4, :cond_3

    .line 96
    .line 97
    cmp-long v6, v2, v9

    .line 98
    .line 99
    if-lez v6, :cond_5

    .line 100
    .line 101
    :cond_3
    if-eq v5, v8, :cond_4

    .line 102
    .line 103
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 104
    .line 105
    iget-object v6, v6, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    const-string v7, "dnd_rule_count"

    .line 108
    .line 109
    sub-int v5, v4, v5

    .line 110
    .line 111
    invoke-static {v6, v7, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    :goto_0
    iput v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mNumZenRules:I

    .line 118
    .line 119
    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mRuleCountLogTime:J

    .line 120
    .line 121
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const-string v0, "dnd_type_"

    .line 123
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    iget-wide v4, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 129
    .line 130
    sub-long v4, v2, v4

    .line 131
    .line 132
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 133
    .line 134
    iget-object v6, v6, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 135
    .line 136
    monitor-enter v6

    .line 137
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 138
    .line 139
    iget v11, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 140
    .line 141
    if-eqz v11, :cond_6

    .line 142
    .line 143
    iget-object v11, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 144
    .line 145
    iget-object v11, v11, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 146
    .line 147
    if-eqz v11, :cond_7

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto :goto_2

    .line 153
    :cond_6
    const/4 v1, 0x0

    .line 154
    :cond_7
    :goto_1
    iget v11, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 155
    .line 156
    if-ne v1, v11, :cond_8

    .line 157
    .line 158
    cmp-long v9, v4, v9

    .line 159
    .line 160
    if-lez v9, :cond_a

    .line 161
    .line 162
    :cond_8
    if-eq v11, v8, :cond_9

    .line 163
    .line 164
    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 172
    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    long-to-int v4, v4

    .line 181
    invoke-static {v7, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    :cond_9
    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mTypeLogTimeMs:J

    .line 185
    .line 186
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper$Metrics;->mPreviousZenType:I

    .line 187
    .line 188
    :cond_a
    monitor-exit v6

    .line 189
    return-void

    .line 190
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    throw p0

    .line 192
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    throw p0
.end method

.method public final onConfigChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onZenModeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
