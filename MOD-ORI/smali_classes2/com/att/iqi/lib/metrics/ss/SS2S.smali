.class public Lcom/att/iqi/lib/metrics/ss/SS2S;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field private static final SERVICE_RUNNING_MASK:B = 0x1t

.field public static final SERVICE_SHOULD_NOT_RUN:B = 0x1t

.field public static final SERVICE_SHOULD_RUN:B

.field public static final SHOULD_SERVICE_RUN:I


# instance fields
.field private ucSettings:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "SS2S"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/ss/SS2S$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ss/SS2S$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 4
    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    :cond_0
    return-void
.end method


# virtual methods
.method public getSetting(I)B
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    int-to-byte p0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Invalid setting ID "

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;
    .locals 2

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Illegal value "

    .line 12
    .line 13
    const-string v1, " for setting ID "

    .line 14
    .line 15
    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 24
    .line 25
    and-int/lit8 p1, p1, -0x2

    .line 26
    .line 27
    int-to-byte p1, p1

    .line 28
    or-int/2addr p1, p2

    .line 29
    int-to-byte p1, p1

    .line 30
    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 31
    .line 32
    :cond_2
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
