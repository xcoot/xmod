.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$deviceType:I

.field public final synthetic val$hasVendorId:Z

.field public final synthetic val$params:[B

.field public final synthetic val$targetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$deviceType:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "HdmiControlService"

    .line 16
    .line 17
    const-string v0, "Local device not available"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$hasVendorId:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    .line 51
    .line 52
    array-length v5, p0

    .line 53
    const/4 v6, 0x3

    .line 54
    add-int/2addr v5, v6

    .line 55
    new-array v5, v5, [B

    .line 56
    .line 57
    shr-int/lit8 v7, v4, 0x10

    .line 58
    .line 59
    and-int/lit16 v7, v7, 0xff

    .line 60
    .line 61
    int-to-byte v7, v7

    .line 62
    const/4 v8, 0x0

    .line 63
    aput-byte v7, v5, v8

    .line 64
    .line 65
    shr-int/lit8 v7, v4, 0x8

    .line 66
    .line 67
    and-int/lit16 v7, v7, 0xff

    .line 68
    .line 69
    int-to-byte v7, v7

    .line 70
    const/4 v9, 0x1

    .line 71
    aput-byte v7, v5, v9

    .line 72
    .line 73
    and-int/lit16 v4, v4, 0xff

    .line 74
    .line 75
    int-to-byte v4, v4

    .line 76
    const/4 v7, 0x2

    .line 77
    aput-byte v4, v5, v7

    .line 78
    .line 79
    array-length v4, p0

    .line 80
    invoke-static {p0, v8, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    const/16 p0, 0xa0

    .line 84
    .line 85
    invoke-static {v0, v3, p0, v5}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v1, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$targetAddress:I

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;->val$params:[B

    .line 108
    .line 109
    const/16 v4, 0x89

    .line 110
    .line 111
    invoke-static {v0, v3, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v1, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
