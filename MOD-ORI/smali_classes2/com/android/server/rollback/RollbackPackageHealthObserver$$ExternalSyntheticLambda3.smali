.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/content/rollback/RollbackInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
