.class public final Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mAnimationType:I

.field public mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mLocalBounds:Landroid/graphics/Rect;

.field public final mPosition:Landroid/graphics/Point;

.field public final mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

.field public final mShowBackdrop:Z

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Point;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 28
    .line 29
    iget p2, p3, Landroid/graphics/Point;->x:I

    .line 30
    .line 31
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    iput-boolean p7, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mShowBackdrop:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "container="

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "Target:"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, "  "

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "Target: null"

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
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
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const-wide v2, 0x10b00000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getBackgroundColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mBackdropColor:I

    .line 4
    .line 5
    return p0
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getShowBackground()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mShowBackdrop:Z

    .line 2
    .line 3
    return p0
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
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v2, v0

    .line 14
    return-wide v2
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/wm/RemoteAnimationController;->mIsFinishing:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v1, p0, :cond_1

    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iput-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 19
    .line 20
    :goto_0
    iget-object p0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 21
    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    iget-object p0, p1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p0, p1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    const-string p0, "allAppAnimationsCanceled"

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
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
    const-wide v2, 0x7bc3a48100ad3bd1L    # 1.495494069658914E288

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
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 30
    .line 31
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    int-to-float v0, v0

    .line 37
    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 57
    .line 58
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    add-int/2addr v1, v3

    .line 65
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    sub-int/2addr v1, v4

    .line 70
    int-to-float v1, v1

    .line 71
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    add-int/2addr v0, v2

    .line 76
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    sub-int/2addr v0, v2

    .line 79
    int-to-float v0, v0

    .line 80
    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStartBounds:Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 96
    .line 97
    .line 98
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 99
    .line 100
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 101
    .line 102
    iput p3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 103
    .line 104
    return-void
.end method
