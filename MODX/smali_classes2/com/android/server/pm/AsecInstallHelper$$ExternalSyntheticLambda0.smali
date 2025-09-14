.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/core/pm/containerservice/IContainerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/core/pm/containerservice/IContainerService;->doForceGC()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
