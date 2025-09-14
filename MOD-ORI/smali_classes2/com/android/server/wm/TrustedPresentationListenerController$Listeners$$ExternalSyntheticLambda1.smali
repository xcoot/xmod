.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 2
    .line 3
    check-cast p1, Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
