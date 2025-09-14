.class public Lcom/att/iqi/lib/metrics/ea/EA13;
.super Lcom/att/iqi/lib/Metric;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private final lSerialNumber:I

.field private final lServiceCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    .line 2
    .line 3
    const-string v1, "EA13"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA13;->ID:Lcom/att/iqi/lib/Metric$ID;

    .line 9
    .line 10
    new-instance v0, Lcom/att/iqi/lib/metrics/ea/EA13$1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ea/EA13$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/att/iqi/lib/metrics/ea/EA13;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    .line 6
    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    .line 7
    iput p2, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    iget p0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lServiceCategory:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p0, p0, Lcom/att/iqi/lib/metrics/ea/EA13;->lSerialNumber:I

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
