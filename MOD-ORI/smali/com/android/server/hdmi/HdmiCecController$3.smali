.class public final Lcom/android/server/hdmi/HdmiCecController$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

.field public final synthetic val$deviceType:I

.field public final synthetic val$preferredAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiControlService$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-ne v3, v4, :cond_9

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    :goto_0
    const/16 v6, 0x10

    .line 45
    .line 46
    if-ge v5, v6, :cond_4

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-static {v1, v5}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    iget-object v6, v0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    const/16 v7, 0xc

    .line 77
    .line 78
    if-eq v5, v7, :cond_1

    .line 79
    .line 80
    const/16 v7, 0xd

    .line 81
    .line 82
    if-ne v5, v7, :cond_2

    .line 83
    .line 84
    :cond_1
    const/4 v7, 0x6

    .line 85
    if-lt v6, v7, :cond_3

    .line 86
    .line 87
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_7

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Ljava/lang/Integer;

    .line 112
    .line 113
    move v6, v4

    .line 114
    :goto_2
    const/4 v7, 0x3

    .line 115
    if-ge v6, v7, :cond_6

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    const/4 v9, 0x1

    .line 126
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    const/16 v3, 0xf

    .line 142
    .line 143
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const-string v4, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    .line 160
    .line 161
    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    if-eqz p0, :cond_8

    .line 165
    .line 166
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$4;

    .line 167
    .line 168
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$21;II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    return-void

    .line 175
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v0, "Should run on io thread."

    .line 178
    .line 179
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method
