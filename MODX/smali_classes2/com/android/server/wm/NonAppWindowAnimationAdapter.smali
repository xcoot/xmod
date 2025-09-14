.class public final Lcom/android/server/wm/NonAppWindowAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final mDurationHint:J

.field public mLastAnimationType:I

.field public final mStatusBarTransitionDelay:J

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 9
    .line 10
    return-void
.end method

.method public static shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method


# virtual methods
.method public final createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    new-instance v2, Landroid/graphics/Rect;

    .line 8
    .line 9
    move-object v6, v2

    .line 10
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastSurfacePosition()Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    const/16 v17, 0x0

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    .line 34
    .line 35
    .line 36
    move-result v18

    .line 37
    const/4 v2, -0x1

    .line 38
    const/4 v3, -0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v13, 0x1

    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v15, 0x0

    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    move-object/from16 v19, v1

    .line 48
    .line 49
    move-object v1, v4

    .line 50
    move-object/from16 v20, v4

    .line 51
    .line 52
    move-object/from16 v4, v19

    .line 53
    .line 54
    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v1, v20

    .line 58
    .line 59
    iput-object v1, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 60
    .line 61
    return-object v1
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "windowContainer="

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

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
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

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
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

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
    iget-wide v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

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
    iget-wide v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 6

    .line 1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    aget-boolean p0, p0, p1

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide v1, 0x9cc0e6658de3b4bL    # 1.7819823039099971E-261

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
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 6

    .line 1
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-boolean p2, p2, v0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const-wide v1, 0x3494e5570cf63370L    # 2.1304975875146695E-55

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
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 24
    .line 25
    iput p3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    .line 26
    .line 27
    return-void
.end method
