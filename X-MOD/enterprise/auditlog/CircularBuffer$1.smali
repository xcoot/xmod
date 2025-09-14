.class public final Lcom/android/server/enterprise/auditlog/CircularBuffer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 6
    move-result-wide p0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object p0

    .line 11
    check-cast p2, Ljava/io/File;

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method
