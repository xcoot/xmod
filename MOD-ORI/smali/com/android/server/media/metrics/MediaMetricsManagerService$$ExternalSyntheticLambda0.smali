.class public final synthetic Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string/jumbo v1, "media_metrics_mode"

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 19
    .line 20
    const-string/jumbo p1, "player_metrics_app_allowlist"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x3

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eq v3, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 42
    .line 43
    :cond_1
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eq v3, v1, :cond_3

    .line 59
    .line 60
    :cond_2
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 61
    .line 62
    :cond_3
    const-string/jumbo p1, "player_metrics_app_blocklist"

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eq v1, v2, :cond_5

    .line 78
    .line 79
    :cond_4
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 80
    .line 81
    :cond_5
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eq v1, v2, :cond_7

    .line 97
    .line 98
    :cond_6
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 99
    .line 100
    :cond_7
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method
