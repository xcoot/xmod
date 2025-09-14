.class public final Lcom/android/server/usb/hal/port/RawPortInfo;
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

.field public contaminantDetectionStatus:I

.field public final contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field public final plugState:I

.field public final portId:Ljava/lang/String;

.field public final powerBrickConnectionStatus:I

.field public final powerTransferLimited:Z

.field public final supportedAltModes:I

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public final supportsComplianceWarnings:Z

.field public final supportsEnableContaminantPresenceDetection:Z

.field public final supportsEnableContaminantPresenceProtection:Z

.field public final usbDataStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usb/hal/port/RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 16
    .line 17
    move v1, p5

    .line 18
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 19
    .line 20
    move v1, p6

    .line 21
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 22
    .line 23
    move v1, p7

    .line 24
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 25
    .line 26
    move v1, p8

    .line 27
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 28
    .line 29
    move v1, p9

    .line 30
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 31
    .line 32
    move v1, p10

    .line 33
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 34
    .line 35
    move v1, p11

    .line 36
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 37
    .line 38
    move v1, p12

    .line 39
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 40
    .line 41
    move v1, p13

    .line 42
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 43
    .line 44
    move/from16 v1, p14

    .line 45
    .line 46
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 47
    .line 48
    move/from16 v1, p15

    .line 49
    .line 50
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 51
    .line 52
    move/from16 v1, p16

    .line 53
    .line 54
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 55
    .line 56
    move/from16 v1, p17

    .line 57
    .line 58
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    .line 63
    .line 64
    move/from16 v1, p19

    .line 65
    .line 66
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    .line 67
    .line 68
    move/from16 v1, p20

    .line 69
    .line 70
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 75
    .line 76
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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 22
    .line 23
    int-to-byte p2, p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 33
    .line 34
    int-to-byte p2, p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    .line 37
    .line 38
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 44
    .line 45
    int-to-byte p2, p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    .line 48
    .line 49
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    .line 78
    .line 79
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    .line 105
    .line 106
    and-int/lit8 p2, p2, 0x1

    .line 107
    .line 108
    if-eqz p2, :cond_0

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    .line 115
    .line 116
    :cond_0
    return-void
.end method
