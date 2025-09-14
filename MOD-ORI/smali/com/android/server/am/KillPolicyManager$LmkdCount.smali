.class public final enum Lcom/android/server/am/KillPolicyManager$LmkdCount;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;


# instance fields
.field private mADJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 2
    .line 3
    const-string v1, "CACHED_APP_MAX_ADJ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x3e7

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 12
    .line 13
    const/16 v3, 0x384

    .line 14
    .line 15
    const-string v4, "CACHED_APP_MIN_ADJ"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v5, v3, v4}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 22
    .line 23
    const/16 v4, 0x35c

    .line 24
    .line 25
    const-string v5, "SEEDBED_ADJ"

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 32
    .line 33
    const/16 v5, 0x352

    .line 34
    .line 35
    const-string v6, "PICKED_ADJ"

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 42
    .line 43
    const/16 v6, 0x33e

    .line 44
    .line 45
    const-string v7, "ARCHIVED_ADJ"

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 52
    .line 53
    const/16 v7, 0x320

    .line 54
    .line 55
    const-string v8, "SERVICE_B_ADJ"

    .line 56
    .line 57
    const/4 v9, 0x5

    .line 58
    invoke-direct {v6, v9, v7, v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 62
    .line 63
    const/16 v8, 0x2bc

    .line 64
    .line 65
    const-string v9, "PREVIOUS_APP_ADJ"

    .line 66
    .line 67
    const/4 v10, 0x6

    .line 68
    invoke-direct {v7, v10, v8, v9}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v8, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 72
    .line 73
    const/16 v9, 0x258

    .line 74
    .line 75
    const-string v10, "HOME_APP_ADJ"

    .line 76
    .line 77
    const/4 v11, 0x7

    .line 78
    invoke-direct {v8, v11, v9, v10}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v9, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 82
    .line 83
    const/16 v10, 0x1f4

    .line 84
    .line 85
    const-string v11, "SERVICE_ADJ"

    .line 86
    .line 87
    const/16 v12, 0x8

    .line 88
    .line 89
    invoke-direct {v9, v12, v10, v11}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v10, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 93
    .line 94
    const/16 v11, 0x190

    .line 95
    .line 96
    const-string v12, "HEAVY_WEIGHT_APP_ADJ"

    .line 97
    .line 98
    const/16 v13, 0x9

    .line 99
    .line 100
    invoke-direct {v10, v13, v11, v12}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v11, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 104
    .line 105
    const/16 v12, 0x15e

    .line 106
    .line 107
    const-string v13, "BORA_APP_ADJ"

    .line 108
    .line 109
    const/16 v14, 0xa

    .line 110
    .line 111
    invoke-direct {v11, v14, v12, v13}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v12, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 115
    .line 116
    const/16 v13, 0x12c

    .line 117
    .line 118
    const-string v14, "BACKUP_APP_ADJ"

    .line 119
    .line 120
    const/16 v15, 0xb

    .line 121
    .line 122
    invoke-direct {v12, v15, v13, v14}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v13, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 126
    .line 127
    const/16 v14, 0xfa

    .line 128
    .line 129
    const-string v15, "PERCEPTIBLE_LOW_APP_ADJ"

    .line 130
    .line 131
    const/16 v2, 0xc

    .line 132
    .line 133
    invoke-direct {v13, v2, v14, v15}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v14, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 137
    .line 138
    const/16 v2, 0xe1

    .line 139
    .line 140
    const-string v15, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    .line 141
    .line 142
    move-object/from16 v17, v13

    .line 143
    .line 144
    const/16 v13, 0xd

    .line 145
    .line 146
    invoke-direct {v14, v13, v2, v15}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v15, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 150
    .line 151
    const/16 v2, 0xc8

    .line 152
    .line 153
    const-string v13, "PERCEPTIBLE_APP_ADJ"

    .line 154
    .line 155
    move-object/from16 v18, v14

    .line 156
    .line 157
    const/16 v14, 0xe

    .line 158
    .line 159
    invoke-direct {v15, v14, v2, v13}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v14, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 163
    .line 164
    const/16 v2, 0x64

    .line 165
    .line 166
    const-string v13, "VISIBLE_APP_ADJ"

    .line 167
    .line 168
    move-object/from16 v19, v15

    .line 169
    .line 170
    const/16 v15, 0xf

    .line 171
    .line 172
    invoke-direct {v14, v15, v2, v13}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v15, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 176
    .line 177
    const-string v2, "FOREGROUND_APP_ADJ"

    .line 178
    .line 179
    const/16 v13, 0x10

    .line 180
    .line 181
    move-object/from16 v20, v14

    .line 182
    .line 183
    const/4 v14, 0x0

    .line 184
    invoke-direct {v15, v13, v14, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCount;-><init>(IILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object v2, v3

    .line 188
    move-object v3, v4

    .line 189
    move-object v4, v5

    .line 190
    move-object v5, v6

    .line 191
    move-object v6, v7

    .line 192
    move-object v7, v8

    .line 193
    move-object v8, v9

    .line 194
    move-object v9, v10

    .line 195
    move-object v10, v11

    .line 196
    move-object v11, v12

    .line 197
    move-object/from16 v12, v17

    .line 198
    .line 199
    move-object/from16 v13, v18

    .line 200
    .line 201
    move-object/from16 v16, v20

    .line 202
    .line 203
    move-object/from16 v14, v19

    .line 204
    .line 205
    move-object/from16 v17, v15

    .line 206
    .line 207
    move-object/from16 v15, v16

    .line 208
    .line 209
    move-object/from16 v16, v17

    .line 210
    .line 211
    filled-new-array/range {v0 .. v16}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 216
    .line 217
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->$VALUES:[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$LmkdCount;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/am/KillPolicyManager$LmkdCount;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getADJ()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCount;->mADJ:I

    .line 2
    .line 3
    return p0
.end method
