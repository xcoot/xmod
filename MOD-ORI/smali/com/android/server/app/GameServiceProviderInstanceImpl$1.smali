.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/games/IGameService;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/service/games/IGameService;->connected(Landroid/service/games/IGameServiceController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "GameServiceProviderInstance"

    .line 13
    .line 14
    const-string v0, "Failed to send connected event"

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
