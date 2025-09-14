.class public Lcom/att/iqi/lib/metrics/mm/MM05;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SIP_CALL_STATE_ANSWERED:B = 0x8t

.field public static final IQ_SIP_CALL_STATE_CONNECTED:B = 0x9t

.field public static final IQ_SIP_CALL_STATE_DISCONNECTING:B = 0xbt

.field public static final IQ_SIP_CALL_STATE_HELD:B = 0xat

.field public static final IQ_SIP_CALL_STATE_IDLE:B = 0x1t

.field public static final IQ_SIP_CALL_STATE_INVITE:B = 0x2t

.field public static final IQ_SIP_CALL_STATE_NEGOTIATING:B = 0x5t

.field public static final IQ_SIP_CALL_STATE_PROGRESS:B = 0x4t

.field public static final IQ_SIP_CALL_STATE_RINGING:B = 0x7t

.field public static final IQ_SIP_CALL_STATE_TRYING:B = 0x3t

.field public static final IQ_SIP_CALL_STATE_UNKNOWN:B = 0x0t

.field public static final IQ_SIP_CALL_STATE_UPDATED:B = 0x6t


# instance fields
.field private m_szCallId:Ljava/lang/String;

.field private m_ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "MM05"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM05;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM05$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM05$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM05;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM05;->reset()V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRegState()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

    .line 2
    .line 3
    return p0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    .line 7
    .line 8
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
    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCallState(B)Lcom/att/iqi/lib/metrics/mm/MM05;
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

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
    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_ucCallState:B

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM05;->m_szCallId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
