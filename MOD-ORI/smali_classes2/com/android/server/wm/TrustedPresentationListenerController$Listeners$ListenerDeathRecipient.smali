.class public final Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstances:I

.field public final mListenerBinder:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 10
    .line 11
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
