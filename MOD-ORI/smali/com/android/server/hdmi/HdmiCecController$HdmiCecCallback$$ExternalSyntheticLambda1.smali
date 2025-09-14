.class public final synthetic Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$3:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$3:[B

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 12
    .line 13
    .line 14
    array-length v3, p0

    .line 15
    const-string v4, "HdmiCecController"

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string p0, "Message with empty body received."

    .line 20
    .line 21
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    aget-byte v5, p0, v3

    .line 28
    .line 29
    array-length v6, p0

    .line 30
    const/4 v7, 0x1

    .line 31
    invoke-static {p0, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, v2, v5, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v6, "Invalid message received: "

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "[R]:"

    .line 63
    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-array v5, v3, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-direct {v4, v7, p0, v5}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0xf

    .line 92
    .line 93
    if-ne v2, v4, :cond_2

    .line 94
    .line 95
    move v4, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move v4, v3

    .line 98
    :goto_0
    iget-object v5, v0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-ne v6, v1, :cond_4

    .line 133
    .line 134
    move v3, v7

    .line 135
    :cond_4
    if-ne v6, v2, :cond_3

    .line 136
    .line 137
    move v4, v7

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    if-nez v3, :cond_6

    .line 140
    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    const/4 v7, 0x3

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    if-eqz v3, :cond_7

    .line 146
    .line 147
    if-eqz v4, :cond_7

    .line 148
    .line 149
    const/4 v7, 0x4

    .line 150
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/4 v2, -0x1

    .line 155
    if-ne v1, v2, :cond_8

    .line 156
    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    :cond_8
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 162
    .line 163
    invoke-virtual {v3, p0, v7, v1, v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void
.end method
