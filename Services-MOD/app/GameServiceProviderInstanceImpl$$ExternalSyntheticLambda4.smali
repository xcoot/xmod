.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    .line 3
    check-cast p1, Landroid/service/games/IGameService;

    .line 5
    new-instance v0, Landroid/service/games/GameStartedEvent;

    .line 7
    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 9
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, v1, p0}, Landroid/service/games/GameStartedEvent;-><init>(ILjava/lang/String;)V

    .line 18
    invoke-interface {p1, v0}, Landroid/service/games/IGameService;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    .line 21
    return-void
.end method
