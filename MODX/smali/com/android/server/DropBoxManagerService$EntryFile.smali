.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final blocks:I

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 49
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 11

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-gez v1, :cond_1

    move v1, v2

    move v8, v3

    move-object v7, v4

    :cond_0
    :goto_0
    move-wide v9, v5

    goto :goto_4

    .line 19
    :cond_1
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 20
    const-string v8, ".gz"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    .line 21
    invoke-static {v8, v3, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v8, v9

    goto :goto_1

    :cond_2
    move v8, v3

    .line 22
    :goto_1
    const-string v10, ".lost"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    or-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v2

    const/4 v9, 0x5

    .line 23
    invoke-static {v9, v1, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move v1, v3

    goto :goto_3

    .line 24
    :cond_3
    const-string v10, ".txt"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    or-int/lit8 v8, v8, 0x2

    add-int/2addr v1, v2

    .line 25
    invoke-static {v9, v1, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 26
    :cond_4
    const-string v10, ".dat"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/2addr v1, v2

    .line 27
    invoke-static {v9, v1, v0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    .line 28
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move v1, v2

    goto :goto_0

    :goto_4
    if-eqz v1, :cond_6

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid filename: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropBoxManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 31
    iput-object v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 33
    iput-wide v5, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 34
    iput v3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void

    .line 35
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 36
    invoke-static {v7}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 37
    iput v8, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 38
    iput-wide v9, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 3
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 4
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    int-to-long p3, p7

    add-long/2addr p1, p3

    const-wide/16 p5, 0x1

    sub-long/2addr p1, p5

    div-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Can\'t rename "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const/4 p2, 0x1

    .line 13
    iput p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 15
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 3
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 5
    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 16
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 18
    invoke-static {v0, v1}, Lcom/android/internal/util/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 27
    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 43
    move-result p1

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 47
    move-result v0

    .line 48
    :goto_0
    return v0
.end method

.method public final getFile(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 15
    if-eqz v2, :cond_4

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 24
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "@"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    iget p0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 43
    and-int/lit8 v2, p0, 0x1

    .line 45
    if-eqz v2, :cond_1

    .line 47
    const-string p0, ".lost"

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    and-int/lit8 v2, p0, 0x2

    .line 52
    if-eqz v2, :cond_2

    .line 54
    const-string v2, ".txt"

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string v2, ".dat"

    .line 59
    :goto_1
    and-int/lit8 p0, p0, 0x4

    .line 61
    if-eqz p0, :cond_3

    .line 63
    const-string p0, ".gz"

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-string p0, ""

    .line 68
    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    :cond_4
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    move-object v1, v0

    .line 83
    :cond_5
    return-object v1
.end method
