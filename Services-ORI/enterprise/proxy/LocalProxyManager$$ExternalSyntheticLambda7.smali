.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$1:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;->f$2:Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 12
    .line 13
    iput-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 16
    .line 17
    const-string/jumbo v1, "setProxyCredentials"

    .line 18
    .line 19
    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    invoke-interface {v2, p0, v1}, Lcom/android/net/IProxyCallback;->onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "LocalProxyManager"

    .line 35
    .line 36
    const-string v1, "Faield to set received credentials"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
