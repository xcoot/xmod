.class public final Lcom/android/server/display/ExternalDisplayStatsService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

.field public final mExternalDisplayStates:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

.field public mInteractiveExternalDisplays:I

.field public final mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

.field public mIsExternalDisplayUsedForAudio:Z

.field public mIsInitialized:Z


# direct methods
.method public static -$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x326

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 30
    .line 31
    .line 32
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "ExternalDisplayStatsService"

    .line 37
    .line 38
    const-string/jumbo v1, "logStateAfterAudioSinkChanged countOfExternalDisplays)="

    .line 39
    .line 40
    .line 41
    const-string v2, " mIsExternalDisplayUsedForAudio="

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 48
    .line 49
    invoke-static {p1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ExternalDisplayStatsService"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$1;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$2;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public isExternalDisplayUsedForAudio()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 2
    .line 3
    return p0
.end method

.method public isInteractiveExternalDisplays()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final logExternalDisplayError(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x326

    .line 19
    .line 20
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "ExternalDisplayStatsService"

    .line 28
    .line 29
    const-string/jumbo v2, "logExternalDisplayError countOfExternalDisplays="

    .line 30
    .line 31
    .line 32
    const-string v3, " errorType="

    .line 33
    .line 34
    const-string v4, " mIsExternalDisplayUsedForAudio="

    .line 35
    .line 36
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 41
    .line 42
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method
