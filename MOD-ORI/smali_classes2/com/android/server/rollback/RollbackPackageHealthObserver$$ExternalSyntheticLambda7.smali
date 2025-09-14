.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Consumer;

    .line 4
    .line 5
    check-cast p1, Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    check-cast p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
