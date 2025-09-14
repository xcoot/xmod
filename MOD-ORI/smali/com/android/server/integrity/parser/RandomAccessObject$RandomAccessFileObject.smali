.class public final Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLength:I

.field public final mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/32 v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    const-string/jumbo v3, "r"

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    long-to-int p1, v0

    .line 26
    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mLength:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 30
    .line 31
    const-string p1, "Unsupported file size (too big) "

    .line 32
    .line 33
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method
