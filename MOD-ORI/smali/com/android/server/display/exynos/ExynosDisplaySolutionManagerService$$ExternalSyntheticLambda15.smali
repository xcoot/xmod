.class public final synthetic Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$0:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$0:F

    .line 6
    .line 7
    iget v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$1:F

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda15;->f$2:F

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 12
    .line 13
    const-string/jumbo v6, "setRgbWeightSettingValue(): r="

    .line 14
    .line 15
    .line 16
    iget-object v7, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v7

    .line 19
    :try_start_0
    const-string v8, "ExynosDisplaySolutionManagerServiceImpl"

    .line 20
    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, ", g="

    .line 30
    .line 31
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, ", b="

    .line 38
    .line 39
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-boolean v6, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z

    .line 58
    .line 59
    if-nez v6, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v6, 0x0

    .line 63
    new-array v8, v3, [F

    .line 64
    .line 65
    aput v4, v8, v2

    .line 66
    .line 67
    aput v6, v8, v1

    .line 68
    .line 69
    aput v6, v8, v0

    .line 70
    .line 71
    new-array v4, v3, [F

    .line 72
    .line 73
    aput v6, v4, v2

    .line 74
    .line 75
    aput v5, v4, v1

    .line 76
    .line 77
    aput v6, v4, v0

    .line 78
    .line 79
    new-array v3, v3, [F

    .line 80
    .line 81
    aput v6, v3, v2

    .line 82
    .line 83
    aput v6, v3, v1

    .line 84
    .line 85
    aput p0, v3, v0

    .line 86
    .line 87
    filled-new-array {v8, v4, v3}, [[F

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->toString([[F)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 96
    .line 97
    const-string/jumbo v0, "gamma_matrix"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_0
    monitor-exit v7

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p0
.end method
