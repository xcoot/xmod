.class public final synthetic Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFpsCallbackController;

.field public final synthetic f$1:Landroid/window/ITaskFpsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFpsCallbackController;Landroid/window/ITaskFpsCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskFpsCallbackController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskFpsCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskFpsCallbackController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFpsCallbackController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITaskFpsCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFpsCallbackController;->unregisterListener(Landroid/window/ITaskFpsCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
