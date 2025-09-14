.class public final Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttributes:I

.field public mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

.field public mEndpointAddress:I

.field public mInterval:I

.field public mPacketSize:I


# virtual methods
.method public final getDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, -0x80

    .line 4
    .line 5
    return p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 28
    .line 29
    if-ne p0, v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 35
    .line 36
    .line 37
    :cond_0
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Address: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0xf

    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const-string v1, " [out]"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, " [in]"

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "Attributes: "

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    and-int/lit8 v1, v0, 0x3

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    if-eq v1, v2, :cond_3

    .line 83
    .line 84
    const/4 v3, 0x2

    .line 85
    if-eq v1, v3, :cond_2

    .line 86
    .line 87
    const/4 v3, 0x3

    .line 88
    if-eq v1, v3, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-string v3, "Interrupt"

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string v3, "Bulk"

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const-string v3, "Iso"

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const-string v3, "Control"

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 115
    .line 116
    .line 117
    if-ne v1, v2, :cond_c

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 120
    .line 121
    .line 122
    const-string v1, "Aync: "

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    and-int/lit8 v1, v0, 0xc

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    const/4 v2, 0x4

    .line 132
    if-eq v1, v2, :cond_6

    .line 133
    .line 134
    const/16 v2, 0x8

    .line 135
    .line 136
    if-eq v1, v2, :cond_5

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const-string v1, "ADAPTIVE ASYNC"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    const-string v1, "ASYNC"

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const-string v1, "NONE"

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    .line 160
    .line 161
    .line 162
    const-string v1, "Useage: "

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/16 v1, 0x30

    .line 168
    .line 169
    and-int/2addr v0, v1

    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    const/16 v2, 0x10

    .line 173
    .line 174
    if-eq v0, v2, :cond_a

    .line 175
    .line 176
    const/16 v2, 0x20

    .line 177
    .line 178
    if-eq v0, v2, :cond_9

    .line 179
    .line 180
    if-eq v0, v1, :cond_8

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    const-string v0, "RESERVED"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    const-string v0, "EXPLICIT FEEDBACK"

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    const-string v0, "FEEDBACK"

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_b
    const-string v0, "DATA"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    .line 207
    .line 208
    .line 209
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v1, "Package Size: "

    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v1, "Interval: "

    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    .line 236
    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 248
    .line 249
    .line 250
    return-void
.end method
