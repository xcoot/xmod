.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0, v1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
