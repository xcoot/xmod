.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/infra/AndroidFuture;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/infra/AndroidFuture;

    .line 3
    check-cast p1, Landroid/net/Uri;

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createSuccessResult()Landroid/service/games/GameScreenshotResult;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    return-void
.end method
