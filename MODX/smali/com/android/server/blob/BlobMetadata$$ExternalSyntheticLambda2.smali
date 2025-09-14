.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 9
    return p0
.end method
