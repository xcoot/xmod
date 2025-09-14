.class public final Landroid/hardware/health/HealthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public batteryCapacityLevel:I

.field public batteryChargeCounterUah:I

.field public batteryChargeTimeToFullNowSeconds:J

.field public batteryCurrentAverageMicroamps:I

.field public batteryCurrentMicroamps:I

.field public batteryCycleCount:I

.field public batteryFullChargeDesignCapacityUah:I

.field public batteryFullChargeUah:I

.field public batteryHealth:I

.field public batteryHealthData:Landroid/hardware/health/BatteryHealthData;

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperatureTenthsCelsius:I

.field public batteryVoltageMillivolts:I

.field public chargerAcOnline:Z

.field public chargerDockOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public chargingPolicy:I

.field public chargingState:I

.field public diskStats:[Landroid/hardware/health/DiskStats;

.field public maxChargingCurrentMicroamps:I

.field public maxChargingVoltageMicrovolts:I

.field public storageInfos:[Landroid/hardware/health/StorageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/health/HealthInfo$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 7
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 9
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 11
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 13
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 15
    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 17
    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 19
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 21
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 23
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 25
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 27
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 29
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 31
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 33
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 35
    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 39
    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 41
    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 5
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 6
    invoke-static {v3}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 7
    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 8
    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    invoke-static {v0}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    invoke-static {v1}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryHealthData:Landroid/hardware/health/BatteryHealthData;

    invoke-static {p0}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

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
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 19
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 24
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 54
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    .line 101
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 104
    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 106
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 109
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 116
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v1, p0, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 126
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v1, p0, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryHealthData:Landroid/hardware/health/BatteryHealthData;

    .line 136
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 142
    move-result p0

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 149
    return-void
.end method
