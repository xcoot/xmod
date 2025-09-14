.class public final Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


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
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-wide/16 v1, 0x10

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x8

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v3, v2, 0x20

    .line 20
    int-to-long v5, v3

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 24
    move-result-wide v7

    .line 25
    const-wide/16 v9, 0x0

    .line 27
    const/4 v11, 0x1

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_0

    .line 39
    new-instance v4, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 41
    invoke-direct {v4}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 44
    mul-int/lit8 v5, v3, 0x20

    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
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
    const-class v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 33
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 35
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_4

    .line 41
    return v1

    .line 42
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 13
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object v0

    .line 11
    array-length v0, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    int-to-long v2, v0

    .line 15
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 18
    move-result-wide v4

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, p1

    .line 21
    move-wide v6, p3

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 25
    const-wide/16 v0, 0x10

    .line 27
    add-long v7, p3, v0

    .line 29
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 32
    move-result-object p3

    .line 33
    iput-object p3, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 35
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 38
    move-result-object p0

    .line 39
    array-length p0, p0

    .line 40
    add-int/lit8 p0, p0, 0x1

    .line 42
    int-to-long v3, p0

    .line 43
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 46
    move-result-wide v5

    .line 47
    const/4 v9, 0x0

    .line 48
    move-object v2, p1

    .line 49
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 52
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.key = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .value = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    .line 21
    const-string/jumbo v1, "}"

    .line 24
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
