.class public final Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/FileFilter;


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo p1, "dumpstate_"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method
