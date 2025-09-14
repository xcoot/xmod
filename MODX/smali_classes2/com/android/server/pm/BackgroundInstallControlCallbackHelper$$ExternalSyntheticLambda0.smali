.class public final synthetic Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
