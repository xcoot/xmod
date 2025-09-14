.class public interface abstract Lcom/android/server/wm/AnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 2

    .line 1
    const-wide v0, 0x10b00000003L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-interface {p0, p1}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public abstract dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getDurationHint()J
.end method

.method public getShowBackground()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getShowWallpaper()Z
.end method

.method public abstract getStatusBarTransitionsStartTime()J
.end method

.method public abstract onAnimationCancelled(Landroid/view/SurfaceControl;)V
.end method

.method public shouldDeferAnimationFinish()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
.end method
