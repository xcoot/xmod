.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    goto :goto_2

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 20
    .line 21
    const-string/jumbo v4, "brightness_events_sec.xml"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 59
    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    move-object v4, v3

    .line 68
    :goto_0
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 72
    .line 73
    const-string v4, "Failed to write change mEvents."

    .line 74
    .line 75
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 80
    .line 81
    const-string v1, "adaptive_brightness_stats_sec.xml"

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 95
    .line 96
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 97
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    .line 101
    .line 102
    :try_start_6
    monitor-exit p0

    .line 103
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :catch_2
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :catch_3
    move-exception p0

    .line 110
    goto :goto_4

    .line 111
    :catchall_1
    move-exception v1

    .line 112
    monitor-exit p0

    .line 113
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 114
    :goto_3
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 115
    .line 116
    const-string v1, "Failed to write ambient brightness stats. Exception"

    .line 117
    .line 118
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :goto_4
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 123
    .line 124
    .line 125
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 126
    .line 127
    const-string v1, "Failed to write ambient brightness stats. IOException"

    .line 128
    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :goto_5
    return-void

    .line 133
    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 134
    throw p0
.end method
