.class public final Landroid/hardware/broadcastradio/V2_0/ProgramInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public infoFlags:I

.field public final logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

.field public final metadata:Ljava/util/ArrayList;

.field public final physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

.field public final relatedContent:Ljava/util/ArrayList;

.field public final selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

.field public signalQuality:I

.field public final vendorInfo:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 10
    .line 11
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 17
    .line 18
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 21
    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 32
    .line 33
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 43
    .line 44
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 45
    .line 46
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    return v1

    .line 53
    :cond_5
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 54
    .line 55
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    return v1

    .line 64
    :cond_6
    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_7

    .line 81
    .line 82
    return v1

    .line 83
    :cond_7
    iget v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 84
    .line 85
    iget v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 86
    .line 87
    if-eq v2, v3, :cond_8

    .line 88
    .line 89
    return v1

    .line 90
    :cond_8
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_9

    .line 99
    .line 100
    return v1

    .line 101
    :cond_9
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_a

    .line 110
    .line 111
    return v1

    .line 112
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 42
    .line 43
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 48
    .line 49
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-wide/from16 v11, p3

    .line 8
    .line 9
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 10
    .line 11
    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x20

    .line 15
    .line 16
    add-long/2addr v1, v11

    .line 17
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 18
    .line 19
    invoke-virtual {v3, v10, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x30

    .line 23
    .line 24
    add-long/2addr v1, v11

    .line 25
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 26
    .line 27
    invoke-virtual {v3, v10, v1, v2}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v1, 0x40

    .line 31
    .line 32
    add-long v6, v11, v1

    .line 33
    .line 34
    const-wide/16 v1, 0x48

    .line 35
    .line 36
    add-long/2addr v1, v11

    .line 37
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    mul-int/lit8 v1, v13, 0x10

    .line 42
    .line 43
    int-to-long v2, v1

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const/4 v8, 0x1

    .line 49
    move-object/from16 v1, p1

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    move v2, v14

    .line 62
    :goto_0
    if-ge v2, v13, :cond_0

    .line 63
    .line 64
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 65
    .line 66
    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 67
    .line 68
    .line 69
    mul-int/lit8 v4, v2, 0x10

    .line 70
    .line 71
    int-to-long v4, v4

    .line 72
    invoke-virtual {v3, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-wide/16 v1, 0x50

    .line 84
    .line 85
    add-long/2addr v1, v11

    .line 86
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 91
    .line 92
    const-wide/16 v1, 0x54

    .line 93
    .line 94
    add-long/2addr v1, v11

    .line 95
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 100
    .line 101
    const-wide/16 v1, 0x58

    .line 102
    .line 103
    add-long v6, v11, v1

    .line 104
    .line 105
    const-wide/16 v1, 0x60

    .line 106
    .line 107
    add-long/2addr v1, v11

    .line 108
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    mul-int/lit8 v1, v13, 0x20

    .line 113
    .line 114
    int-to-long v2, v1

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    const/4 v8, 0x1

    .line 120
    move-object/from16 v1, p1

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 129
    .line 130
    .line 131
    move v8, v14

    .line 132
    :goto_1
    if-ge v8, v13, :cond_1

    .line 133
    .line 134
    new-instance v6, Landroid/hardware/broadcastradio/V2_0/Metadata;

    .line 135
    .line 136
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    iput v14, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    .line 140
    .line 141
    const-wide/16 v1, 0x0

    .line 142
    .line 143
    iput-wide v1, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    .line 144
    .line 145
    new-instance v1, Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v1, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    .line 151
    .line 152
    mul-int/lit8 v1, v8, 0x20

    .line 153
    .line 154
    int-to-long v1, v1

    .line 155
    invoke-virtual {v15, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iput v3, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    .line 160
    .line 161
    const-wide/16 v3, 0x8

    .line 162
    .line 163
    add-long/2addr v3, v1

    .line 164
    invoke-virtual {v15, v3, v4}, Landroid/os/HwBlob;->getInt64(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    iput-wide v3, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    .line 169
    .line 170
    const-wide/16 v3, 0x10

    .line 171
    .line 172
    add-long v4, v1, v3

    .line 173
    .line 174
    invoke-virtual {v15, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iput-object v1, v6, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    array-length v1, v1

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    int-to-long v2, v1

    .line 188
    invoke-virtual {v15}, Landroid/os/HwBlob;->handle()J

    .line 189
    .line 190
    .line 191
    move-result-wide v16

    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    move-object/from16 v1, p1

    .line 195
    .line 196
    move-wide/from16 v19, v4

    .line 197
    .line 198
    move-wide/from16 v4, v16

    .line 199
    .line 200
    move-object v14, v6

    .line 201
    move-wide/from16 v6, v19

    .line 202
    .line 203
    move/from16 v17, v8

    .line 204
    .line 205
    move/from16 v8, v18

    .line 206
    .line 207
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    add-int/lit8 v8, v17, 0x1

    .line 216
    .line 217
    const/4 v14, 0x0

    .line 218
    goto :goto_1

    .line 219
    :cond_1
    const-wide/16 v1, 0x68

    .line 220
    .line 221
    add-long v6, v11, v1

    .line 222
    .line 223
    const-wide/16 v1, 0x70

    .line 224
    .line 225
    add-long/2addr v1, v11

    .line 226
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    mul-int/lit8 v1, v11, 0x20

    .line 231
    .line 232
    int-to-long v2, v1

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    const/4 v8, 0x1

    .line 238
    move-object/from16 v1, p1

    .line 239
    .line 240
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 247
    .line 248
    .line 249
    const/4 v14, 0x0

    .line 250
    :goto_2
    if-ge v14, v11, :cond_2

    .line 251
    .line 252
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 253
    .line 254
    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 255
    .line 256
    .line 257
    mul-int/lit8 v3, v14, 0x20

    .line 258
    .line 259
    int-to-long v3, v3

    .line 260
    invoke-virtual {v2, v9, v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    add-int/lit8 v14, v14, 0x1

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{.selector = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", .logicallyTunedTo = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", .physicallyTunedTo = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", .relatedContent = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", .infoFlags = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    .line 50
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    and-int/lit8 v3, v1, 0x1

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-ne v3, v4, :cond_0

    .line 60
    .line 61
    const-string v3, "LIVE"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v4, 0x0

    .line 68
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 69
    .line 70
    const/4 v5, 0x2

    .line 71
    if-ne v3, v5, :cond_1

    .line 72
    .line 73
    const-string v3, "MUTED"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    or-int/lit8 v4, v4, 0x2

    .line 79
    .line 80
    :cond_1
    and-int/lit8 v3, v1, 0x4

    .line 81
    .line 82
    const/4 v5, 0x4

    .line 83
    if-ne v3, v5, :cond_2

    .line 84
    .line 85
    const-string v3, "TRAFFIC_PROGRAM"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    or-int/lit8 v4, v4, 0x4

    .line 91
    .line 92
    :cond_2
    and-int/lit8 v3, v1, 0x8

    .line 93
    .line 94
    const/16 v5, 0x8

    .line 95
    .line 96
    if-ne v3, v5, :cond_3

    .line 97
    .line 98
    const-string v3, "TRAFFIC_ANNOUNCEMENT"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    or-int/lit8 v4, v4, 0x8

    .line 104
    .line 105
    :cond_3
    and-int/lit8 v3, v1, 0x10

    .line 106
    .line 107
    const/16 v5, 0x10

    .line 108
    .line 109
    if-ne v3, v5, :cond_4

    .line 110
    .line 111
    const-string v3, "TUNED"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    or-int/lit8 v4, v4, 0x10

    .line 117
    .line 118
    :cond_4
    and-int/lit8 v3, v1, 0x20

    .line 119
    .line 120
    const/16 v5, 0x20

    .line 121
    .line 122
    if-ne v3, v5, :cond_5

    .line 123
    .line 124
    const-string v3, "STEREO"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    or-int/lit8 v4, v4, 0x20

    .line 130
    .line 131
    :cond_5
    if-eq v1, v4, :cond_6

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "0x"

    .line 136
    .line 137
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    not-int v4, v4

    .line 141
    and-int/2addr v1, v4

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_6
    const-string v1, " | "

    .line 157
    .line 158
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, ", .signalQuality = "

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", .metadata = "

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, ", .vendorInfo = "

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string/jumbo p0, "}"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0
.end method
