.class public final Lcom/android/server/wm/WindowState$MoveAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mDuration:J

.field public final mFrom:Landroid/graphics/Point;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mTo:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;IIII)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Point;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_IMPROVED_MOVED_ANIMATION_FOR_IME:Z

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const v3, 0x10a00c0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    const v3, 0x10a00c1

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const v3, 0x10a0183

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    long-to-float v3, v3

    .line 56
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    mul-float/2addr p1, v3

    .line 63
    float-to-long v3, p1

    .line 64
    iput-wide v3, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 71
    .line 72
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 3

    .line 1
    long-to-float p3, p3

    .line 2
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    invoke-interface {p4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    iget-object p4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 13
    .line 14
    iget v0, p4, Landroid/graphics/Point;->x:I

    .line 15
    .line 16
    int-to-float v1, v0

    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 18
    .line 19
    iget v2, p0, Landroid/graphics/Point;->x:I

    .line 20
    .line 21
    sub-int/2addr v2, v0

    .line 22
    int-to-float v0, v2

    .line 23
    mul-float/2addr v0, p3

    .line 24
    add-float/2addr v0, v1

    .line 25
    iget p4, p4, Landroid/graphics/Point;->y:I

    .line 26
    .line 27
    int-to-float v1, p4

    .line 28
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    sub-int/2addr p0, p4

    .line 31
    int-to-float p0, p0

    .line 32
    mul-float/2addr p0, p3

    .line 33
    add-float/2addr p0, v1

    .line 34
    invoke-virtual {p1, p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "from="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, " to="

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " duration="

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    .line 1
    const-wide v0, 0x10b00000002L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mFrom:Landroid/graphics/Point;

    .line 11
    .line 12
    const-wide v5, 0x10b00000001L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v4, p1, v5, v6}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mTo:Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-static {v4, p1, v0, v1}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 23
    .line 24
    .line 25
    const-wide v0, 0x10300000003L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iget-wide v4, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/WindowState$MoveAnimationSpec;->mDuration:J

    .line 2
    .line 3
    return-wide v0
.end method
