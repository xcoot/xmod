.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl([Landroid/view/InputWindowHandle;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
