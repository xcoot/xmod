.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl$6;
.super Landroid/service/games/IGameServiceController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 3
    invoke-direct {p0}, Landroid/service/games/IGameServiceController$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final createGameSession(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/games/IGameServiceController$Stub;->createGameSession_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 6
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    .line 10
    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$6;I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method
