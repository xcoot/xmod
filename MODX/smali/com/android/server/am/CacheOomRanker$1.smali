.class public final Lcom/android/server/am/CacheOomRanker$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CacheOomRanker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_9

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 26
    const-string/jumbo v2, "use_oom_re_ranking"

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-string/jumbo v2, "use_oom_re_ranking"

    .line 43
    const-string v3, "activity_manager"

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    move-result v2

    .line 50
    iput-boolean v2, v1, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto/16 :goto_2

    .line 56
    :cond_1
    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string/jumbo v2, "oom_re_ranking_preserve_top_n_apps"

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 80
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    const-string v2, "activity_manager"

    .line 87
    const-string/jumbo v3, "oom_re_ranking_preserve_top_n_apps"

    .line 90
    const/4 v4, 0x3

    .line 91
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 94
    move-result v2

    .line 95
    if-gez v2, :cond_3

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    const-string v5, "Found negative value for preserveTopNApps, setting to default: "

    .line 101
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    const-string v3, "OomAdjuster"

    .line 113
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v4, v2

    .line 118
    :goto_1
    iput v4, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    const-string/jumbo v2, "oom_re_ranking_rss_use_frequent_rss"

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_5

    .line 130
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    const-string v2, "activity_manager"

    .line 137
    const-string/jumbo v3, "oom_re_ranking_rss_use_frequent_rss"

    .line 140
    const/4 v4, 0x1

    .line 141
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 144
    move-result v2

    .line 145
    iput-boolean v2, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_5
    const-string/jumbo v2, "oom_re_ranking_rss_update_rate_ms"

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 158
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    const-string v2, "activity_manager"

    .line 165
    const-string/jumbo v3, "oom_re_ranking_rss_update_rate_ms"

    .line 168
    const-wide/16 v4, 0x2710

    .line 170
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 173
    move-result-wide v2

    .line 174
    iput-wide v2, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_6
    const-string/jumbo v2, "oom_re_ranking_lru_weight"

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_7

    .line 187
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    const-string/jumbo v2, "oom_re_ranking_lru_weight"

    .line 195
    const-string v3, "activity_manager"

    .line 197
    const v4, 0x3eb33333    # 0.35f

    .line 200
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 203
    move-result v2

    .line 204
    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 206
    goto/16 :goto_0

    .line 208
    :cond_7
    const-string/jumbo v2, "oom_re_ranking_uses_weight"

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_8

    .line 217
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    const-string/jumbo v2, "oom_re_ranking_uses_weight"

    .line 225
    const-string v3, "activity_manager"

    .line 227
    const/high16 v4, 0x3f000000    # 0.5f

    .line 229
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 232
    move-result v2

    .line 233
    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_8
    const-string/jumbo v2, "oom_re_ranking_rss_weight"

    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    const-string/jumbo v2, "oom_re_ranking_rss_weight"

    .line 254
    const-string v3, "activity_manager"

    .line 256
    const v4, 0x3e19999a    # 0.15f

    .line 259
    invoke-static {v3, v2, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 262
    move-result v2

    .line 263
    iput v2, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_9
    monitor-exit v0

    .line 268
    return-void

    .line 269
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    throw p0
.end method
