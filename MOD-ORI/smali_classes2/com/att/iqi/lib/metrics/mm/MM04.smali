.class public Lcom/att/iqi/lib/metrics/mm/MM04;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_szCallId:Ljava/lang/String;

.field private m_szDialedString:Ljava/lang/String;

.field private m_szOriginatingUri:Ljava/lang/String;

.field private m_szTerminatingUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "MM04"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM04$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM04$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM04;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM04;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDialedString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOriginatingUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTerminatingUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDialedString(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOriginatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTerminatingUri(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM04;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szDialedString:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szCallId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szOriginatingUri:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM04;->m_szTerminatingUri:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
