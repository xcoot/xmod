.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field public final mDestination:I

.field public final mOpcode:I

.field public final mParams:[B

.field public final mSource:I

.field public final mValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 2
    .line 3
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 3
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 p1, p3, 0xff

    .line 4
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 5
    array-length p1, p5

    invoke-static {p5, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 6
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 9

    and-int/lit16 v0, p3, 0xff

    .line 7
    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 8
    const-string v1, "No validation information for the opcode: "

    .line 9
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v7, v2

    goto :goto_1

    .line 11
    :cond_1
    iget v0, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validSources:I

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validDestinations:I

    invoke-static {p1, p2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v7, v0

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-interface {v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 13
    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 25
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method public static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 11

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x7fff

    const/16 v1, 0x73

    const/4 v2, 0x0

    if-eq p2, v1, :cond_5

    const/16 v1, 0xa6

    if-eq p2, v1, :cond_0

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    :cond_0
    const p2, 0x8000

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v7

    if-eqz v7, :cond_1

    .line 3
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0xa6

    move-object v3, p2

    move v4, p0

    move v5, p1

    move-object v8, p3

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    goto/16 :goto_0

    .line 5
    :cond_1
    array-length p2, p3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    .line 6
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0xa6

    const/4 v7, 0x4

    move-object v3, p2

    move v4, p0

    move v5, p1

    move-object v8, p3

    .line 7
    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    goto :goto_0

    .line 8
    :cond_2
    aget-byte p2, p3, v2

    invoke-static {p2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    const/4 p2, 0x2

    .line 9
    invoke-static {p2, p3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 10
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v8, 0xa6

    const/4 v9, 0x4

    move-object v5, p2

    move v6, p0

    move v7, p1

    move-object v10, p3

    .line 11
    invoke-direct/range {v5 .. v10}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-static {v0, p3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 13
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v8, 0xa6

    const/4 v9, 0x4

    move-object v5, p2

    move v6, p0

    move v7, p1

    move-object v10, p3

    .line 14
    invoke-direct/range {v5 .. v10}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {p2, p3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence(I[B)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 16
    array-length v0, p3

    invoke-static {p3, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v5

    .line 18
    new-instance p2, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move-object v0, p2

    move v1, p0

    move v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    :goto_0
    return-object p2

    .line 19
    :cond_5
    array-length p2, p3

    if-nez p2, :cond_6

    .line 20
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0x73

    const/4 v7, 0x4

    move-object v3, p2

    move v4, p0

    move v5, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    goto :goto_1

    .line 21
    :cond_6
    aget-byte p2, p3, v2

    .line 22
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result v5

    if-nez v5, :cond_7

    .line 23
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(III[B)V

    move-object p2, v0

    goto :goto_1

    .line 24
    :cond_7
    new-instance p2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    move-object v1, p2

    move v2, p0

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    :goto_1
    return-object p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 11
    .line 12
    if-ne v2, v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 15
    .line 16
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 21
    .line 22
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 39
    .line 40
    if-ne p0, p1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 20
    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const/16 v2, 0x64

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 10
    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    const/16 v4, 0x1a

    .line 14
    .line 15
    if-eq v3, v4, :cond_d

    .line 16
    .line 17
    const/16 v4, 0x1b

    .line 18
    .line 19
    if-eq v3, v4, :cond_c

    .line 20
    .line 21
    const/16 v4, 0x7d

    .line 22
    .line 23
    if-eq v3, v4, :cond_b

    .line 24
    .line 25
    const/16 v4, 0x7e

    .line 26
    .line 27
    if-eq v3, v4, :cond_a

    .line 28
    .line 29
    const/16 v4, 0x99

    .line 30
    .line 31
    if-eq v3, v4, :cond_9

    .line 32
    .line 33
    const/16 v4, 0x9a

    .line 34
    .line 35
    if-eq v3, v4, :cond_8

    .line 36
    .line 37
    if-eqz v3, :cond_e

    .line 38
    .line 39
    const/16 v4, 0xd

    .line 40
    .line 41
    if-eq v3, v4, :cond_7

    .line 42
    .line 43
    const/16 v4, 0xf

    .line 44
    .line 45
    if-eq v3, v4, :cond_6

    .line 46
    .line 47
    if-eq v3, v2, :cond_5

    .line 48
    .line 49
    const/16 v4, 0x67

    .line 50
    .line 51
    if-eq v3, v4, :cond_4

    .line 52
    .line 53
    const/16 v4, 0x7a

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    const/16 v4, 0x97

    .line 58
    .line 59
    if-eq v3, v4, :cond_2

    .line 60
    .line 61
    const/16 v4, 0xf8

    .line 62
    .line 63
    if-eq v3, v4, :cond_1

    .line 64
    .line 65
    const/16 v4, 0xff

    .line 66
    .line 67
    if-eq v3, v4, :cond_0

    .line 68
    .line 69
    packed-switch v3, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    packed-switch v3, :pswitch_data_1

    .line 73
    .line 74
    .line 75
    packed-switch v3, :pswitch_data_2

    .line 76
    .line 77
    .line 78
    packed-switch v3, :pswitch_data_3

    .line 79
    .line 80
    .line 81
    packed-switch v3, :pswitch_data_4

    .line 82
    .line 83
    .line 84
    packed-switch v3, :pswitch_data_5

    .line 85
    .line 86
    .line 87
    packed-switch v3, :pswitch_data_6

    .line 88
    .line 89
    .line 90
    packed-switch v3, :pswitch_data_7

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "Opcode: %02X"

    .line 102
    .line 103
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :pswitch_0
    const-string v4, "Select Digital Service"

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :pswitch_1
    const-string v4, "Select Analog Service"

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_2
    const-string v4, "Get Menu Language"

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :pswitch_3
    const-string v4, "Report Power Status"

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_4
    const-string v4, "Give Device Power Status"

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_5
    const-string v4, "Menu Status"

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :pswitch_6
    const-string v4, "Menu Request"

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :pswitch_7
    const-string v4, "Give Device Vendor Id"

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :pswitch_8
    const-string v4, "Vendor Remote Button Up"

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :pswitch_9
    const-string v4, "Vendor Remote Button Down"

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_a
    const-string v4, "Vendor Command"

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :pswitch_b
    const-string v4, "Device Vendor Id"

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :pswitch_c
    const-string v4, "Set Stream Path"

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_d
    const-string v4, "Request Active Source"

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :pswitch_e
    const-string v4, "Report Physical Address"

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_f
    const-string v4, "Give Physical Address"

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :pswitch_10
    const-string v4, "Active Source"

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :pswitch_11
    const-string v4, "Routing Information"

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_12
    const-string v4, "Routing Change"

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_13
    const-string v4, "Set Audio Volume Level"

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :pswitch_14
    const-string v4, "Set System Audio Mode"

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_15
    const-string v4, "Give Audio Status"

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_16
    const-string v4, "System Audio Mode Request"

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_17
    const-string v4, "Set Osd Name"

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_18
    const-string v4, "Give Osd Name"

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_19
    const-string v4, "User Control Release"

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_1a
    const-string v4, "User Control Pressed"

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_1b
    const-string v4, "Timer Cleared Status"

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_1c
    const-string v4, "Deck Control"

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_1d
    const-string v4, "Play"

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_1e
    const-string v4, "Standby"

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_1f
    const-string v4, "Timer Status"

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_20
    const-string v4, "Set Analog Timer"

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_21
    const-string v4, "Clear Analog Timer"

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_22
    const-string v4, "Set Menu Language"

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_23
    const-string v4, "Record Off"

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :pswitch_24
    const-string v4, "Record Status"

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_25
    const-string v4, "Record On"

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :pswitch_26
    const-string v4, "Give Tuner Device Status"

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :pswitch_27
    const-string v4, "Tuner Device Status"

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_28
    const-string v4, "Tuner Step Decrement"

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :pswitch_29
    const-string v4, "Tuner Step Increment"

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_2a
    const-string v4, "Image View On"

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :pswitch_2b
    const-string v4, "Terminate ARC"

    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :pswitch_2c
    const-string v4, "Request ARC Termination"

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :pswitch_2d
    const-string v4, "Request ARC Initiation"

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :pswitch_2e
    const-string v4, "Report ARC Terminated"

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :pswitch_2f
    const-string v4, "Report ARC Initiated"

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :pswitch_30
    const-string v4, "Initiate ARC"

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_31
    const-string v4, "Report Current Latency"

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :pswitch_32
    const-string v4, "Request Current Latency"

    .line 310
    .line 311
    goto :goto_0

    .line 312
    :pswitch_33
    const-string v4, "Report Features"

    .line 313
    .line 314
    goto :goto_0

    .line 315
    :pswitch_34
    const-string v4, "Give Features"

    .line 316
    .line 317
    goto :goto_0

    .line 318
    :pswitch_35
    const-string v4, "Request Short Audio Descriptor"

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :pswitch_36
    const-string v4, "Report Short Audio Descriptor"

    .line 322
    .line 323
    goto :goto_0

    .line 324
    :pswitch_37
    const-string v4, "Set External Timer"

    .line 325
    .line 326
    goto :goto_0

    .line 327
    :pswitch_38
    const-string v4, "Clear External Timer"

    .line 328
    .line 329
    goto :goto_0

    .line 330
    :pswitch_39
    const-string v4, "Vendor Command With Id"

    .line 331
    .line 332
    goto :goto_0

    .line 333
    :pswitch_3a
    const-string v4, "Get Cec Version"

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :pswitch_3b
    const-string v4, "Cec Version"

    .line 337
    .line 338
    goto :goto_0

    .line 339
    :pswitch_3c
    const-string v4, "InActive Source"

    .line 340
    .line 341
    goto :goto_0

    .line 342
    :cond_0
    const-string v4, "Abort"

    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_1
    const-string v4, "Cdc Message"

    .line 346
    .line 347
    goto :goto_0

    .line 348
    :cond_2
    const-string v4, "Set Digital Timer"

    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_3
    const-string v4, "Report Audio Status"

    .line 352
    .line 353
    goto :goto_0

    .line 354
    :cond_4
    const-string v4, "Set Timer Program Title"

    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_5
    const-string v4, "Set Osd String"

    .line 358
    .line 359
    goto :goto_0

    .line 360
    :cond_6
    const-string v4, "Record Tv Screen"

    .line 361
    .line 362
    goto :goto_0

    .line 363
    :cond_7
    const-string v4, "Text View On"

    .line 364
    .line 365
    goto :goto_0

    .line 366
    :cond_8
    const-string v4, "Set Audio Rate"

    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_9
    const-string v4, "Clear Digital Timer"

    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_a
    const-string v4, "System Audio Mode Status"

    .line 373
    .line 374
    goto :goto_0

    .line 375
    :cond_b
    const-string v4, "Give System Audio Mode Status"

    .line 376
    .line 377
    goto :goto_0

    .line 378
    :cond_c
    const-string v4, "Deck Status"

    .line 379
    .line 380
    goto :goto_0

    .line 381
    :cond_d
    const-string v4, "Give Deck Status"

    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_e
    const-string v4, "Feature Abort"

    .line 385
    .line 386
    :goto_0
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 387
    .line 388
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    iget v6, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 393
    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    const-string v5, "<%s> %X%X:%02X"

    .line 407
    .line 408
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 416
    .line 417
    array-length v5, v4

    .line 418
    const-string v6, ">"

    .line 419
    .line 420
    if-lez v5, :cond_12

    .line 421
    .line 422
    const/16 v5, 0x45

    .line 423
    .line 424
    if-eq v3, v5, :cond_11

    .line 425
    .line 426
    const/16 v5, 0x47

    .line 427
    .line 428
    if-eq v3, v5, :cond_11

    .line 429
    .line 430
    if-eq v3, v2, :cond_11

    .line 431
    .line 432
    const/16 v2, 0xa0

    .line 433
    .line 434
    if-eq v3, v2, :cond_11

    .line 435
    .line 436
    packed-switch v3, :pswitch_data_8

    .line 437
    .line 438
    .line 439
    const/16 v2, 0x44

    .line 440
    .line 441
    const/4 v5, 0x0

    .line 442
    if-ne v2, v3, :cond_10

    .line 443
    .line 444
    aget-byte v2, v4, v5

    .line 445
    .line 446
    sget-object v3, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 447
    .line 448
    const/16 v3, 0x10

    .line 449
    .line 450
    if-eq v2, v3, :cond_f

    .line 451
    .line 452
    const/16 v3, 0x11

    .line 453
    .line 454
    if-eq v2, v3, :cond_f

    .line 455
    .line 456
    packed-switch v2, :pswitch_data_9

    .line 457
    .line 458
    .line 459
    packed-switch v2, :pswitch_data_a

    .line 460
    .line 461
    .line 462
    packed-switch v2, :pswitch_data_b

    .line 463
    .line 464
    .line 465
    packed-switch v2, :pswitch_data_c

    .line 466
    .line 467
    .line 468
    packed-switch v2, :pswitch_data_d

    .line 469
    .line 470
    .line 471
    packed-switch v2, :pswitch_data_e

    .line 472
    .line 473
    .line 474
    packed-switch v2, :pswitch_data_f

    .line 475
    .line 476
    .line 477
    const-string v2, "Unknown"

    .line 478
    .line 479
    goto :goto_1

    .line 480
    :pswitch_3d
    const-string v2, "Function key"

    .line 481
    .line 482
    goto :goto_1

    .line 483
    :pswitch_3e
    const-string v2, "Power on"

    .line 484
    .line 485
    goto :goto_1

    .line 486
    :pswitch_3f
    const-string v2, "Power off"

    .line 487
    .line 488
    goto :goto_1

    .line 489
    :pswitch_40
    const-string v2, "Power toggle"

    .line 490
    .line 491
    goto :goto_1

    .line 492
    :pswitch_41
    const-string v2, "Functional"

    .line 493
    .line 494
    goto :goto_1

    .line 495
    :pswitch_42
    const-string v2, "Timer"

    .line 496
    .line 497
    goto :goto_1

    .line 498
    :pswitch_43
    const-string v2, "Media"

    .line 499
    .line 500
    goto :goto_1

    .line 501
    :pswitch_44
    const-string v2, "Volume mute"

    .line 502
    .line 503
    goto :goto_1

    .line 504
    :pswitch_45
    const-string v2, "Volume down"

    .line 505
    .line 506
    goto :goto_1

    .line 507
    :pswitch_46
    const-string v2, "Volume up"

    .line 508
    .line 509
    goto :goto_1

    .line 510
    :pswitch_47
    const-string v2, "Power"

    .line 511
    .line 512
    goto :goto_1

    .line 513
    :pswitch_48
    const-string v2, "Channel"

    .line 514
    .line 515
    goto :goto_1

    .line 516
    :pswitch_49
    const-string v2, "Number"

    .line 517
    .line 518
    goto :goto_1

    .line 519
    :pswitch_4a
    const-string v2, "General"

    .line 520
    .line 521
    goto :goto_1

    .line 522
    :pswitch_4b
    const-string v2, "Navigation"

    .line 523
    .line 524
    goto :goto_1

    .line 525
    :pswitch_4c
    const-string v2, "Select"

    .line 526
    .line 527
    goto :goto_1

    .line 528
    :cond_f
    :pswitch_4d
    const-string v2, "Menu"

    .line 529
    .line 530
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v4, " <Keycode type = "

    .line 533
    .line 534
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    goto :goto_3

    .line 551
    :cond_10
    array-length v2, v4

    .line 552
    :goto_2
    if-ge v5, v2, :cond_12

    .line 553
    .line 554
    aget-byte v3, v4, v5

    .line 555
    .line 556
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    const-string v7, ":%02X"

    .line 565
    .line 566
    invoke-static {v7, v3, v1, v5, v0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    goto :goto_2

    .line 571
    :cond_11
    :pswitch_4e
    array-length v2, v4

    .line 572
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    const-string v3, " <Redacted len=%d>"

    .line 581
    .line 582
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    :cond_12
    :goto_3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    .line 590
    .line 591
    if-eqz p0, :cond_18

    .line 592
    .line 593
    if-eqz p0, :cond_17

    .line 594
    .line 595
    if-eq p0, v0, :cond_16

    .line 596
    .line 597
    const/4 v0, 0x2

    .line 598
    if-eq p0, v0, :cond_15

    .line 599
    .line 600
    const/4 v0, 0x3

    .line 601
    if-eq p0, v0, :cond_14

    .line 602
    .line 603
    const/4 v0, 0x4

    .line 604
    if-eq p0, v0, :cond_13

    .line 605
    .line 606
    const-string/jumbo p0, "unknown error"

    .line 607
    .line 608
    .line 609
    goto :goto_4

    .line 610
    :cond_13
    const-string/jumbo p0, "short parameters"

    .line 611
    .line 612
    .line 613
    goto :goto_4

    .line 614
    :cond_14
    const-string/jumbo p0, "invalid parameters"

    .line 615
    .line 616
    .line 617
    goto :goto_4

    .line 618
    :cond_15
    const-string/jumbo p0, "invalid destination"

    .line 619
    .line 620
    .line 621
    goto :goto_4

    .line 622
    :cond_16
    const-string/jumbo p0, "invalid source"

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :cond_17
    const-string/jumbo p0, "ok"

    .line 627
    .line 628
    .line 629
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    const-string v2, " <Validation error: "

    .line 632
    .line 633
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p0

    .line 646
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    return-object p0

    .line 654
    nop

    .line 655
    :pswitch_data_0
    .packed-switch 0x9d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :pswitch_data_1
    .packed-switch 0xc0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

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
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :pswitch_data_5
    .packed-switch 0x70
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :pswitch_data_6
    .packed-switch 0x80
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :pswitch_data_7
    .packed-switch 0x89
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :pswitch_data_8
    .packed-switch 0x89
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4b
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4b
    .end packed-switch

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :pswitch_data_a
    .packed-switch 0x1d
        :pswitch_4a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
    .end packed-switch

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :pswitch_data_b
    .packed-switch 0x2f
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_4c
        :pswitch_4c
        :pswitch_4a
        :pswitch_4a
        :pswitch_4b
        :pswitch_4b
    .end packed-switch

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :pswitch_data_c
    .packed-switch 0x40
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
    .end packed-switch

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :pswitch_data_d
    .packed-switch 0x50
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_4a
        :pswitch_4c
        :pswitch_4c
    .end packed-switch

    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :pswitch_data_e
    .packed-switch 0x60
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    :pswitch_data_f
    .packed-switch 0x71
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method
