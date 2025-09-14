.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
