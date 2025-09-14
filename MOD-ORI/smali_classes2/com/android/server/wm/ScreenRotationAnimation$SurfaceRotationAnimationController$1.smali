.class public final Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field public final synthetic val$colorTransitionMs:I

.field public final synthetic val$duration:J

.field public final synthetic val$endColor:I

.field public final synthetic val$rgbTmpFloat:[F

.field public final synthetic val$startColor:I

.field public final synthetic val$va:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    .line 15
    .line 16
    iput p8, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    .line 1
    long-to-float p3, p3

    .line 2
    invoke-interface {p0, p3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getFraction(F)F

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p4, p3, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-static {p3}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Landroid/graphics/Color;->red()F

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    .line 40
    .line 41
    aput p4, p0, v0

    .line 42
    .line 43
    const/4 p4, 0x1

    .line 44
    invoke-virtual {p3}, Landroid/graphics/Color;->green()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    aput v0, p0, p4

    .line 49
    .line 50
    const/4 p4, 0x2

    .line 51
    invoke-virtual {p3}, Landroid/graphics/Color;->blue()F

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    aput p3, p0, p4

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "startLuma="

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 11
    .line 12
    iget v1, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " endLuma="

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " durationMs="

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    .line 35
    .line 36
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 1
    const-wide v0, 0x10b00000004L

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
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 13
    .line 14
    iget v3, v3, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 15
    .line 16
    const-wide v4, 0x10200000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 25
    .line 26
    iget v2, v2, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 27
    .line 28
    const-wide v3, 0x10200000002L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 34
    .line 35
    .line 36
    const-wide v2, 0x10300000003L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    .line 42
    .line 43
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    .line 2
    .line 3
    return-wide v0
.end method
