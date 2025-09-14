.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$6;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$6;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$6;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$6;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
