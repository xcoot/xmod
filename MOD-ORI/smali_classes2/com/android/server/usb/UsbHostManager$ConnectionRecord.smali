.class public final Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDescriptors:[B

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mMode:I

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 13

    .line 1
    const-string v0, "connections"

    .line 2
    .line 3
    const-wide v1, 0x20b00000004L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "device_address"

    .line 15
    .line 16
    const-wide v4, 0x10900000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "mode"

    .line 25
    .line 26
    .line 27
    const-wide v4, 0x10e00000002L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iget v6, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 33
    .line 34
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 35
    .line 36
    .line 37
    iget-wide v11, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 38
    .line 39
    const-string/jumbo v8, "timestamp"

    .line 40
    .line 41
    .line 42
    const-wide v9, 0x10300000003L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    move-object v7, p1

    .line 48
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 49
    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v6, v3, :cond_0

    .line 53
    .line 54
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 57
    .line 58
    invoke-direct {v3, v2, p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 59
    .line 60
    .line 61
    iget-object p0, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 62
    .line 63
    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 64
    .line 65
    const-string/jumbo v4, "manufacturer"

    .line 66
    .line 67
    .line 68
    const-wide v5, 0x10500000004L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v4, v5, v6, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    .line 75
    .line 76
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 77
    .line 78
    const-string/jumbo v2, "product"

    .line 79
    .line 80
    .line 81
    const-wide v4, 0x10500000005L

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2, v4, v5, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 87
    .line 88
    .line 89
    const-string p0, "is_headset"

    .line 90
    .line 91
    const-wide v4, 0x10b00000006L

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const-string v2, "in"

    .line 105
    .line 106
    const-wide v6, 0x10800000001L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2, v6, v7, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    const-string/jumbo v2, "out"

    .line 119
    .line 120
    .line 121
    const-wide v6, 0x10800000002L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2, v6, v7, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 130
    .line 131
    .line 132
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final formatTime()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    new-instance v2, Ljava/util/Date;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 8
    .line 9
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
