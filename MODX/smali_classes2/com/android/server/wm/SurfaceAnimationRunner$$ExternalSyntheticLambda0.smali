.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
