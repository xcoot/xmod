.class public final Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationThreadHandler:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :try_start_4
    throw p0

    .line 47
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    throw p0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
