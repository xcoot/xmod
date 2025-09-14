.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mACInterfacesSpec:I

.field public mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field public mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

.field public mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field public final mDescriptors:Ljava/util/ArrayList;

.field public final mDeviceAddr:Ljava/lang/String;

.field public mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v0, 0x80

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string p1, "UsbDescriptorParser"

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/usb/descriptors/ByteStream;

    .line 22
    .line 23
    invoke-direct {v0, p2}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-lez p2, :cond_3

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 33
    .line 34
    .line 35
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p2

    .line 38
    const-string v1, "Exception allocating USB descriptor."

    .line 39
    .line 40
    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    :goto_1
    if-eqz p2, :cond_0

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :catch_1
    move-exception v1

    .line 62
    :try_start_2
    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "Exception parsing USB descriptors. type:0x"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-byte v3, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " status:"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v3, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    array-length v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    const-string v3, " @ "

    .line 103
    .line 104
    const-string v4, "  class:"

    .line 105
    .line 106
    if-lez v2, :cond_1

    .line 107
    .line 108
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    aget-object v6, v1, v5

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    aget-object v5, v1, v5

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_1
    array-length v2, v1

    .line 146
    const/4 v5, 0x1

    .line 147
    if-le v2, v5, :cond_2

    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    aget-object v4, v1, v5

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    aget-object v1, v1, v5

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_2
    const/4 v1, 0x4

    .line 186
    iput v1, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :goto_3
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_3
    return-void
.end method

.method public static doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-ge v1, v4, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 16
    .line 17
    move v5, v0

    .line 18
    :goto_1
    iget-byte v6, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 19
    .line 20
    if-ge v5, v6, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-gtz v2, :cond_3

    .line 44
    .line 45
    if-lez v3, :cond_4

    .line 46
    .line 47
    :cond_3
    const/4 v0, 0x1

    .line 48
    :cond_4
    return v0
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public final allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    .line 5
    .line 6
    .line 7
    move-result v7

    .line 8
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v8, v1, :cond_26

    .line 14
    .line 15
    const-string v2, "UsbDescriptorParser"

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v8, v3, :cond_24

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x3

    .line 22
    if-eq v8, v4, :cond_22

    .line 23
    .line 24
    const/4 v6, 0x5

    .line 25
    if-eq v8, v6, :cond_20

    .line 26
    .line 27
    const/16 v4, 0xb

    .line 28
    .line 29
    if-eq v8, v4, :cond_1f

    .line 30
    .line 31
    const/16 v4, 0x21

    .line 32
    .line 33
    if-eq v8, v4, :cond_1e

    .line 34
    .line 35
    const/16 v4, 0x24

    .line 36
    .line 37
    const/16 v6, 0x10

    .line 38
    .line 39
    const/16 v9, 0xe

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-eq v8, v4, :cond_9

    .line 43
    .line 44
    const/16 v4, 0x25

    .line 45
    .line 46
    if-eq v8, v4, :cond_0

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 51
    .line 52
    if-eqz v4, :cond_27

    .line 53
    .line 54
    iget v4, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 55
    .line 56
    if-eq v4, v1, :cond_2

    .line 57
    .line 58
    if-eq v4, v9, :cond_1

    .line 59
    .line 60
    if-eq v4, v6, :cond_8

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "  Unparsed Class-specific Endpoint:0x"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v4, p1, v2}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_8

    .line 78
    .line 79
    if-eq p1, v1, :cond_8

    .line 80
    .line 81
    if-eq p1, v3, :cond_8

    .line 82
    .line 83
    if-eq p1, v5, :cond_8

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Unknown Video Class Endpoint id:0x"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "UsbVCEndpoint"

    .line 93
    .line 94
    invoke-static {p1, v0, v1}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 103
    .line 104
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 105
    .line 106
    if-eq v2, v1, :cond_7

    .line 107
    .line 108
    if-eq v2, v3, :cond_6

    .line 109
    .line 110
    const-string v4, "UsbACEndpoint"

    .line 111
    .line 112
    if-eq v2, v5, :cond_3

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "Unknown Audio Class Endpoint id:0x"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, p1, v4}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    if-eq p1, v1, :cond_5

    .line 126
    .line 127
    if-eq p1, v3, :cond_4

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "Unknown Midi Endpoint id:0x"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0, v4}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;

    .line 141
    .line 142
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 143
    .line 144
    .line 145
    new-array p1, v0, [B

    .line 146
    .line 147
    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 151
    .line 152
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 153
    .line 154
    .line 155
    new-array p1, v0, [B

    .line 156
    .line 157
    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    .line 161
    .line 162
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_7
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    .line 167
    .line 168
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 172
    .line 173
    if-eqz p0, :cond_27

    .line 174
    .line 175
    if-eqz v10, :cond_27

    .line 176
    .line 177
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_9
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 182
    .line 183
    if-eqz v4, :cond_27

    .line 184
    .line 185
    iget v4, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 186
    .line 187
    if-eq v4, v1, :cond_b

    .line 188
    .line 189
    if-eq v4, v9, :cond_a

    .line 190
    .line 191
    if-eq v4, v6, :cond_27

    .line 192
    .line 193
    const-string p0, "  Unparsed Class-specific"

    .line 194
    .line 195
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    goto/16 :goto_4

    .line 199
    .line 200
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    packed-switch p0, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v0, "Unknown Video Class Interface subtype: 0x"

    .line 210
    .line 211
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v0, "UsbVCInterface"

    .line 215
    .line 216
    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :pswitch_0
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    .line 222
    .line 223
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :pswitch_1
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    .line 229
    .line 230
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :pswitch_2
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    .line 236
    .line 237
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :pswitch_3
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    .line 243
    .line 244
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_4

    .line 248
    .line 249
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCHeader;

    .line 254
    .line 255
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 256
    .line 257
    .line 258
    iput p0, v10, Lcom/android/server/usb/descriptors/UsbVCHeader;->mVDCRelease:I

    .line 259
    .line 260
    goto/16 :goto_4

    .line 261
    .line 262
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 267
    .line 268
    iget v6, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 269
    .line 270
    const/16 v2, 0x200

    .line 271
    .line 272
    const-string v9, "UsbACInterface"

    .line 273
    .line 274
    if-eq v6, v1, :cond_19

    .line 275
    .line 276
    if-eq v6, v3, :cond_10

    .line 277
    .line 278
    if-eq v6, v5, :cond_c

    .line 279
    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v0, "Unknown Audio Class Interface Subclass: 0x"

    .line 283
    .line 284
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v6, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_c
    if-eq v4, v1, :cond_f

    .line 293
    .line 294
    if-eq v4, v3, :cond_e

    .line 295
    .line 296
    if-eq v4, v5, :cond_d

    .line 297
    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v0, "Unknown MIDI Streaming Interface subtype:0x"

    .line 301
    .line 302
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v4, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_d
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;

    .line 311
    .line 312
    invoke-direct {v10, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :cond_e
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;

    .line 318
    .line 319
    invoke-direct {v10, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_f
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 325
    .line 326
    invoke-direct {v10, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_10
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 332
    .line 333
    if-eq v4, v1, :cond_17

    .line 334
    .line 335
    if-eq v4, v3, :cond_11

    .line 336
    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v0, "Unknown Audio Streaming Interface subtype:0x"

    .line 340
    .line 341
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v4, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 354
    .line 355
    if-eq p1, v1, :cond_15

    .line 356
    .line 357
    if-eq p1, v3, :cond_13

    .line 358
    .line 359
    if-eq p1, v5, :cond_12

    .line 360
    .line 361
    new-instance v0, Lcom/android/server/usb/descriptors/UsbASFormat;

    .line 362
    .line 363
    move-object v1, v0

    .line 364
    move v2, v7

    .line 365
    move v3, v8

    .line 366
    move v5, p1

    .line 367
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 368
    .line 369
    .line 370
    :goto_1
    move-object v10, v0

    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :cond_12
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    .line 374
    .line 375
    move-object v1, v0

    .line 376
    move v2, v7

    .line 377
    move v3, v8

    .line 378
    move v5, p1

    .line 379
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_13
    if-ne v0, v2, :cond_14

    .line 384
    .line 385
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    .line 386
    .line 387
    move-object v1, v0

    .line 388
    move v2, v7

    .line 389
    move v3, v8

    .line 390
    move v5, p1

    .line 391
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 392
    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_14
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    .line 396
    .line 397
    move-object v1, v0

    .line 398
    move v2, v7

    .line 399
    move v3, v8

    .line 400
    move v5, p1

    .line 401
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 402
    .line 403
    .line 404
    goto :goto_1

    .line 405
    :cond_15
    if-ne v0, v2, :cond_16

    .line 406
    .line 407
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    .line 408
    .line 409
    move-object v1, v0

    .line 410
    move v2, v7

    .line 411
    move v3, v8

    .line 412
    move v5, p1

    .line 413
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 414
    .line 415
    .line 416
    goto :goto_1

    .line 417
    :cond_16
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    .line 418
    .line 419
    move-object v1, v0

    .line 420
    move v2, v7

    .line 421
    move v3, v8

    .line 422
    move v5, p1

    .line 423
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_17
    if-ne v0, v2, :cond_18

    .line 428
    .line 429
    new-instance v10, Lcom/android/server/usb/descriptors/Usb20ASGeneral;

    .line 430
    .line 431
    invoke-direct {v10, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_3

    .line 435
    .line 436
    :cond_18
    new-instance v10, Lcom/android/server/usb/descriptors/Usb10ASGeneral;

    .line 437
    .line 438
    invoke-direct {v10, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_3

    .line 442
    .line 443
    :cond_19
    packed-switch v4, :pswitch_data_1

    .line 444
    .line 445
    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v0, "Unknown Audio Class Interface subtype:0x"

    .line 449
    .line 450
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    new-instance p1, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;

    .line 468
    .line 469
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 470
    .line 471
    .line 472
    :goto_2
    move-object v10, p1

    .line 473
    goto/16 :goto_3

    .line 474
    .line 475
    :pswitch_5
    new-instance p1, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;

    .line 476
    .line 477
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :pswitch_6
    new-instance p1, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;

    .line 482
    .line 483
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 484
    .line 485
    .line 486
    goto :goto_2

    .line 487
    :pswitch_7
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 488
    .line 489
    if-ne p1, v2, :cond_1a

    .line 490
    .line 491
    new-instance p1, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;

    .line 492
    .line 493
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 494
    .line 495
    .line 496
    goto :goto_2

    .line 497
    :cond_1a
    new-instance p1, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;

    .line 498
    .line 499
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 500
    .line 501
    .line 502
    goto :goto_2

    .line 503
    :pswitch_8
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 504
    .line 505
    if-ne p1, v2, :cond_1b

    .line 506
    .line 507
    new-instance p1, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;

    .line 508
    .line 509
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 510
    .line 511
    .line 512
    goto :goto_2

    .line 513
    :cond_1b
    new-instance p1, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;

    .line 514
    .line 515
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 516
    .line 517
    .line 518
    goto :goto_2

    .line 519
    :pswitch_9
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 520
    .line 521
    if-ne p1, v2, :cond_1c

    .line 522
    .line 523
    new-instance p1, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;

    .line 524
    .line 525
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 526
    .line 527
    .line 528
    goto :goto_2

    .line 529
    :cond_1c
    new-instance p1, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;

    .line 530
    .line 531
    invoke-direct {p1, v7, v8, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 532
    .line 533
    .line 534
    goto :goto_2

    .line 535
    :pswitch_a
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 540
    .line 541
    if-ne p1, v2, :cond_1d

    .line 542
    .line 543
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACHeader;

    .line 544
    .line 545
    move-object v1, v0

    .line 546
    move v2, v7

    .line 547
    move v3, v8

    .line 548
    move v5, v6

    .line 549
    move v6, p1

    .line 550
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :cond_1d
    new-instance v9, Lcom/android/server/usb/descriptors/Usb10ACHeader;

    .line 556
    .line 557
    move-object v1, v9

    .line 558
    move v2, v7

    .line 559
    move v3, v8

    .line 560
    move v5, v6

    .line 561
    move v6, p1

    .line 562
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    .line 563
    .line 564
    .line 565
    iput-byte v0, v9, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    .line 566
    .line 567
    iput-object v10, v9, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    .line 568
    .line 569
    move-object v10, v9

    .line 570
    :goto_3
    instance-of p1, v10, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 571
    .line 572
    if-eqz p1, :cond_27

    .line 573
    .line 574
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 575
    .line 576
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 577
    .line 578
    goto/16 :goto_4

    .line 579
    .line 580
    :cond_1e
    new-instance v10, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    .line 581
    .line 582
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 583
    .line 584
    .line 585
    iput v5, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 586
    .line 587
    goto/16 :goto_4

    .line 588
    .line 589
    :cond_1f
    new-instance v10, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    .line 590
    .line 591
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_4

    .line 595
    .line 596
    :cond_20
    new-instance v10, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 597
    .line 598
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 599
    .line 600
    .line 601
    iput v4, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 602
    .line 603
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 604
    .line 605
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 606
    .line 607
    if-eqz p1, :cond_21

    .line 608
    .line 609
    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    goto :goto_4

    .line 615
    :cond_21
    const-string p1, "Endpoint Descriptor found with no associated Interface Descriptor!"

    .line 616
    .line 617
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    .line 621
    .line 622
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    throw v0

    .line 626
    :cond_22
    new-instance v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 627
    .line 628
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 629
    .line 630
    .line 631
    new-instance p1, Ljava/util/ArrayList;

    .line 632
    .line 633
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .line 635
    .line 636
    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    .line 637
    .line 638
    iput v5, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 639
    .line 640
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 641
    .line 642
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 643
    .line 644
    if-eqz p1, :cond_23

    .line 645
    .line 646
    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 647
    .line 648
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    goto :goto_4

    .line 652
    :cond_23
    const-string p1, "Interface Descriptor found with no associated Config Descriptor!"

    .line 653
    .line 654
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    .line 658
    .line 659
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    throw v0

    .line 663
    :cond_24
    new-instance v10, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 664
    .line 665
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 666
    .line 667
    .line 668
    new-instance p1, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .line 672
    .line 673
    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 674
    .line 675
    iput v3, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 676
    .line 677
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 678
    .line 679
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 680
    .line 681
    if-eqz p1, :cond_25

    .line 682
    .line 683
    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    goto :goto_4

    .line 689
    :cond_25
    const-string p1, "Config Descriptor found with no associated Device Descriptor!"

    .line 690
    .line 691
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    .line 695
    .line 696
    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    throw v0

    .line 700
    :cond_26
    new-instance v10, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 701
    .line 702
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 703
    .line 704
    .line 705
    new-instance p1, Ljava/util/ArrayList;

    .line 706
    .line 707
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .line 709
    .line 710
    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 711
    .line 712
    iput v1, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    .line 713
    .line 714
    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 715
    .line 716
    :cond_27
    :goto_4
    :pswitch_b
    if-nez v10, :cond_28

    .line 717
    .line 718
    new-instance v10, Lcom/android/server/usb/descriptors/UsbUnknown;

    .line 719
    .line 720
    invoke-direct {v10, v8, v7}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    .line 721
    .line 722
    .line 723
    :cond_28
    return-object v10

    .line 724
    nop

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final calculateNumLegacyMidiPorts(Z)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "UsbDescriptorParser"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 20
    .line 21
    iget-byte v2, v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    instance-of v2, v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Unrecognized Config l: "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v3, v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " t:0x"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-byte v0, v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 57
    :goto_1
    const/4 p0, 0x0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const-string p1, "Config not found"

    .line 61
    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 89
    .line 90
    iget v4, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 91
    .line 92
    if-ne v4, v3, :cond_4

    .line 93
    .line 94
    iget v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 95
    .line 96
    const/4 v4, 0x3

    .line 97
    if-ne v3, v4, :cond_4

    .line 98
    .line 99
    iget-object v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 100
    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 104
    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    check-cast v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 108
    .line 109
    iget v3, v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->mMidiStreamingClass:I

    .line 110
    .line 111
    const/16 v4, 0x100

    .line 112
    .line 113
    if-ne v3, v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move v1, p0

    .line 124
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_9

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 135
    .line 136
    move v4, p0

    .line 137
    :goto_3
    iget-byte v5, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    .line 138
    .line 139
    if-ge v4, v5, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_7

    .line 150
    .line 151
    move v6, v3

    .line 152
    goto :goto_4

    .line 153
    :cond_7
    move v6, p0

    .line 154
    :goto_4
    if-ne v6, p1, :cond_8

    .line 155
    .line 156
    iget-object v5, v5, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 157
    .line 158
    if-eqz v5, :cond_8

    .line 159
    .line 160
    instance-of v6, v5, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 161
    .line 162
    if-eqz v6, :cond_8

    .line 163
    .line 164
    check-cast v5, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 165
    .line 166
    iget-byte v5, v5, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    .line 167
    .line 168
    add-int/2addr v1, v5

    .line 169
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    return v1
.end method

.method public final findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 26
    .line 27
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 32
    .line 33
    iget v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    check-cast v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 47
    .line 48
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->mMidiStreamingClass:I

    .line 49
    .line 50
    if-ne v2, p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "Undefined Audio Class Interface l: "

    .line 59
    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v3, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, " t:0x"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-byte v1, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 74
    .line 75
    const-string v3, "UsbDescriptorParser"

    .line 76
    .line 77
    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return-object v0
.end method

.method public final getACInterfaceDescriptors(B)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 23
    .line 24
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 25
    .line 26
    const/16 v3, 0x24

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 36
    .line 37
    iget-byte v3, v2, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    .line 38
    .line 39
    if-ne v3, p1, :cond_0

    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v2, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Unrecognized Audio Interface len: "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v3, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, " type:0x"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-byte v1, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 68
    .line 69
    const-string v3, "UsbDescriptorParser"

    .line 70
    .line 71
    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-object v0
.end method

.method public final getDescriptorString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 23
    .line 24
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 37
    .line 38
    if-ne v2, p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "Unrecognized Interface l: "

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v3, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " t:0x"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-byte v1, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 62
    .line 63
    const-string v3, "UsbDescriptorParser"

    .line 64
    .line 65
    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-object v0
.end method

.method public final getRawDescriptors()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hasAudioTerminal(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 18
    .line 19
    instance-of v1, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 24
    .line 25
    iget v1, v0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    iget-byte v1, v0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    .line 31
    .line 32
    if-ne v1, p1, :cond_0

    .line 33
    .line 34
    iget v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 35
    .line 36
    const/16 v1, 0x101

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final hasAudioTerminalExcludeType(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 18
    .line 19
    instance-of v1, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 24
    .line 25
    iget v1, v0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    iget-byte v1, v0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    .line 31
    .line 32
    if-ne v1, p1, :cond_0

    .line 33
    .line 34
    iget v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 35
    .line 36
    const/16 v1, 0x101

    .line 37
    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final hasHIDInterface()Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method

.method public final hasMIDIInterface()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 21
    .line 22
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 27
    .line 28
    iget v1, v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "Undefined Audio Class Interface l: "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v3, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " t:0x"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-byte v1, v1, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 52
    .line 53
    const-string v3, "UsbDescriptorParser"

    .line 54
    .line 55
    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final isDock()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x3

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 43
    .line 44
    const/16 v0, 0x602

    .line 45
    .line 46
    if-ne p0, v0, :cond_3

    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Undefined Audio Output terminal l: "

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 61
    .line 62
    iget v2, v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " t:0x"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 77
    .line 78
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 79
    .line 80
    const-string v2, "UsbDescriptorParser"

    .line 81
    .line 82
    invoke-static {p0, v0, v2}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_0
    return v1
.end method

.method public final isInputHeadset()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f400000    # 0.75f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const-string v6, "UsbDescriptorParser"

    .line 28
    .line 29
    const-string v7, " t:0x"

    .line 30
    .line 31
    const/16 v8, 0x402

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 40
    .line 41
    instance-of v9, v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 42
    .line 43
    if-eqz v9, :cond_3

    .line 44
    .line 45
    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 46
    .line 47
    iget v5, v5, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 48
    .line 49
    const/16 v9, 0x201

    .line 50
    .line 51
    if-eq v5, v9, :cond_2

    .line 52
    .line 53
    if-eq v5, v8, :cond_2

    .line 54
    .line 55
    const/16 v9, 0x400

    .line 56
    .line 57
    if-eq v5, v9, :cond_2

    .line 58
    .line 59
    const/16 v9, 0x603

    .line 60
    .line 61
    if-ne v5, v9, :cond_1

    .line 62
    .line 63
    :cond_2
    move v0, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v9, "Undefined Audio Input terminal l: "

    .line 68
    .line 69
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v9, v5, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-byte v5, v5, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 81
    .line 82
    invoke-static {v5, v8, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    move v0, v2

    .line 87
    :goto_1
    const/4 v5, 0x3

    .line 88
    invoke-virtual {p0, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_8

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 107
    .line 108
    instance-of v10, v9, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 109
    .line 110
    if-eqz v10, :cond_7

    .line 111
    .line 112
    check-cast v9, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 113
    .line 114
    iget v9, v9, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 115
    .line 116
    const/16 v10, 0x301

    .line 117
    .line 118
    if-eq v9, v10, :cond_6

    .line 119
    .line 120
    const/16 v10, 0x302

    .line 121
    .line 122
    if-eq v9, v10, :cond_6

    .line 123
    .line 124
    if-ne v9, v8, :cond_5

    .line 125
    .line 126
    :cond_6
    move v5, v3

    .line 127
    goto :goto_3

    .line 128
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v11, "Undefined Audio Output terminal l: "

    .line 131
    .line 132
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v11, v9, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 136
    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-byte v9, v9, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 144
    .line 145
    invoke-static {v9, v10, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    move v5, v2

    .line 150
    :goto_3
    if-eqz v0, :cond_9

    .line 151
    .line 152
    if-eqz v5, :cond_9

    .line 153
    .line 154
    move v4, v1

    .line 155
    :cond_9
    if-eqz v0, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-eqz p0, :cond_a

    .line 162
    .line 163
    const/high16 p0, 0x3e800000    # 0.25f

    .line 164
    .line 165
    add-float/2addr v4, p0

    .line 166
    :cond_a
    :goto_4
    cmpl-float p0, v4, v1

    .line 167
    .line 168
    if-ltz p0, :cond_b

    .line 169
    .line 170
    move v2, v3

    .line 171
    :cond_b
    return v2
.end method

.method public final isOutputHeadset()Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f400000    # 0.75f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move v5, v2

    .line 24
    move v6, v5

    .line 25
    :goto_0
    move v7, v6

    .line 26
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-eqz v8, :cond_6

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    check-cast v8, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 37
    .line 38
    instance-of v9, v8, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 39
    .line 40
    if-eqz v9, :cond_5

    .line 41
    .line 42
    check-cast v8, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 43
    .line 44
    iget v9, v8, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    .line 45
    .line 46
    const/16 v10, 0x301

    .line 47
    .line 48
    if-ne v9, v10, :cond_3

    .line 49
    .line 50
    iget-byte v6, v8, Lcom/android/server/usb/descriptors/UsbACTerminal;->mAssocTerminal:B

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    move v6, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v6, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/16 v8, 0x302

    .line 59
    .line 60
    if-eq v9, v8, :cond_4

    .line 61
    .line 62
    const/16 v8, 0x402

    .line 63
    .line 64
    if-ne v9, v8, :cond_1

    .line 65
    .line 66
    :cond_4
    move v5, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v10, "Undefined Audio Output terminal l: "

    .line 71
    .line 72
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v10, v8, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v10, " t:0x"

    .line 81
    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-byte v8, v8, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 86
    .line 87
    const-string v10, "UsbDescriptorParser"

    .line 88
    .line 89
    invoke-static {v8, v9, v10}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const/high16 v0, 0x3e800000    # 0.25f

    .line 94
    .line 95
    if-eqz v5, :cond_7

    .line 96
    .line 97
    move v4, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    if-eqz v6, :cond_b

    .line 100
    .line 101
    if-eqz v7, :cond_8

    .line 102
    .line 103
    move v4, v1

    .line 104
    goto :goto_2

    .line 105
    :cond_8
    const/high16 v4, 0x3f000000    # 0.5f

    .line 106
    .line 107
    :goto_2
    iget-object v7, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    move v8, v2

    .line 114
    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_a

    .line 119
    .line 120
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 125
    .line 126
    instance-of v10, v9, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    .line 127
    .line 128
    if-eqz v10, :cond_9

    .line 129
    .line 130
    check-cast v9, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    .line 131
    .line 132
    invoke-interface {v9}, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;->getChannelCount()B

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    goto :goto_3

    .line 141
    :cond_a
    const/4 v7, 0x2

    .line 142
    if-le v8, v7, :cond_b

    .line 143
    .line 144
    sub-float/2addr v4, v0

    .line 145
    :cond_b
    :goto_4
    if-nez v5, :cond_c

    .line 146
    .line 147
    if-eqz v6, :cond_d

    .line 148
    .line 149
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_d

    .line 154
    .line 155
    add-float/2addr v4, v0

    .line 156
    :cond_d
    :goto_5
    cmpl-float p0, v4, v1

    .line 157
    .line 158
    if-ltz p0, :cond_e

    .line 159
    .line 160
    move v2, v3

    .line 161
    :cond_e
    return v2
.end method

.method public final toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v0, "UsbDescriptorParser"

    .line 8
    .line 9
    const-string/jumbo v1, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 26
    .line 27
    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    .line 36
    .line 37
    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    iget-object v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    new-array v14, v2, [Landroid/hardware/usb/UsbConfiguration;

    .line 48
    .line 49
    const-string v4, "  "

    .line 50
    .line 51
    const-string v5, " configs"

    .line 52
    .line 53
    const-string v6, "UsbDeviceDescriptor"

    .line 54
    .line 55
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    move v4, v2

    .line 60
    :goto_0
    iget-object v5, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-ge v4, v5, :cond_2

    .line 67
    .line 68
    iget-object v5, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 75
    .line 76
    iget-byte v6, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    .line 77
    .line 78
    invoke-direct {v0, v3, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-instance v7, Landroid/hardware/usb/UsbConfiguration;

    .line 83
    .line 84
    iget v8, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    .line 85
    .line 86
    iget v9, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    .line 87
    .line 88
    iget v10, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    .line 89
    .line 90
    invoke-direct {v7, v8, v6, v9, v10}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v5, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_1

    .line 109
    .line 110
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    check-cast v8, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 115
    .line 116
    invoke-virtual {v8, v0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    new-array v5, v2, [Landroid/hardware/usb/UsbInterface;

    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, [Landroid/hardware/usb/UsbInterface;

    .line 131
    .line 132
    invoke-virtual {v7, v5}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 133
    .line 134
    .line 135
    aput-object v7, v14, v4

    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    new-instance v3, Landroid/hardware/usb/UsbDevice$Builder;

    .line 141
    .line 142
    iget v6, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 143
    .line 144
    iget v7, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 145
    .line 146
    iget v8, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    .line 147
    .line 148
    iget v9, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    .line 149
    .line 150
    iget v10, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    .line 151
    .line 152
    const/4 v1, 0x3

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(I)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    const/4 v5, 0x1

    .line 158
    const/4 v2, 0x2

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_3

    .line 166
    .line 167
    move/from16 v17, v5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    const/16 v17, 0x0

    .line 171
    .line 172
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(I)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_4

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_4

    .line 183
    .line 184
    move v1, v5

    .line 185
    goto :goto_3

    .line 186
    :cond_4
    const/4 v1, 0x0

    .line 187
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    .line 188
    .line 189
    .line 190
    move-result v18

    .line 191
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_6

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 208
    .line 209
    instance-of v4, v4, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    .line 210
    .line 211
    if-eqz v4, :cond_5

    .line 212
    .line 213
    move/from16 v19, v5

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_6
    const/16 v19, 0x0

    .line 217
    .line 218
    :goto_4
    iget-object v2, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_8

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 235
    .line 236
    instance-of v4, v4, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    .line 237
    .line 238
    if-eqz v4, :cond_7

    .line 239
    .line 240
    move/from16 v20, v5

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_8
    const/16 v20, 0x0

    .line 244
    .line 245
    :goto_5
    iget-object v5, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 246
    .line 247
    move-object v4, v3

    .line 248
    move/from16 v16, v17

    .line 249
    .line 250
    move/from16 v17, v1

    .line 251
    .line 252
    invoke-direct/range {v4 .. v20}, Landroid/hardware/usb/UsbDevice$Builder;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Ljava/lang/String;ZZZZZ)V

    .line 253
    .line 254
    .line 255
    return-object v3
.end method
