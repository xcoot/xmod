.class public final Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, [Ljava/lang/Object;

    .line 4
    .line 5
    const-string/jumbo p1, "update result is wrong. "

    .line 6
    .line 7
    .line 8
    const-string v0, "dynamicfeature_HttpConnector"

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x3

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :try_start_0
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget-object v2, p0, v2

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aget-object p0, p0, v3

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;->onFeatureUpdateComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    :goto_1
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void
.end method
