.class public final Landroid/hardware/health/DiskStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public ioInFlight:J

.field public ioInQueue:J

.field public ioTicks:J

.field public readMerges:J

.field public readSectors:J

.field public readTicks:J

.field public reads:J

.field public writeMerges:J

.field public writeSectors:J

.field public writeTicks:J

.field public writes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/health/DiskStats$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/hardware/health/DiskStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->reads:J

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->readMerges:J

    .line 9
    .line 10
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->readSectors:J

    .line 11
    .line 12
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->readTicks:J

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->writes:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->writeMerges:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->writeSectors:J

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->writeTicks:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->ioInFlight:J

    .line 23
    .line 24
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->ioTicks:J

    .line 25
    .line 26
    iput-wide v0, p0, Landroid/hardware/health/DiskStats;->ioInQueue:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->reads:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->readMerges:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->readSectors:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->readTicks:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->writes:J

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->writeMerges:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->writeSectors:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->writeTicks:J

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->ioInFlight:J

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    .line 53
    .line 54
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->ioTicks:J

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Landroid/hardware/health/DiskStats;->ioInQueue:J

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
