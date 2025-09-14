.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sStatusStrings:[Ljava/lang/String;


# instance fields
.field public mHierarchyLevel:I

.field public final mLength:I

.field public mOverUnderRunCount:I

.field public mRawData:[B

.field public mStatus:I

.field public final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "PARSED - UNDERRUN"

    .line 2
    .line 3
    const-string v1, "PARSED - OVERRUN"

    .line 4
    .line 5
    const-string v2, "UNPARSED"

    .line 6
    .line 7
    const-string v3, "PARSED - OK"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 11
    .line 12
    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 4
    .line 5
    sub-int v0, v1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-array v2, v0, [B

    .line 10
    .line 11
    iput-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    aput-byte v4, v3, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v1
.end method

.method public final postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 2
    .line 3
    const-string v1, " r: "

    .line 4
    .line 5
    iget-byte v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 6
    .line 7
    const-string v3, "UsbDescriptor"

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 10
    .line 11
    if-ge v0, v4, :cond_0

    .line 12
    .line 13
    sub-int v5, v4, v0

    .line 14
    .line 15
    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 20
    .line 21
    iput v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p1, "UNDERRUN t:0x"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, " < l: "

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v4, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-le v0, v4, :cond_3

    .line 53
    .line 54
    sub-int v5, v0, v4

    .line 55
    .line 56
    if-ltz v5, :cond_2

    .line 57
    .line 58
    iget v6, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 59
    .line 60
    if-lt v6, v5, :cond_1

    .line 61
    .line 62
    sub-int v7, v0, v5

    .line 63
    .line 64
    iput v7, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 65
    .line 66
    sub-int/2addr v6, v5

    .line 67
    iput v6, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 68
    .line 69
    const/4 p1, 0x3

    .line 70
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 71
    .line 72
    iput v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p1, "OVERRRUN t:0x"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " > l: "

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v4, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 p0, 0x0

    .line 104
    iput p0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 105
    .line 106
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_3
    const/4 p1, 0x1

    .line 119
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 120
    .line 121
    :goto_0
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    and-int/lit16 v2, v1, 0xff

    .line 16
    .line 17
    const-string v3, "]"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "Unknown Descriptor [0x"

    .line 25
    .line 26
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ":"

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    const-string v2, ": "

    .line 52
    .line 53
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " Len: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeHeader(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    if-eq v0, v1, :cond_3

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    if-eq v0, v2, :cond_2

    .line 99
    .line 100
    const/4 v2, 0x3

    .line 101
    if-eq v0, v2, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v2, "status: "

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    .line 113
    .line 114
    iget v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 115
    .line 116
    aget-object v2, v2, v4

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " ["

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p1, p0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_2
    return-void
.end method
