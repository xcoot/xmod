.class public interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public asWindowAnimationSpec()Lcom/android/server/wm/WindowAnimationSpec;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getDuration()J
.end method

.method public getFraction(F)F
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-float p0, v0

    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v0, p0, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    div-float/2addr p1, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method public getShowBackground()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
