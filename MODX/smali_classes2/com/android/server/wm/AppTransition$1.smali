.class public final Lcom/android/server/wm/AppTransition$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field public final synthetic val$callback:Landroid/os/IRemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppTransition$1;->val$callback:Landroid/os/IRemoteCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/AppTransition;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda3;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/AppTransition$1;->val$callback:Landroid/os/IRemoteCallback;

    .line 12
    .line 13
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
