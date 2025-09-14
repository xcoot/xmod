.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$3:Landroid/service/games/GameSessionViewHostConfiguration;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 6
    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    .line 10
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    .line 12
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 14
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 3
    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/app/GameSessionRecord;

    .line 7
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$3:Landroid/service/games/GameSessionViewHostConfiguration;

    .line 9
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 11
    check-cast p1, Landroid/service/games/IGameSessionService;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v4, Landroid/service/games/CreateGameSessionRequest;

    .line 18
    iget-object v2, v2, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v4, v1, v2}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    .line 27
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    .line 29
    invoke-interface {p1, v0, v4, v3, p0}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 32
    return-void
.end method
