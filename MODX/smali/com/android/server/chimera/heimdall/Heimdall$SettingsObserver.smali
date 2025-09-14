.class public final Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 5
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 3
    iget-boolean v0, p1, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 5
    if-nez v0, :cond_a

    .line 7
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_4

    .line 13
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

    .line 15
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 23
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V

    .line 32
    goto/16 :goto_4

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 39
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAnomalyTypeEnable:Landroid/net/Uri;

    .line 41
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    const/4 v0, 0x0

    .line 46
    if-eqz p1, :cond_6

    .line 48
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 50
    iget p2, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 52
    and-int/lit8 v1, p2, 0x2

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    and-int/lit8 p2, p2, 0x4

    .line 60
    if-eqz p2, :cond_3

    .line 62
    :goto_0
    move p2, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move p2, v0

    .line 65
    :goto_1
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAnomalyType(Landroid/content/ContentResolver;)V

    .line 74
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 76
    iget p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 78
    and-int/lit8 p1, p0, 0x2

    .line 80
    if-eqz p1, :cond_4

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    and-int/lit8 p0, p0, 0x4

    .line 85
    if-eqz p0, :cond_5

    .line 87
    :goto_2
    move v0, v2

    .line 88
    :cond_5
    if-eqz p2, :cond_a

    .line 90
    if-nez v0, :cond_a

    .line 92
    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 94
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 96
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 99
    check-cast p0, Landroid/util/ArrayMap;

    .line 101
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 104
    monitor-exit p1

    .line 105
    goto/16 :goto_4

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    throw p0

    .line 110
    :cond_6
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 112
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriSpecUpdate:Landroid/net/Uri;

    .line 114
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 120
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 122
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateSpec(Landroid/content/ContentResolver;)V

    .line 131
    goto :goto_4

    .line 132
    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 134
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriReportHourInterval:Landroid/net/Uri;

    .line 136
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_9

    .line 142
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 144
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 149
    move-result-object p1

    .line 150
    const-string/jumbo p2, "heimdall_report_hour_interval"

    .line 153
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 156
    move-result p1

    .line 157
    if-gtz p1, :cond_8

    .line 159
    goto :goto_4

    .line 160
    :cond_8
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 162
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 164
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 169
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriRandomSampleRate:Landroid/net/Uri;

    .line 171
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_a

    .line 177
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 179
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    move-result-object p1

    .line 185
    const-string/jumbo p2, "heimdall_random_sample_rate"

    .line 188
    const/16 v0, 0xa

    .line 190
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 193
    move-result p1

    .line 194
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    if-ltz p1, :cond_a

    .line 201
    const/16 p0, 0x3e8

    .line 203
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 206
    move-result p0

    .line 207
    sput p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    goto :goto_4

    .line 210
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    const-string p2, "Get command from issueTracker failed! "

    .line 214
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 231
    :cond_a
    :goto_4
    return-void
.end method
