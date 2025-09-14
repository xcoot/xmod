.class public final synthetic Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer$2;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer$2;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RootWindowContainer$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eq p0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    iput-object p0, v1, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer$2;->run()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
