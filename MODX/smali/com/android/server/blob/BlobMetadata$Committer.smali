.class public final Lcom/android/server/blob/BlobMetadata$Committer;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

.field public final commitTimeMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 6
    iput-wide p4, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "commit time: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-wide v1, p0, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 11
    const-wide/16 v3, 0x0

    .line 13
    cmp-long v3, v1, v3

    .line 15
    if-nez v3, :cond_0

    .line 17
    const-string v1, "<null>"

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    const-string v0, "accessMode:"

    .line 36
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 42
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobAccessMode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 47
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 50
    return-void
.end method
