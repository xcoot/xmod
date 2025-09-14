.class public Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;
.super Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityManagerService"


# instance fields
.field private final DEBUG:Z

.field private displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

.field private final mContext:Landroid/content/Context;

.field private final mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPlatform:Ljava/lang/String;

.field private final mSupportAdaptiveSync:Z

.field private final mSupportOutdoor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "eng"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string/jumbo v1, "userdebug"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->DEBUG:Z

    .line 28
    .line 29
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mEnabled:Z

    .line 32
    .line 33
    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mPlatform:Ljava/lang/String;

    .line 36
    .line 37
    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z

    .line 40
    .line 41
    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/Object;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v3, Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 58
    .line 59
    invoke-direct {v3, p1}, Lcom/samsung/android/displayquality/SemDisplayQuality;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo p1, "platform:"

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " outdoor:"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, " adaptiveSync:"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, "SemDisplayQualityManagerService"

    .line 89
    .line 90
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public enhanceDisplayOutdoorVisibilityByLux(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->enhanceOutdoorVisibilityByLux(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception p0

    .line 20
    :try_start_2
    const-string p1, "SemDisplayQualityManagerService"

    .line 21
    .line 22
    const-string v1, "enhanceOutdoorVisibilityByLux"

    .line 23
    .line 24
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    :goto_1
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0
.end method

.method public setAdaptiveSync(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->setAdaptiveSync(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception p0

    .line 20
    :try_start_2
    const-string p1, "SemDisplayQualityManagerService"

    .line 21
    .line 22
    const-string/jumbo v1, "setAdaptiveSync"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_1
    :goto_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method
