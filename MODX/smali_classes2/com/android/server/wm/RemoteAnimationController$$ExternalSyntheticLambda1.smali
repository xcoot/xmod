.class public final synthetic Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 2
    .line 3
    const-string/jumbo v0, "timeoutRunnable"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
