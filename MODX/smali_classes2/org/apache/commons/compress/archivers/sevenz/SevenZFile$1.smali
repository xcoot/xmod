.class public final Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;
.super Ljava/io/FilterInputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 1

    .line 5
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 6
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return p1
.end method
