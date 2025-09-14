.class public final Lcom/android/server/hdmi/HdmiCecController$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final synthetic val$sendResults:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[S]:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 25
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 27
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 29
    array-length v3, v0

    .line 30
    const/4 v4, 0x1

    .line 31
    add-int/2addr v3, v4

    .line 32
    new-array v3, v3, [B

    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, v3, v1

    .line 37
    array-length v2, v0

    .line 38
    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 43
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 45
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 47
    iget v5, v2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 49
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 51
    invoke-interface {v0, v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 57
    if-eq v0, v4, :cond_2

    .line 59
    const/4 v2, 0x2

    .line 60
    if-eq v0, v2, :cond_1

    .line 62
    const/4 v2, 0x3

    .line 63
    if-eq v0, v2, :cond_0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 68
    const-string v5, "FAIL"

    .line 70
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 76
    const-string v5, "BUSY"

    .line 78
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 84
    const-string v5, "NACK"

    .line 86
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 92
    const-string v5, "ACK"

    .line 94
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_1
    if-nez v0, :cond_4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 102
    if-lt v1, v4, :cond_6

    .line 104
    :goto_2
    if-eqz v0, :cond_5

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "Failed to send "

    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, " with errorCode="

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    const-string v2, "HdmiCecController"

    .line 132
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 137
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$7$1;

    .line 139
    invoke-direct {v2, p0, v0}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    .line 142
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 145
    return-void

    .line 146
    :cond_6
    move v1, v2

    .line 147
    goto :goto_0
.end method
