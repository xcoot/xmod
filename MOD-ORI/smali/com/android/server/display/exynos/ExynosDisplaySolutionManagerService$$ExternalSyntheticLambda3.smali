.class public final synthetic Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    .line 6
    .line 7
    const-string/jumbo v1, "setColorTempSettingValue(): "

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    const-string v3, "ExynosDisplaySolutionManagerServiceImpl"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " -> "

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setColorTempValue(II)V

    .line 41
    .line 42
    .line 43
    monitor-exit v2

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
