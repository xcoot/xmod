.class public final synthetic Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;
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
    if-eqz p0, :cond_2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq p0, p1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "HideCameraCutout"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "OverlapWithTheCameraCutout"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p0, "AppDefault"

    .line 27
    .line 28
    :goto_0
    return-object p0
.end method
