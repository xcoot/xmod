.class public final Lcom/android/server/am/mars/filter/filter/SystemFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    :goto_0
    const/16 p0, 0x3e8

    .line 9
    .line 10
    const/16 p1, 0xe

    .line 11
    .line 12
    if-ne p2, p0, :cond_1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    const/16 p0, 0x11

    .line 16
    .line 17
    if-ne p3, p0, :cond_2

    .line 18
    .line 19
    if-ltz p2, :cond_2

    .line 20
    .line 21
    const/16 p0, 0x2710

    .line 22
    .line 23
    if-ge p2, p0, :cond_2

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
