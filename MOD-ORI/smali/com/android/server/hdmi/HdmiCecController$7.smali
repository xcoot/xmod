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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[S]:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 24
    .line 25
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 28
    .line 29
    array-length v3, v0

    .line 30
    const/4 v4, 0x1

    .line 31
    add-int/2addr v3, v4

    .line 32
    new-array v3, v3, [B

    .line 33
    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, v3, v1

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 46
    .line 47
    iget v5, v2, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 48
    .line 49
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 50
    .line 51
    invoke-interface {v0, v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    if-eq v0, v2, :cond_1

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    if-eq v0, v2, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 67
    .line 68
    const-string v5, "FAIL"

    .line 69
    .line 70
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 75
    .line 76
    const-string v5, "BUSY"

    .line 77
    .line 78
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 83
    .line 84
    const-string v5, "NACK"

    .line 85
    .line 86
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    .line 91
    .line 92
    const-string v5, "ACK"

    .line 93
    .line 94
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :goto_1
    if-nez v0, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 101
    .line 102
    if-lt v1, v4, :cond_6

    .line 103
    .line 104
    :goto_2
    if-eqz v0, :cond_5

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Failed to send "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, " with errorCode="

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "HdmiCecController"

    .line 131
    .line 132
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 136
    .line 137
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$7$1;

    .line 138
    .line 139
    invoke-direct {v2, p0, v0}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    move v1, v2

    .line 147
    goto :goto_0
.end method
