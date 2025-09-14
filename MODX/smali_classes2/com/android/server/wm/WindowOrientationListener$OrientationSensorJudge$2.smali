.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v0, -0x1

    .line 19
    if-lt v1, v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method
