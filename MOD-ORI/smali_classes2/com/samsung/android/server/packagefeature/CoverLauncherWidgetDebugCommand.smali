.class public final Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_1

    .line 5
    .line 6
    aget-object p0, p2, v1

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    aget-object p2, p2, p0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p0

    .line 17
    :cond_1
    :goto_0
    const-string p0, "Properties"

    .line 18
    .line 19
    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1
.end method
