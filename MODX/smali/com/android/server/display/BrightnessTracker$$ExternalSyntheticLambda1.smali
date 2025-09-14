.class public final synthetic Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/BrightnessTracker;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/BrightnessTracker;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 6
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 14
    monitor-exit v1

    .line 15
    goto :goto_2

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_5

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 21
    const-string/jumbo v4, "brightness_events.xml"

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v2, Landroid/util/AtomicFile;

    .line 29
    new-instance v5, Ljava/io/File;

    .line 31
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 34
    move-result-object v6

    .line 35
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-direct {v2, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 41
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 43
    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 58
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 64
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 71
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    move-object v4, v3

    .line 78
    :goto_0
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 81
    const-string v2, "BrightnessTracker"

    .line 83
    const-string v4, "Failed to write change mEvents."

    .line 85
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 91
    const-string v1, "ambient_brightness_stats.xml"

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance v0, Landroid/util/AtomicFile;

    .line 98
    new-instance v2, Ljava/io/File;

    .line 100
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 103
    move-result-object v4

    .line 104
    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 110
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 113
    move-result-object v3

    .line 114
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 116
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 117
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 119
    invoke-virtual {v1, v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->writeToXML(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    :try_start_6
    monitor-exit p0

    .line 123
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 126
    goto :goto_4

    .line 127
    :catch_2
    move-exception p0

    .line 128
    goto :goto_3

    .line 129
    :catchall_1
    move-exception v1

    .line 130
    monitor-exit p0

    .line 131
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 132
    :goto_3
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 135
    const-string v0, "BrightnessTracker"

    .line 137
    const-string v1, "Failed to write ambient brightness stats."

    .line 139
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :goto_4
    return-void

    .line 143
    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 144
    throw p0
.end method
