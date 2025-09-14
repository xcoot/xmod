.class public final Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

.field public final secondaryIds:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 6
    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 18
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
    const-class v3, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

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
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 33
    iget-object p1, p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

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
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

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
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 6
    const-wide/16 v0, 0x10

    .line 8
    add-long v7, p3, v0

    .line 10
    const-wide/16 v0, 0x18

    .line 12
    add-long/2addr p3, v0

    .line 13
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 16
    move-result p3

    .line 17
    mul-int/lit8 p4, p3, 0x10

    .line 19
    int-to-long v3, p4

    .line 20
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 23
    move-result-wide v5

    .line 24
    const/4 v9, 0x1

    .line 25
    move-object v2, p1

    .line 26
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    if-ge p2, p3, :cond_0

    .line 38
    new-instance p4, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 40
    invoke-direct {p4}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 43
    mul-int/lit8 v0, p2, 0x10

    .line 45
    int-to-long v0, v0

    .line 46
    invoke-virtual {p4, p1, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 49
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 p2, p2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.primaryId = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .secondaryIds = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo p0, "}"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
