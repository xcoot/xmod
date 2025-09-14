.class public final Landroid/hardware/power/stats/StateResidency;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public id:I

.field public lastEntryTimestampMs:J

.field public totalStateEntryCount:J

.field public totalTimeInStateMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/power/stats/StateResidency$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/power/stats/StateResidency;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    .line 11
    iput-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    .line 13
    iput-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 15
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

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v0, p0, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    iget-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget-wide v0, p0, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 39
    return-void
.end method
