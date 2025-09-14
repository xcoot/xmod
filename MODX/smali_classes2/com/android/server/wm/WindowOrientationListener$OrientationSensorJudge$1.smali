.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final mCallbackId:I

.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

.field public final synthetic val$reportedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final finalizeRotationIfFresh(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "An outdated callback received ["

    .line 25
    .line 26
    const-string p1, " vs. "

    .line 27
    .line 28
    const-string v1, "]. Ignoring it."

    .line 29
    .line 30
    invoke-static {v0, v2, p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "WindowOrientationListener"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final onFailure(I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
