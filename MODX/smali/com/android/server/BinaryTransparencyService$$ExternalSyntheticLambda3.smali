.class public final synthetic Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 3
    iget-boolean p0, p1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 5
    return p0
.end method
