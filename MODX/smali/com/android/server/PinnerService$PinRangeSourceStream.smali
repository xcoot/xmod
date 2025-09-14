.class public final Lcom/android/server/PinnerService$PinRangeSourceStream;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDone:Z

.field public final mStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 7
    new-instance v0, Ljava/io/DataInputStream;

    .line 9
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    .line 14
    return-void
.end method


# virtual methods
.method public final read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    .line 8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 11
    move-result v0

    .line 12
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 14
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 19
    move-result v0

    .line 20
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 25
    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 27
    xor-int/2addr p0, v1

    .line 28
    return p0
.end method
