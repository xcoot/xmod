.class public final Lcom/android/server/wm/DisplayPolicy$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

.field public final mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

.field public final mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;II)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;II)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$2;II)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionCancelled:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionFinished:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAppTransitionPendingLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$2;->mAppTransitionPending:Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onAppTransitionStartingLocked(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$2;J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method
