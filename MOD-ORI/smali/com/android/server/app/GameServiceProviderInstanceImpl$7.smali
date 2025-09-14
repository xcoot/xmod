.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$7;
.super Landroid/service/games/IGameSessionController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/games/IGameSessionController$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final restartGame(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/games/IGameSessionController$Stub;->restartGame_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/games/IGameSessionController$Stub;->takeScreenshot_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
