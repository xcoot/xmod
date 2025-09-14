.class public final Lcom/android/server/wm/WallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public final mAnimationCanceledRunnable:Ljava/util/function/Consumer;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final mDurationHint:J

.field public mLastAnimationType:I

.field public final mStatusBarTransitionDelay:J

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    .line 11
    .line 12
    return-void
.end method

.method public static startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-boolean v1, v1, v2

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-wide v3, 0x1b4503c010bc336eL    # 2.592953401936043E-177

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object p0, v1

    .line 35
    move-wide p1, v3

    .line 36
    move p3, v5

    .line 37
    move-object p4, v6

    .line 38
    move-object/from16 p5, v0

    .line 39
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-array v0, v2, [Landroid/view/RemoteAnimationTarget;

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    move-object v1, v10

    .line 54
    move-wide v2, p1

    .line 55
    move-wide v4, p3

    .line 56
    move-object/from16 v6, p5

    .line 57
    .line 58
    move-object v7, v9

    .line 59
    move-object/from16 v8, p6

    .line 60
    .line 61
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;-><init>(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    .line 72
    .line 73
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 78
    .line 79
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "token="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "Target:"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, "  "

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p0, "Target: null"

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

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
    move-result-wide v0

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-wide v2, 0x10b00000001L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

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
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-boolean p1, p1, v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide v1, 0x6f72f091fc723117L    # 7.178776786572612E228

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const-wide v2, 0x70d97a8187903d2cL    # 4.05052341319655E235

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 33
    .line 34
    iput p3, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    .line 35
    .line 36
    return-void
.end method
