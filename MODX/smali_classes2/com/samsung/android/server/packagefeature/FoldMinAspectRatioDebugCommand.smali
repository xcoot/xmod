.class public final Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string p1, "16:9"

    .line 5
    .line 6
    :goto_0
    return-object p1
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p0, v1, :cond_0

    .line 5
    .line 6
    array-length p0, p2

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p0, v2, :cond_1

    .line 9
    .line 10
    :cond_0
    aget-object p0, p2, v0

    .line 11
    .line 12
    if-nez p0, :cond_2

    .line 13
    .line 14
    :cond_1
    const-string p0, "longSize:shortSize"

    .line 15
    .line 16
    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    return v1
.end method
