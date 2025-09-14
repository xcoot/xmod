.class public final Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "blocklist"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "b"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string/jumbo p0, "w"

    .line 13
    .line 14
    .line 15
    :goto_0
    return-object p0
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x2

    .line 3
    const-string v1, "blocklist|allowlist"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p0, v0, :cond_2

    .line 7
    .line 8
    aget-object p0, p2, v2

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    aget-object p2, p2, p0

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "allowlist"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "blocklist"

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    invoke-static {p3, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    return p0

    .line 39
    :cond_2
    :goto_0
    invoke-static {p3, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v2
.end method
