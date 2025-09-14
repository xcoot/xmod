.class public final Landroid/hardware/power/stats/StateResidencyResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public id:I

.field public stateResidencyData:[Landroid/hardware/power/stats/StateResidency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/power/stats/StateResidencyResult$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/power/stats/StateResidencyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 7
    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 4
    invoke-static {v3}, Landroid/hardware/power/stats/StateResidencyResult;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 6
    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    invoke-static {p0}, Landroid/hardware/power/stats/StateResidencyResult;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget v1, p0, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p0, p0, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    .line 16
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    sub-int p2, p0, v0

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
