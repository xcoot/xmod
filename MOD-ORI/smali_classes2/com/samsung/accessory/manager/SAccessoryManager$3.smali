.class public final Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9

    .line 1
    const-string v0, "USBPD_IDS"

    .line 2
    .line 3
    const-string v1, "SAccessoryManager_SAccessoryManager"

    .line 4
    .line 5
    const-string v2, "SWITCH_STATE"

    .line 6
    .line 7
    const-string v3, "UEventObserver, event : "

    .line 8
    .line 9
    :try_start_0
    sget-boolean v4, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 27
    .line 28
    iget-boolean v4, v4, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    .line 29
    .line 30
    if-nez v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/16 v5, 0xc8

    .line 41
    .line 42
    if-eq v4, v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v4, ":"

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    .line 98
    :goto_0
    const-string v4, "b001b7ff"

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 105
    .line 106
    iget-boolean v5, v5, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    if-ne v5, v6, :cond_5

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    array-length v5, v0

    .line 114
    const/4 v7, 0x2

    .line 115
    if-ne v5, v7, :cond_5

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    aget-object v7, v0, v5

    .line 119
    .line 120
    const-string v8, "04e8"

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    aget-object v0, v0, v6

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    new-array v7, v7, [B

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    array-length v7, v0

    .line 141
    const/4 v8, 0x4

    .line 142
    if-ne v7, v8, :cond_3

    .line 143
    .line 144
    aget-byte v7, v0, v5

    .line 145
    .line 146
    aget-byte v5, v4, v5

    .line 147
    .line 148
    if-ne v7, v5, :cond_3

    .line 149
    .line 150
    aget-byte v0, v0, v6

    .line 151
    .line 152
    aget-byte v5, v4, v6

    .line 153
    .line 154
    if-lt v0, v5, :cond_3

    .line 155
    .line 156
    const/4 v5, 0x5

    .line 157
    aget-byte v4, v4, v5

    .line 158
    .line 159
    if-gt v0, v4, :cond_3

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    :goto_1
    const-string/jumbo p0, "uEvent switch state is not related with usb auth or Factory binary"

    .line 180
    .line 181
    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catch_0
    sget-boolean p0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 187
    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v0, "Could not parse switch state from event "

    .line 191
    .line 192
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_5
    :goto_2
    return-void
.end method
