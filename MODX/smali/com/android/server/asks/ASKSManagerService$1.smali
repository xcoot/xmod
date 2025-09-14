.class public final Lcom/android/server/asks/ASKSManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/FilenameFilter;


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "ASKS"

    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const-string p0, "ROOT"

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 17
    :cond_0
    const-string p0, "RPAB"

    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_2

    .line 25
    const-string p0, "ADP.xml"

    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 33
    const-string/jumbo p0, "protection_list.xml"

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 46
    :goto_1
    return p0
.end method
