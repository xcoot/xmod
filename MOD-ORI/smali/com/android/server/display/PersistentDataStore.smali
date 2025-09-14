.class public final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightnessNitsForDefaultDisplay:F

.field public mDirty:Z

.field public final mDisplayStates:Ljava/util/HashMap;

.field public final mFileAccessLock:Ljava/lang/Object;

.field public final mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field public final mHandler:Landroid/os/Handler;

.field public mInitiatedMirroringUuid:Ljava/lang/String;

.field public final mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

.field public mIsFitToActiveDisplay:Z

.field public mLoaded:Z

.field public final mRememberedInitiatedDevices:Ljava/util/ArrayList;

.field public final mRememberedWifiDisplays:Ljava/util/ArrayList;

.field public final mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;


# direct methods
.method public constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 8
    new-instance v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 11
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 14
    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/hardware/display/WifiDisplay;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    move-object v3, p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    new-instance p0, Landroid/hardware/display/WifiDisplay;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    return-object p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "PersistentDataStore"

    .line 2
    .line 3
    const-string v1, "  mLoaded="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 10
    .line 11
    const-string v2, "  mDirty="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "  RememberedWifiDisplays:"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    move v2, v1

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const-string v4, ": "

    .line 47
    .line 48
    const-string v5, "    "

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/hardware/display/WifiDisplay;

    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v5, v2, 0x1

    .line 64
    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move v2, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "  DisplayStates:"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move v2, v1

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/Map$Entry;

    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v7, v2, 0x1

    .line 117
    .line 118
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v6, "      ColorMode="

    .line 152
    .line 153
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 157
    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v3, "      BrightnessValues: "

    .line 169
    .line 170
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    move v3, v1

    .line 174
    :goto_2
    iget-object v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-ge v3, v6, :cond_1

    .line 181
    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v8, "User: "

    .line 185
    .line 186
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v8, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v8, " Value: "

    .line 199
    .line 200
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v8, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_1
    const-string v3, "      DisplayBrightnessConfigurations: "

    .line 223
    .line 224
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v3, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 228
    .line 229
    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;)V

    .line 230
    .line 231
    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v6, "      Resolution="

    .line 235
    .line 236
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 240
    .line 241
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v6, " "

    .line 245
    .line 246
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 250
    .line 251
    const-string v8, "      RefreshRate="

    .line 252
    .line 253
    invoke-static {v3, v6, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    iget v2, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 258
    .line 259
    invoke-static {v3, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 260
    .line 261
    .line 262
    move v2, v7

    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_2
    const-string v0, "  StableDeviceValues:"

    .line 266
    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v2, "      StableDisplayWidth="

    .line 278
    .line 279
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v2, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 283
    .line 284
    const-string v3, "      StableDisplayHeight="

    .line 285
    .line 286
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iget v0, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v0, "  GlobalBrightnessConfigurations:"

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 308
    .line 309
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v1, "  mBrightnessNitsForDefaultDisplay="

    .line 315
    .line 316
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget p0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 320
    .line 321
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method public final findRememberedWifiDisplay(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, -0x1

    .line 33
    return p0
.end method

.method public final getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const-string/jumbo v4, "brightness-configurations"

    .line 7
    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const-string/jumbo v0, "display-manager-state"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    :cond_0
    :goto_0
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 25
    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v8, "remembered-wifi-displays"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :cond_1
    :goto_1
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_4

    .line 49
    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    const-string/jumbo v10, "wifi-display"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    const-string/jumbo v9, "deviceAddress"

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    const-string/jumbo v9, "deviceName"

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    const-string/jumbo v9, "deviceAlias"

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    const-string/jumbo v9, "deviceType"

    .line 85
    .line 86
    .line 87
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    if-eqz v11, :cond_3

    .line 92
    .line 93
    if-eqz v12, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1, v11}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-gez v9, :cond_2

    .line 100
    .line 101
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v15, Landroid/hardware/display/WifiDisplay;

    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    const/16 v18, 0x0

    .line 109
    .line 110
    move-object v10, v15

    .line 111
    move-object v6, v15

    .line 112
    move/from16 v15, v16

    .line 113
    .line 114
    move/from16 v16, v18

    .line 115
    .line 116
    invoke-direct/range {v10 .. v17}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 124
    .line 125
    const-string v1, "Found duplicate wifi display device address."

    .line 126
    .line 127
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 132
    .line 133
    const-string v1, "Missing deviceAddress or deviceName attribute on wifi-display."

    .line 134
    .line 135
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string/jumbo v6, "display-states"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const-string v6, "DisplayManager.PersistentDataStore"

    .line 151
    .line 152
    if-eqz v0, :cond_f

    .line 153
    .line 154
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    :cond_5
    :goto_2
    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_f

    .line 163
    .line 164
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string/jumbo v10, "display"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    const-string/jumbo v0, "unique-id"

    .line 178
    .line 179
    .line 180
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    if-eqz v10, :cond_e

    .line 185
    .line 186
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_d

    .line 193
    .line 194
    new-instance v11, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 195
    .line 196
    invoke-direct {v11}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    :goto_3
    invoke-static {v2, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    sparse-switch v13, :sswitch_data_0

    .line 221
    .line 222
    .line 223
    :goto_4
    const/4 v0, -0x1

    .line 224
    goto :goto_5

    .line 225
    :sswitch_0
    const-string/jumbo v13, "color-mode"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_6

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_6
    const/4 v0, 0x5

    .line 236
    goto :goto_5

    .line 237
    :sswitch_1
    const-string/jumbo v13, "refresh-rate"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_7

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_7
    const/4 v0, 0x4

    .line 248
    goto :goto_5

    .line 249
    :sswitch_2
    const-string/jumbo v13, "resolution-height"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_8

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_8
    move v0, v3

    .line 260
    goto :goto_5

    .line 261
    :sswitch_3
    const-string/jumbo v13, "brightness-value"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_9

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_9
    const/4 v0, 0x2

    .line 272
    goto :goto_5

    .line 273
    :sswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_a

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_a
    const/4 v0, 0x1

    .line 281
    goto :goto_5

    .line 282
    :sswitch_5
    const-string/jumbo v13, "resolution-width"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_b

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_b
    move v0, v5

    .line 293
    :goto_5
    packed-switch v0, :pswitch_data_0

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :pswitch_3
    :try_start_0
    const-string/jumbo v0, "user-serial"

    .line 331
    .line 332
    .line 333
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_6

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v13, "Failed to read user serial"

    .line 340
    .line 341
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .line 343
    .line 344
    const/4 v0, -0x1

    .line 345
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    :try_start_1
    iget-object v14, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 350
    .line 351
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 352
    .line 353
    .line 354
    move-result v13

    .line 355
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    invoke-virtual {v14, v0, v13}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :catch_1
    move-exception v0

    .line 365
    const-string v13, "Failed to read brightness"

    .line 366
    .line 367
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :pswitch_4
    iget-object v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 373
    .line 374
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_3

    .line 378
    .line 379
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 388
    .line 389
    goto/16 :goto_3

    .line 390
    .line 391
    :cond_c
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 392
    .line 393
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    goto/16 :goto_2

    .line 397
    .line 398
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 399
    .line 400
    const-string v1, "Found duplicate display."

    .line 401
    .line 402
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 407
    .line 408
    const-string v1, "Missing unique-id attribute on display."

    .line 409
    .line 410
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-string/jumbo v9, "stable-device-values"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_12

    .line 426
    .line 427
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 433
    .line 434
    .line 435
    move-result v9

    .line 436
    :goto_7
    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    if-eqz v10, :cond_12

    .line 441
    .line 442
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    const-string/jumbo v11, "stable-display-height"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-nez v11, :cond_11

    .line 457
    .line 458
    const-string/jumbo v11, "stable-display-width"

    .line 459
    .line 460
    .line 461
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    if-nez v10, :cond_10

    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_10
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    move-result v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 476
    goto :goto_8

    .line 477
    :catch_2
    move v10, v5

    .line 478
    :goto_8
    iput v10, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 479
    .line 480
    goto :goto_7

    .line 481
    :cond_11
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    move-result v10
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 489
    goto :goto_9

    .line 490
    :catch_3
    move v10, v5

    .line 491
    :goto_9
    iput v10, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_13

    .line 503
    .line 504
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 505
    .line 506
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 507
    .line 508
    .line 509
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const-string/jumbo v9, "brightness-nits-for-default-display"

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_14

    .line 521
    .line 522
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    iput v0, v1, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 531
    .line 532
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const-string/jumbo v9, "remembered-active-display-fit-status"

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_15

    .line 544
    .line 545
    const-string v0, "activeDisplayFitStatus"

    .line 546
    .line 547
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string/jumbo v10, "loadRememberedActiveDisplayFitStatusFromXml activeDisplayFitStatus : "

    .line 554
    .line 555
    .line 556
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    const-string/jumbo v9, "true"

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    iput-boolean v0, v1, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 577
    .line 578
    :cond_15
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    const-string/jumbo v9, "remembered-initiated-device"

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-eqz v0, :cond_19

    .line 590
    .line 591
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    :cond_16
    :goto_a
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 596
    .line 597
    .line 598
    move-result v9

    .line 599
    if-eqz v9, :cond_19

    .line 600
    .line 601
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    const-string/jumbo v10, "initiated-device"

    .line 606
    .line 607
    .line 608
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v9

    .line 612
    if-eqz v9, :cond_16

    .line 613
    .line 614
    const-string/jumbo v9, "macAddress"

    .line 615
    .line 616
    .line 617
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    if-eqz v9, :cond_18

    .line 622
    .line 623
    iget-object v10, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 624
    .line 625
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v10

    .line 632
    if-nez v10, :cond_17

    .line 633
    .line 634
    const-string/jumbo v10, "remove invalid device  = "

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v9

    .line 641
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_17
    iget-object v10, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 653
    .line 654
    .line 655
    move-result v9

    .line 656
    if-le v9, v3, :cond_16

    .line 657
    .line 658
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 665
    .line 666
    const-string v1, "Missing macAddress attribute on initiated-device."

    .line 667
    .line 668
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    throw v0

    .line 672
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    const-string/jumbo v6, "initiated-mirroring-uuid"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_0

    .line 684
    .line 685
    const-string/jumbo v0, "uuid"

    .line 686
    .line 687
    .line 688
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    iput-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 693
    .line 694
    goto/16 :goto_0

    .line 695
    .line 696
    :cond_1a
    return-void

    .line 697
    :sswitch_data_0
    .sparse-switch
        -0x5220769b -> :sswitch_5
        -0x4ecba0c7 -> :sswitch_4
        -0x385f6f0b -> :sswitch_3
        -0xbbd5698 -> :sswitch_2
        -0x582936e -> :sswitch_1
        0x4a1b51cd -> :sswitch_0
    .end sparse-switch

    .line 698
    .line 699
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
    .line 720
    .line 721
    .line 722
    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadIfNeeded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_4

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_7

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    goto :goto_5

    .line 36
    :catch_0
    move-exception v2

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception v2

    .line 39
    goto :goto_2

    .line 40
    :catch_2
    move-exception v2

    .line 41
    goto :goto_3

    .line 42
    :goto_1
    :try_start_4
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 43
    .line 44
    const-string v4, "Failed to load display manager persistent store data!"

    .line 45
    .line 46
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_2
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 56
    .line 57
    const-string v4, "Failed to load display manager persistent store data."

    .line 58
    .line 59
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :goto_3
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 69
    .line 70
    const-string v4, "Failed to load display manager persistent store data."

    .line 71
    .line 72
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_4
    :try_start_5
    monitor-exit v0

    .line 82
    goto :goto_6

    .line 83
    :goto_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :catch_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :goto_6
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 90
    .line 91
    goto :goto_8

    .line 92
    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_0
    :goto_8
    return-void
.end method

.method public final saveIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "DisplayManager.PersistentDataStore"

    .line 37
    .line 38
    const-string v2, "Failed to process the XML serializer."

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 11

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "display-manager-state"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "remembered-wifi-displays"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/hardware/display/WifiDisplay;

    .line 43
    .line 44
    const-string/jumbo v5, "wifi-display"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string/jumbo v7, "deviceAddress"

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v6, "deviceName"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-interface {p1, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-eqz v6, :cond_0

    .line 75
    .line 76
    const-string/jumbo v6, "deviceAlias"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-interface {p1, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    const-string/jumbo v6, "deviceType"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {p1, v1, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v2, "display-states"

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    const-string/jumbo v5, "brightness-configurations"

    .line 130
    .line 131
    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/util/Map$Entry;

    .line 139
    .line 140
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 151
    .line 152
    const-string/jumbo v7, "display"

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    .line 157
    .line 158
    const-string/jumbo v8, "unique-id"

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v1, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const-string/jumbo v6, "color-mode"

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    iget v8, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 174
    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-interface {p1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    .line 184
    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_2
    iget-object v8, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-ge v6, v8, :cond_3

    .line 193
    .line 194
    const-string/jumbo v8, "brightness-value"

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    .line 199
    .line 200
    iget-object v9, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    const-string/jumbo v10, "user-serial"

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .line 211
    .line 212
    iget-object v9, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 213
    .line 214
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Ljava/lang/Float;

    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-interface {p1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    .line 233
    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_3
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    .line 239
    .line 240
    iget-object v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 241
    .line 242
    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    .line 247
    .line 248
    const-string/jumbo v5, "resolution-width"

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    .line 253
    .line 254
    iget v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 255
    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    .line 265
    .line 266
    const-string/jumbo v5, "resolution-height"

    .line 267
    .line 268
    .line 269
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    .line 271
    .line 272
    iget v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 273
    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    .line 283
    .line 284
    const-string/jumbo v5, "refresh-rate"

    .line 285
    .line 286
    .line 287
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    .line 289
    .line 290
    iget v4, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 291
    .line 292
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-interface {p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    .line 301
    .line 302
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_4
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    .line 309
    .line 310
    const-string/jumbo v2, "stable-device-values"

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    .line 315
    .line 316
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 317
    .line 318
    iget v4, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 319
    .line 320
    if-lez v4, :cond_5

    .line 321
    .line 322
    iget v4, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 323
    .line 324
    if-lez v4, :cond_5

    .line 325
    .line 326
    const-string/jumbo v4, "stable-display-width"

    .line 327
    .line 328
    .line 329
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    .line 331
    .line 332
    iget v6, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 333
    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    .line 340
    .line 341
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    .line 343
    .line 344
    const-string/jumbo v4, "stable-display-height"

    .line 345
    .line 346
    .line 347
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    .line 349
    .line 350
    iget v3, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 351
    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-interface {p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    .line 358
    .line 359
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    .line 361
    .line 362
    :cond_5
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    .line 364
    .line 365
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    .line 367
    .line 368
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 369
    .line 370
    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 371
    .line 372
    .line 373
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    .line 375
    .line 376
    const-string/jumbo v2, "brightness-nits-for-default-display"

    .line 377
    .line 378
    .line 379
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    .line 381
    .line 382
    iget v3, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 383
    .line 384
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-interface {p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    .line 390
    .line 391
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    .line 393
    .line 394
    const-string/jumbo v2, "remembered-active-display-fit-status"

    .line 395
    .line 396
    .line 397
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    .line 399
    .line 400
    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 401
    .line 402
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    const-string v4, "activeDisplayFitStatus"

    .line 407
    .line 408
    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    .line 410
    .line 411
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    .line 413
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string/jumbo v3, "saveToXml remembered active display fit status value:"

    .line 417
    .line 418
    .line 419
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 423
    .line 424
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 436
    .line 437
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    const-string/jumbo v2, "remembered-changed-view-mode"

    .line 441
    .line 442
    .line 443
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    .line 445
    .line 446
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    .line 448
    .line 449
    const-string/jumbo v2, "remembered-initiated-device"

    .line 450
    .line 451
    .line 452
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    .line 454
    .line 455
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-eqz v4, :cond_6

    .line 466
    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    check-cast v4, Ljava/lang/String;

    .line 472
    .line 473
    const-string/jumbo v5, "initiated-device"

    .line 474
    .line 475
    .line 476
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    .line 478
    .line 479
    const-string/jumbo v6, "macAddress"

    .line 480
    .line 481
    .line 482
    invoke-interface {p1, v1, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    .line 484
    .line 485
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    .line 487
    .line 488
    goto :goto_3

    .line 489
    :cond_6
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    .line 491
    .line 492
    const-string/jumbo v2, "initiated-mirroring-uuid"

    .line 493
    .line 494
    .line 495
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    .line 497
    .line 498
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 499
    .line 500
    if-eqz p0, :cond_7

    .line 501
    .line 502
    const-string/jumbo v3, "uuid"

    .line 503
    .line 504
    .line 505
    invoke-interface {p1, v1, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    .line 507
    .line 508
    :cond_7
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    .line 510
    .line 511
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    .line 513
    .line 514
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 515
    .line 516
    .line 517
    return-void
.end method

.method public final setBrightness(Lcom/android/server/display/DisplayDevice;FI)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness(I)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    cmpl-float v1, v1, p2

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p1, p1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method
