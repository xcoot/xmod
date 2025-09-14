.class public Lcom/att/iqi/lib/metrics/mm/MM07;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SDP_MEDIA_APPLICATION:B = 0x4t

.field public static final IQ_SDP_MEDIA_AUDIO:B = 0x1t

.field public static final IQ_SDP_MEDIA_CONTROL:B = 0x6t

.field public static final IQ_SDP_MEDIA_DATA:B = 0x7t

.field public static final IQ_SDP_MEDIA_MESSAGE:B = 0x5t

.field public static final IQ_SDP_MEDIA_TEXT:B = 0x3t

.field public static final IQ_SDP_MEDIA_UNKNOWN:B = 0x0t

.field public static final IQ_SDP_MEDIA_VIDEO:B = 0x2t


# instance fields
.field private final mMediaStats:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "MM07"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM07;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM07$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM07$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM07;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM07;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 4
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    .line 9
    new-instance v4, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    invoke-direct {v4, v5, v6, v1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BBI)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fputm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fputm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fputm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fputm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V

    .line 14
    iget-object v5, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDrop(S)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public getDuration(S)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public getFormat(S)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_ucFormat(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public getLate(S)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public getMediaType(S)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_ucMediaType(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public getRcvd(S)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-short v0, v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Short;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$mserialize(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public setRtpStats(SBBIIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p2, p3, v1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BBI)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0, p4, p5, p6, p7}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->set(IIII)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07;->mMediaStats:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Short;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_ucMediaType(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_ucFormat(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->-$$Nest$fgetm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method
