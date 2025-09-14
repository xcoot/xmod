.class public final Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public final mSurfacePosition:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;Landroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mSurfacePosition:Landroid/graphics/Point;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, "ControlAdapter mCapturedLeash="

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 4
    .line 5
    if-ne v0, p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    iput-object p0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 17
    .line 18
    iput-object p0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 19
    .line 20
    iput-object p0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 21
    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iget-object v0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    and-int/2addr p0, v0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    aget-boolean p0, p0, v0

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    iget-object p0, p1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p1, p1, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-wide v1, -0x5f2c0cf7595acd01L    # -1.5235999260999226E-150

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 7

    .line 1
    iget-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    iget-object p4, p3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 4
    .line 5
    invoke-virtual {p4}, Landroid/view/InsetsSource;->getType()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne p4, v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    iget-boolean p4, p3, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 22
    .line 23
    if-nez p4, :cond_1

    .line 24
    .line 25
    :cond_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object p4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    aget-boolean p4, p4, v0

    .line 37
    .line 38
    if-eqz p4, :cond_2

    .line 39
    .line 40
    iget-object p4, p3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 41
    .line 42
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    iget-object v0, p3, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    filled-new-array {p4, v0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-wide v2, -0x775d23ad38abc68aL    # -4.569726799594E-267

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mSurfacePosition:Landroid/graphics/Point;

    .line 71
    .line 72
    iget p4, p0, Landroid/graphics/Point;->x:I

    .line 73
    .line 74
    int-to-float p4, p4

    .line 75
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 76
    .line 77
    int-to-float p0, p0

    .line 78
    invoke-virtual {p2, p1, p4, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    return-void
.end method
