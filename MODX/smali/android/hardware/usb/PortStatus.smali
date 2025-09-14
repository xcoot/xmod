.class public final Landroid/hardware/usb/PortStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public complianceWarnings:[I

.field public contaminantDetectionStatus:B

.field public contaminantProtectionStatus:B

.field public currentDataRole:B

.field public currentMode:B

.field public currentPowerRole:B

.field public plugOrientation:I

.field public portName:Ljava/lang/String;

.field public powerBrickStatus:B

.field public powerTransferLimited:Z

.field public supportedAltModes:[Landroid/hardware/usb/AltModeData;

.field public supportedContaminantProtectionModes:[B

.field public supportedModes:[B

.field public supportsComplianceWarnings:Z

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/usb/PortStatus$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
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
    invoke-static {v3}, Landroid/hardware/usb/PortStatus;->describeContents(Ljava/lang/Object;)I

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
    iget-object p0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    invoke-static {p0}, Landroid/hardware/usb/PortStatus;->describeContents(Ljava/lang/Object;)I

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
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 34
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 49
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 54
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 59
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    iget-byte v1, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-boolean v1, p0, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    iget-object v1, p0, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    iget v1, p0, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p0, p0, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 106
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 112
    move-result p0

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    sub-int p2, p0, v0

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void
.end method
