.class public final Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final adapter:Landroid/view/RemoteAnimationAdapter;

.field public final launchCookie:Landroid/os/IBinder;

.field public final remoteTransition:Landroid/window/RemoteTransition;

.field public final synthetic this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;Landroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    .line 9
    .line 10
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->remoteTransition:Landroid/window/RemoteTransition;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance p3, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 p4, 0xbb8

    .line 24
    .line 25
    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
