.class public abstract Lcom/android/server/devicepolicy/ResolutionMechanism;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
.end method

.method public abstract resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
.end method

.method public resolve(Ljava/util/List;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
