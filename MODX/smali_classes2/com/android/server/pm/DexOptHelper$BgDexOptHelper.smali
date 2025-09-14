.class public final Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# static fields
.field public static SurfaceTemperatureThreshold:I = 0x0

.field public static abortCount:I = 0x0

.field public static enableTemperaturePolicy:Z = false

.field public static initialSurfaceTemperature:I = 0x0

.field public static policySelector:Z = true


# instance fields
.field public mArtManager:Lcom/android/server/art/ArtManagerLocal;

.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

.field public volatile mObserveStarted:Z


# virtual methods
.method public final isBatteryFullyCharged()Z
    .locals 5

    .line 1
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-boolean v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x50

    .line 19
    .line 20
    if-gt v0, v1, :cond_0

    .line 21
    .line 22
    const-string p0, "BgDexOptHelper"

    .line 23
    .line 24
    const-string v0, "Not fully charged. Optimize only recently used packages"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v1, Landroid/os/BatteryManager;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/os/BatteryManager;

    .line 39
    .line 40
    const/16 v1, 0x64

    .line 41
    .line 42
    if-ge v0, v1, :cond_2

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    cmp-long p0, v0, v3

    .line 53
    .line 54
    if-gtz p0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    :cond_2
    :goto_0
    return v2
.end method

.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "bg-dexopt"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "Bg dexopt finished"

    .line 14
    .line 15
    const-string v0, "BgDexOptHelper"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string p1, "Stop observing thermal"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/android/server/art/ArtManagerLocal;->removeDexoptDoneCallback(Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final reachedToThermalThrottleLevel()Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, -0x1

    .line 22
    :goto_0
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 23
    .line 24
    if-le p0, v0, :cond_1

    .line 25
    .line 26
    const-string v0, "Aborted by thermal: "

    .line 27
    .line 28
    const-string v1, " (initial : "

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " threshold : "

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ")"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v2, v4

    .line 63
    :goto_1
    return v2

    .line 64
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    return v4

    .line 71
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    const/16 p0, 0x190

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/16 p0, 0x177

    .line 85
    .line 86
    :goto_2
    if-lt v0, p0, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    move v2, v4

    .line 90
    :goto_3
    if-eqz v2, :cond_6

    .line 91
    .line 92
    const-string v1, "Current temperature: "

    .line 93
    .line 94
    const-string v4, ", criteria: "

    .line 95
    .line 96
    const-string v5, ", reached: "

    .line 97
    .line 98
    invoke-static {v0, p0, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    return v2
.end method
