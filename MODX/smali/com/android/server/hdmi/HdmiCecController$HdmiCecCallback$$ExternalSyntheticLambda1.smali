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

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$3:[B

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;->f$3:[B

    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 14
    array-length v3, p0

    .line 15
    const-string v4, "HdmiCecController"

    .line 17
    if-nez v3, :cond_0

    .line 19
    const-string p0, "Message with empty body received."

    .line 21
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto/16 :goto_3

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    aget-byte v5, p0, v3

    .line 29
    array-length v6, p0

    .line 30
    const/4 v7, 0x1

    .line 31
    invoke-static {p0, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, v2, v5, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 38
    move-result-object p0

    .line 39
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 41
    if-eqz v5, :cond_1

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    const-string v6, "Invalid message received: "

    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    const-string v5, "[R]:"

    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    new-array v5, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 82
    new-instance v4, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-direct {v4, v7, p0, v5}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 88
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 91
    const/16 v4, 0xf

    .line 93
    if-ne v2, v4, :cond_2

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

    .line 100
    iget-object v5, v5, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 102
    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v5

    .line 112
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_5

    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 124
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 131
    move-result v6

    .line 132
    if-ne v6, v1, :cond_4

    .line 134
    move v3, v7

    .line 135
    :cond_4
    if-ne v6, v2, :cond_3

    .line 137
    move v4, v7

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    if-nez v3, :cond_6

    .line 141
    if-eqz v4, :cond_6

    .line 143
    const/4 v7, 0x3

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    if-eqz v3, :cond_7

    .line 147
    if-eqz v4, :cond_7

    .line 149
    const/4 v7, 0x4

    .line 150
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    .line 153
    move-result v1

    .line 154
    const/4 v2, -0x1

    .line 155
    if-ne v1, v2, :cond_8

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 160
    move-result v1

    .line 161
    :cond_8
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 163
    invoke-virtual {v3, p0, v7, v1, v2}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 166
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 169
    :goto_3
    return-void
.end method
