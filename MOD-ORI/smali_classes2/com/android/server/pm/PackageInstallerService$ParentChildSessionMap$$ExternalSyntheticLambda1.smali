.class public final synthetic Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, -0x1

    .line 9
    :goto_0
    return p0
.end method
