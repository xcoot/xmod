.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 9
    .line 10
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setShowIMEWithHardKeyboard$12(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 18
    .line 19
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 20
    .line 21
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMobileNetworkType$105(I)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 29
    .line 30
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 31
    .line 32
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUserInactivityTimeout$94(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 40
    .line 41
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 42
    .line 43
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setFlightModeState$49(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 51
    .line 52
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 53
    .line 54
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexHomeAlignment$8(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 62
    .line 63
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 64
    .line 65
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexScreenTimeout$7(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 73
    .line 74
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 75
    .line 76
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setWifiHotspotEnabledState$116(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 84
    .line 85
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 86
    .line 87
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenTimeout$81(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 95
    .line 96
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 97
    .line 98
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerSavingMode$41(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 106
    .line 107
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 108
    .line 109
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getFavoriteApp$133(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 117
    .line 118
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 119
    .line 120
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerDialogItems$19(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 128
    .line 129
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 130
    .line 131
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAppsButtonState$129(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 139
    .line 140
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 141
    .line 142
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getProcessName$152(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 150
    .line 151
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 152
    .line 153
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setZeroPageState$135(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 161
    .line 162
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 163
    .line 164
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$deleteHomeScreenPage$128(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 172
    .line 173
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 174
    .line 175
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$clearAnimation$99(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 183
    .line 184
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 185
    .line 186
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setBrightness$50(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 194
    .line 195
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 196
    .line 197
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeFavoriteApp$132(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 205
    .line 206
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda33;->f$1:I

    .line 207
    .line 208
    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHomeScreenMode$138(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
.end method
