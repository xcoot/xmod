.class public Lcom/android/internal/util/jobs/FastXmlSerializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final DEFAULT_BUFFER_LEN:I = 0x8000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private final mBufferLen:I

.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    const-string v62, "&gt;"

    .line 3
    const/16 v63, 0x0

    .line 5
    const-string v0, "&#0;"

    .line 7
    const-string v1, "&#1;"

    .line 9
    const-string v2, "&#2;"

    .line 11
    const-string v3, "&#3;"

    .line 13
    const-string v4, "&#4;"

    .line 15
    const-string v5, "&#5;"

    .line 17
    const-string v6, "&#6;"

    .line 19
    const-string v7, "&#7;"

    .line 21
    const-string v8, "&#8;"

    .line 23
    const-string v9, "&#9;"

    .line 25
    const-string v10, "&#10;"

    .line 27
    const-string v11, "&#11;"

    .line 29
    const-string v12, "&#12;"

    .line 31
    const-string v13, "&#13;"

    .line 33
    const-string v14, "&#14;"

    .line 35
    const-string v15, "&#15;"

    .line 37
    const-string v16, "&#16;"

    .line 39
    const-string v17, "&#17;"

    .line 41
    const-string v18, "&#18;"

    .line 43
    const-string v19, "&#19;"

    .line 45
    const-string v20, "&#20;"

    .line 47
    const-string v21, "&#21;"

    .line 49
    const-string v22, "&#22;"

    .line 51
    const-string v23, "&#23;"

    .line 53
    const-string v24, "&#24;"

    .line 55
    const-string v25, "&#25;"

    .line 57
    const-string v26, "&#26;"

    .line 59
    const-string v27, "&#27;"

    .line 61
    const-string v28, "&#28;"

    .line 63
    const-string v29, "&#29;"

    .line 65
    const-string v30, "&#30;"

    .line 67
    const-string v31, "&#31;"

    .line 69
    const/16 v32, 0x0

    .line 71
    const/16 v33, 0x0

    .line 73
    const-string v34, "&quot;"

    .line 75
    const/16 v35, 0x0

    .line 77
    const/16 v36, 0x0

    .line 79
    const/16 v37, 0x0

    .line 81
    const-string v38, "&amp;"

    .line 83
    const/16 v39, 0x0

    .line 85
    const/16 v40, 0x0

    .line 87
    const/16 v41, 0x0

    .line 89
    const/16 v42, 0x0

    .line 91
    const/16 v43, 0x0

    .line 93
    const/16 v44, 0x0

    .line 95
    const/16 v45, 0x0

    .line 97
    const/16 v46, 0x0

    .line 99
    const/16 v47, 0x0

    .line 101
    const/16 v48, 0x0

    .line 103
    const/16 v49, 0x0

    .line 105
    const/16 v50, 0x0

    .line 107
    const/16 v51, 0x0

    .line 109
    const/16 v52, 0x0

    .line 111
    const/16 v53, 0x0

    .line 113
    const/16 v54, 0x0

    .line 115
    const/16 v55, 0x0

    .line 117
    const/16 v56, 0x0

    .line 119
    const/16 v57, 0x0

    .line 121
    const/16 v58, 0x0

    .line 123
    const/16 v59, 0x0

    .line 125
    const-string v60, "&lt;"

    .line 127
    const/16 v61, 0x0

    .line 129
    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lcom/android/internal/util/jobs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 135
    const-string v0, "                                                              "

    .line 137
    sput-object v0, Lcom/android/internal/util/jobs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x8000

    .line 1
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    .line 4
    iput v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x8000

    .line 6
    :goto_0
    iput p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    .line 7
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private append(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    .line 2
    iget v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flush()V

    .line 4
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 8
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p3, p2

    .line 9
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flush()V

    .line 12
    iget v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    :cond_3
    add-int v0, p2, p3

    .line 13
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 14
    iput v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private append([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 16
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBufferLen:I

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    goto :goto_1

    :cond_0
    sub-int v0, p3, p2

    .line 17
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 18
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flush()V

    .line 20
    iget v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 22
    iput v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    mul-int/lit8 p1, p1, 0x4

    .line 3
    sget-object v0, Lcom/android/internal/util/jobs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    if-le p1, v0, :cond_0

    .line 11
    sget-object p1, Lcom/android/internal/util/jobs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result p1

    .line 17
    :cond_0
    sget-object v0, Lcom/android/internal/util/jobs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 23
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/internal/util/jobs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v2, v1

    int-to-char v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v5, v1, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v4, v3, :cond_2

    sub-int v6, v3, v4

    .line 5
    invoke-direct {p0, p1, v4, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 6
    invoke-direct {p0, v5}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ge v4, v3, :cond_4

    sub-int/2addr v3, v4

    .line 7
    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/android/internal/util/jobs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v0

    int-to-char v1, v1

    add-int/2addr p3, p2

    move v2, p2

    :goto_0
    if-ge p2, p3, :cond_3

    .line 9
    aget-char v3, p1, p2

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    aget-object v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-ge v2, p2, :cond_2

    sub-int v4, p2, v2

    .line 11
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append([CII)V

    :cond_2
    add-int/lit8 v2, p2, 0x1

    .line 12
    invoke-direct {p0, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-ge v2, p2, :cond_4

    sub-int/2addr p2, v2

    .line 13
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append([CII)V

    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 16
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 11
    const/16 p1, 0x3a

    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 16
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 19
    const-string p1, "=\""

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 27
    const/16 p1, 0x22

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    .line 35
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flush()V

    .line 4
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    .line 7
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const-string p1, " />\n"

    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    .line 19
    if-eqz v2, :cond_1

    .line 21
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->appendIndent(I)V

    .line 28
    :cond_1
    const-string v0, "</"

    .line 30
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 38
    const/16 p1, 0x3a

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 43
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 46
    const-string p1, ">\n"

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 51
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 56
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    .line 3
    if-lez v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    .line 12
    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 18
    iget-object v3, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flushBytes()V

    .line 40
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 42
    iget-object v3, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->flushBytes()V

    .line 52
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 54
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 60
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 70
    iget-object v3, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mText:[C

    .line 72
    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 77
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 80
    :goto_1
    iput v2, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mPos:I

    .line 82
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string/jumbo p2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 19
    throw p0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 5
    :goto_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 7
    :goto_1
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string p1, "<?xml version=\'1.0\' encoding=\'utf-8\'"

    .line 3
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 6
    if-eqz p2, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, " standalone=\'"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 21
    const-string/jumbo p2, "yes"

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo p2, "no"

    .line 28
    :goto_0
    const-string v0, "\'"

    .line 30
    invoke-static {p1, p2, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 37
    :cond_1
    const-string p1, " ?>\n"

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    .line 45
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, ">\n"

    .line 7
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    .line 16
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->appendIndent(I)V

    .line 19
    :cond_1
    iget v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    .line 21
    const/4 v1, 0x1

    .line 22
    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mNesting:I

    .line 25
    const/16 v0, 0x3c

    .line 27
    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 30
    if-eqz p1, :cond_2

    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 35
    const/16 p1, 0x3a

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(C)V

    .line 40
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 43
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    .line 48
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 9
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 3
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mInTag:Z

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 5
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    add-int/2addr p2, p3

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 6
    aget-char p1, p1, p2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    move v1, p3

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastXmlSerializer;->mLineStart:Z

    :cond_2
    return-object p0
.end method
