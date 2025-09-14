.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;


# virtual methods
.method public final valueToString(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p3, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x7

    .line 10
    if-eq p0, p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x1f

    .line 13
    .line 14
    if-eq p0, p1, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x20

    .line 17
    .line 18
    if-eq p0, p1, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "Enabled"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, "Disabled"

    .line 29
    .line 30
    :goto_0
    return-object p0
.end method
