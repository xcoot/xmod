.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;
.super Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mServices:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/hardware/display/IExynosDisplaySolutionManager$Stub;-><init>()V

    .line 4
    const-string/jumbo v0, "eng"

    .line 7
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    filled-new-array {v0, v1}, [I

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    .line 32
    :goto_0
    const/4 v2, 0x2

    .line 33
    if-ge v0, v2, :cond_6

    .line 35
    aget v2, v1, v0

    .line 37
    const-string v3, "/sys/class/dqe/dqe"

    .line 39
    if-nez v2, :cond_0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {v4, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    :goto_1
    if-nez v3, :cond_1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    const-string v4, "/vendor/etc/dqe/"

    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v3, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_3

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_4

    .line 81
    :goto_2
    const-string v3, "/vendor/etc/dqe"

    .line 83
    :cond_4
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_5

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    .line 92
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 94
    invoke-direct {v4, p1, v2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;-><init>(Landroid/content/Context;I)V

    .line 97
    check-cast v3, Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    return-void
.end method


# virtual methods
.method public final applyToService(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mServices:Ljava/util/List;

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 24
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getColorEnhancementMode()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "unsupported"

    .line 4
    return-object p0
.end method

.method public final setColorEnhancementSettingValue(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setColorTempSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setColorTempSettingValue(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;-><init>(II)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 9
    return-void
.end method

.method public final setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 9
    return-void
.end method

.method public final setEdgeSharpnessSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setEdgeSharpnessSettingValue(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setEyeTempSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setEyeTempSettingValue(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/16 v1, 0x9

    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 11
    return-void
.end method

.method public final setHsvGainSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setHsvGainSettingValue(III)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;-><init>(IIII)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setRgbGainSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/16 v1, 0xa

    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 11
    return-void
.end method

.method public final setRgbGainSettingValue(III)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda11;-><init>(IIII)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setRgbWeightSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method

.method public final setRgbWeightSettingValue(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;-><init>(FFF)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 9
    return-void
.end method

.method public final setSkinColorSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 11
    return-void
.end method

.method public final setWhitePointColorSettingOn(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->applyToService(Ljava/util/function/Consumer;)V

    .line 10
    return-void
.end method
