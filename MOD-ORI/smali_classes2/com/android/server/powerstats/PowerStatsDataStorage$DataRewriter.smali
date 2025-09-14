.class public final Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# instance fields
.field public mActiveFileData:[B

.field public mNewData:[B


# virtual methods
.method public final read(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldWrite()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
