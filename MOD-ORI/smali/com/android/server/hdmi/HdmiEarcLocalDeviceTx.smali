.class public final Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;
.super Lcom/android/server/hdmi/HdmiEarcLocalDevice;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final earcStatusNames:[Ljava/lang/String;


# instance fields
.field public mReportCapsHandler:Landroid/os/Handler;

.field public mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "HDMI_EARC_STATUS_ARC_PENDING"

    .line 2
    .line 3
    const-string v1, "HDMI_EARC_STATUS_EARC_CONNECTED"

    .line 4
    .line 5
    const-string v2, "HDMI_EARC_STATUS_IDLE"

    .line 6
    .line 7
    const-string v3, "HDMI_EARC_STATUS_EARC_PENDING"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static parseCapabilities([B)Ljava/util/List;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const-string v2, "HdmiEarcLocalDeviceTx"

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    const-string p0, "Raw eARC capabilities array doesn\u00b4t contain any blocks."

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    aget-byte v4, p0, v1

    .line 20
    .line 21
    array-length v5, p0

    .line 22
    if-ge v5, v4, :cond_1

    .line 23
    .line 24
    const-string p0, "Raw eARC capabilities array is shorter than the reported payload length."

    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 v5, 0x3

    .line 31
    move v6, v5

    .line 32
    :goto_0
    if-ge v6, v4, :cond_8

    .line 33
    .line 34
    aget-byte v7, p0, v6

    .line 35
    .line 36
    and-int/lit16 v8, v7, 0xe0

    .line 37
    .line 38
    shr-int/lit8 v8, v8, 0x5

    .line 39
    .line 40
    and-int/lit8 v7, v7, 0x1f

    .line 41
    .line 42
    if-nez v7, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    const/4 v9, 0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    if-eq v8, v9, :cond_5

    .line 48
    .line 49
    if-eq v8, v3, :cond_4

    .line 50
    .line 51
    const/4 v9, 0x7

    .line 52
    if-eq v8, v9, :cond_3

    .line 53
    .line 54
    const-string v9, "This tagcode was not handled: "

    .line 55
    .line 56
    invoke-static {v8, v9, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    add-int/lit8 v8, v6, 0x1

    .line 61
    .line 62
    aget-byte v8, p0, v8

    .line 63
    .line 64
    const/16 v9, 0x11

    .line 65
    .line 66
    if-ne v8, v9, :cond_7

    .line 67
    .line 68
    add-int/lit8 v8, v7, 0x1

    .line 69
    .line 70
    new-array v9, v8, [B

    .line 71
    .line 72
    invoke-static {p0, v6, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Landroid/media/AudioDescriptor;

    .line 76
    .line 77
    invoke-direct {v8, v5, v10, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .line 85
    .line 86
    new-array v9, v8, [B

    .line 87
    .line 88
    invoke-static {p0, v6, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Landroid/media/AudioDescriptor;

    .line 92
    .line 93
    invoke-direct {v8, v1, v10, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    rem-int/lit8 v8, v7, 0x3

    .line 101
    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    const-string v9, "Invalid length of SAD block: expected a factor of 3 but got "

    .line 105
    .line 106
    invoke-static {v8, v9, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    new-array v8, v7, [B

    .line 111
    .line 112
    add-int/lit8 v11, v6, 0x1

    .line 113
    .line 114
    invoke-static {p0, v11, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    .line 116
    .line 117
    move v11, v10

    .line 118
    :goto_1
    if-ge v11, v7, :cond_7

    .line 119
    .line 120
    new-instance v12, Landroid/media/AudioDescriptor;

    .line 121
    .line 122
    add-int/lit8 v13, v11, 0x3

    .line 123
    .line 124
    invoke-static {v8, v11, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-direct {v12, v9, v10, v11}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move v11, v13

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    add-int/2addr v6, v7

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    :goto_3
    return-object v0
.end method
