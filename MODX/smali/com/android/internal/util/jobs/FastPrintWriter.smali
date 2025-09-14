.class public Lcom/android/internal/util/jobs/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1

    const/16 v0, 0x200

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    invoke-direct {v0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 29
    iput p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 30
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 32
    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 33
    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 34
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 36
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "pr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/16 v0, 0x2000

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    invoke-direct {v0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>()V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 4
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 5
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 6
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 9
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 10
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "out is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    const/16 v0, 0x2000

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 1

    .line 16
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    invoke-direct {v0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>()V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 17
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 18
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    const/4 p3, 0x0

    .line 19
    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 20
    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 21
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 22
    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 23
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 24
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "wr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private appendLocked(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 2
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 4
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 8
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 9
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 11
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_3
    add-int v0, p2, p3

    .line 12
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 13
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 15
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 16
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 18
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 20
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 18
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 20
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 30
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 3
    if-lez v0, :cond_8

    .line 5
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 13
    invoke-static {v1, v3, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 19
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 24
    move-result-object v1

    .line 25
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 27
    if-nez v4, :cond_1

    .line 29
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 44
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 46
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 55
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 65
    if-nez v0, :cond_7

    .line 67
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 70
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 78
    if-eqz v1, :cond_3

    .line 80
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 82
    if-nez v2, :cond_7

    .line 84
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 86
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 91
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    move-result v0

    .line 101
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 103
    if-ge v0, v1, :cond_4

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move v0, v1

    .line 107
    :goto_1
    move v1, v3

    .line 108
    :goto_2
    if-ge v1, v0, :cond_5

    .line 110
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 112
    iget v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 114
    sub-int/2addr v5, v2

    .line 115
    sub-int/2addr v5, v1

    .line 116
    aget-char v4, v4, v5

    .line 118
    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 120
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 123
    move-result v6

    .line 124
    sub-int/2addr v6, v2

    .line 125
    sub-int/2addr v6, v1

    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 129
    move-result v5

    .line 130
    if-ne v4, v5, :cond_5

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 137
    if-lt v1, v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 141
    const-string v1, ""

    .line 143
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 149
    new-instance v4, Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 153
    sub-int/2addr v0, v1

    .line 154
    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 157
    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 160
    :cond_7
    :goto_3
    iput v3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 162
    :cond_8
    return-void
.end method

.method private final initDefaultEncoder()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 11
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 16
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 18
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 21
    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 16
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 18
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 21
    return-void

    .line 22
    :catch_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    .line 24
    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 0

    if-nez p1, :cond_0

    .line 3
    const-string/jumbo p1, "null"

    .line 4
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/internal/util/jobs/FastPrintWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public checkError()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flush()V

    .line 4
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 9
    monitor-exit v0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public clearError()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 7
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    :try_start_1
    const-string v2, "FastPrintWriter"

    .line 29
    const-string v3, "Write failure"

    .line 31
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 37
    :cond_1
    :goto_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 7
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 9
    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    :try_start_1
    const-string v2, "FastPrintWriter"

    .line 33
    const-string v3, "Write failure"

    .line 35
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 41
    :cond_1
    :goto_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public print(C)V
    .locals 3

    .line 6
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public print(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 17
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 19
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 11
    const-string/jumbo p1, "null"

    .line 12
    :cond_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public print([C)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public println()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 3
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public println(C)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(C)V

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public println(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 8
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    :goto_0
    return-void
.end method

.method public println(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 10
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    :goto_0
    return-void
.end method

.method public println([C)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print([C)V

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public setError()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public write(I)V
    .locals 3

    .line 6
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    int-to-char p1, p1

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 11
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 15
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 16
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 20
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
