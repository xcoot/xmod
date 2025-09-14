.class public final Landroid/hardware/broadcastradio/V2_0/Properties;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public maker:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public final supportedIdentifierTypes:Ljava/util/ArrayList;

.field public final vendorInfo:Ljava/util/ArrayList;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/String;

    .line 20
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 23
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    .line 27
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 30
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/broadcastradio/V2_0/Properties;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/Properties;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 33
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 41
    return v1

    .line 42
    :cond_4
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 44
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 46
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_5

    .line 52
    return v1

    .line 53
    :cond_5
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 55
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_6

    .line 63
    return v1

    .line 64
    :cond_6
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 66
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 68
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_7

    .line 74
    return v1

    .line 75
    :cond_7
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 77
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 79
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_8

    .line 85
    return v1

    .line 86
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v3

    .line 31
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 41
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 43
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v5

    .line 51
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 53
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v6

    .line 61
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x60

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 6
    move-result-object v8

    .line 7
    const-wide/16 v5, 0x0

    .line 9
    invoke-virtual {v8, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 18
    move-result-object v0

    .line 19
    array-length v0, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 22
    int-to-long v1, v0

    .line 23
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 26
    move-result-wide v3

    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v0, p1

    .line 29
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 32
    const-wide/16 v5, 0x10

    .line 34
    invoke-virtual {v8, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 43
    move-result-object v0

    .line 44
    array-length v0, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 47
    int-to-long v1, v0

    .line 48
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 51
    move-result-wide v3

    .line 52
    move-object v0, p1

    .line 53
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 56
    const-wide/16 v5, 0x20

    .line 58
    invoke-virtual {v8, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 67
    move-result-object v0

    .line 68
    array-length v0, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 71
    int-to-long v1, v0

    .line 72
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 75
    move-result-wide v3

    .line 76
    move-object v0, p1

    .line 77
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 80
    const-wide/16 v5, 0x30

    .line 82
    invoke-virtual {v8, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 91
    move-result-object v0

    .line 92
    array-length v0, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    int-to-long v1, v0

    .line 96
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 99
    move-result-wide v3

    .line 100
    move-object v0, p1

    .line 101
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 104
    const-wide/16 v0, 0x48

    .line 106
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 109
    move-result v9

    .line 110
    mul-int/lit8 v0, v9, 0x4

    .line 112
    int-to-long v1, v0

    .line 113
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 116
    move-result-wide v3

    .line 117
    const/4 v7, 0x1

    .line 118
    const-wide/16 v5, 0x40

    .line 120
    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 124
    move-result-object v0

    .line 125
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 130
    const/4 v10, 0x0

    .line 131
    move v1, v10

    .line 132
    :goto_0
    if-ge v1, v9, :cond_0

    .line 134
    mul-int/lit8 v2, v1, 0x4

    .line 136
    int-to-long v2, v2

    .line 137
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 140
    move-result v2

    .line 141
    iget-object v3, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 152
    goto :goto_0

    .line 153
    :cond_0
    const-wide/16 v0, 0x58

    .line 155
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 158
    move-result v9

    .line 159
    mul-int/lit8 v0, v9, 0x20

    .line 161
    int-to-long v1, v0

    .line 162
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    .line 165
    move-result-wide v3

    .line 166
    const/4 v7, 0x1

    .line 167
    const-wide/16 v5, 0x50

    .line 169
    move-object v0, p1

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 173
    move-result-object v0

    .line 174
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    :goto_1
    if-ge v10, v9, :cond_1

    .line 181
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 183
    invoke-direct {v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 186
    mul-int/lit8 v2, v10, 0x20

    .line 188
    int-to-long v2, v2

    .line 189
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 192
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v10, v10, 0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.maker = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .product = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .version = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .serial = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", .supportedIdentifierTypes = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .vendorInfo = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo p0, "}"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
