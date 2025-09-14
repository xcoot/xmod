.class public final Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public confidenceLevel:I

.field public id:I

.field public final levels:Ljava/util/ArrayList;

.field public recognitionModes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 7
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 9
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

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
    const-class v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 20
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 22
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 29
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 36
    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 43
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 45
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_6

    .line 51
    return v1

    .line 52
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 15
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 21
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p0

    .line 29
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 7
    move-result v2

    .line 8
    iput v2, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 10
    const-wide/16 v2, 0x4

    .line 12
    add-long v4, p3, v2

    .line 14
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 17
    move-result v4

    .line 18
    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 20
    const-wide/16 v4, 0x8

    .line 22
    add-long v4, p3, v4

    .line 24
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 27
    move-result v4

    .line 28
    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 30
    const-wide/16 v4, 0x10

    .line 32
    add-long v11, p3, v4

    .line 34
    const-wide/16 v4, 0x18

    .line 36
    add-long v4, p3, v4

    .line 38
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 41
    move-result v4

    .line 42
    mul-int/lit8 v5, v4, 0x8

    .line 44
    int-to-long v7, v5

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 48
    move-result-wide v9

    .line 49
    const/4 v13, 0x1

    .line 50
    move-object v6, p1

    .line 51
    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 54
    move-result-object v1

    .line 55
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 60
    const/4 v5, 0x0

    .line 61
    :goto_0
    if-ge v5, v4, :cond_0

    .line 63
    new-instance v6, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 65
    invoke-direct {v6}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    .line 68
    mul-int/lit8 v7, v5, 0x8

    .line 70
    int-to-long v7, v7

    .line 71
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 74
    move-result v9

    .line 75
    iput v9, v6, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 77
    add-long/2addr v7, v2

    .line 78
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 81
    move-result v7

    .line 82
    iput v7, v6, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 84
    iget-object v7, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v5, v5, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.id = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .recognitionModes = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .confidenceLevel = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .levels = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo p0, "}"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
