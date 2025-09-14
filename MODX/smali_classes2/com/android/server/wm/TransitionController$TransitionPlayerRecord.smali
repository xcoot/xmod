.class public final Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

.field public final mPlayer:Landroid/window/ITransitionPlayer;

.field public final mPlayerProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController;Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayerProc:Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p2}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-interface {p2}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mDeath:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string p1, "Unable to set transition player"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method
