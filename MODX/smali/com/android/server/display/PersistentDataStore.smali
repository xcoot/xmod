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

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 6
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/hardware/display/WifiDisplay;

    .line 24
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

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

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 42
    new-instance p0, Landroid/hardware/display/WifiDisplay;

    .line 44
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    .line 55
    move-result v4

    .line 56
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    .line 59
    move-result v5

    .line 60
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    .line 63
    move-result v6

    .line 64
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

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

    .line 3
    const-string v1, "  mLoaded="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 11
    const-string v2, "  mDirty="

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string v0, "  RememberedWifiDisplays:"

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    move v2, v1

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    const-string v4, ": "

    .line 48
    const-string v5, "    "

    .line 50
    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/hardware/display/WifiDisplay;

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v5, v2, 0x1

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    move v2, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "  DisplayStates:"

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 90
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v0

    .line 98
    move v2, v1

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/Map$Entry;

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    add-int/lit8 v7, v2, 0x1

    .line 118
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    const-string v6, "      ColorMode="

    .line 153
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string v3, "      BrightnessValues: "

    .line 170
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    move v3, v1

    .line 174
    :goto_2
    iget-object v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 176
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 179
    move-result v6

    .line 180
    if-ge v3, v6, :cond_1

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 184
    const-string v8, "User: "

    .line 186
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v8, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 194
    move-result v8

    .line 195
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v8, " Value: "

    .line 200
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v8, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 221
    goto :goto_2

    .line 222
    :cond_1
    const-string v3, "      DisplayBrightnessConfigurations: "

    .line 224
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v3, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 229
    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;)V

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    const-string v6, "      Resolution="

    .line 236
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 241
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v6, " "

    .line 246
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v6, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 251
    const-string v8, "      RefreshRate="

    .line 253
    invoke-static {v3, v6, p1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    move-result-object v3

    .line 257
    iget v2, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 259
    invoke-static {v3, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 262
    move v2, v7

    .line 263
    goto/16 :goto_1

    .line 265
    :cond_2
    const-string v0, "  StableDeviceValues:"

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    const-string v2, "      StableDisplayWidth="

    .line 279
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    iget v2, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 284
    const-string v3, "      StableDisplayHeight="

    .line 286
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    move-result-object v1

    .line 290
    iget v0, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v0, "  GlobalBrightnessConfigurations:"

    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    const-string v1, "  mBrightnessNitsForDefaultDisplay="

    .line 316
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    iget p0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 321
    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 324
    return-void
.end method

.method public final findRememberedWifiDisplay(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 18
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    return v1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

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

    .line 4
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 12
    if-nez v0, :cond_0

    .line 14
    if-eqz p2, :cond_0

    .line 16
    new-instance v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 18
    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    .line 21
    iget-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 23
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 29
    :cond_0
    return-object v0
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const/4 v3, 0x3

    .line 6
    const-string/jumbo v4, "brightness-configurations"

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string/jumbo v0, "display-manager-state"

    .line 13
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 19
    move-result v7

    .line 20
    :cond_0
    :goto_0
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v8, "remembered-wifi-displays"

    .line 33
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz v0, :cond_4

    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 43
    move-result v0

    .line 44
    :cond_1
    :goto_1
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_4

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 54
    const-string/jumbo v10, "wifi-display"

    .line 57
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_1

    .line 63
    const-string/jumbo v9, "deviceAddress"

    .line 66
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v11

    .line 70
    const-string/jumbo v9, "deviceName"

    .line 73
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v12

    .line 77
    const-string/jumbo v9, "deviceAlias"

    .line 80
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v13

    .line 84
    const-string/jumbo v9, "deviceType"

    .line 87
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v17

    .line 91
    if-eqz v11, :cond_3

    .line 93
    if-eqz v12, :cond_3

    .line 95
    invoke-virtual {v1, v11}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    .line 98
    move-result v9

    .line 99
    if-gez v9, :cond_2

    .line 101
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 103
    new-instance v15, Landroid/hardware/display/WifiDisplay;

    .line 105
    const/4 v14, 0x0

    .line 106
    const/16 v16, 0x0

    .line 108
    const/16 v18, 0x0

    .line 110
    move-object v10, v15

    .line 111
    move-object v6, v15

    .line 112
    move/from16 v15, v16

    .line 114
    move/from16 v16, v18

    .line 116
    invoke-direct/range {v10 .. v17}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 119
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 125
    const-string v1, "Found duplicate wifi display device address."

    .line 127
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 133
    const-string v1, "Missing deviceAddress or deviceName attribute on wifi-display."

    .line 135
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0

    .line 139
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    const-string/jumbo v6, "display-states"

    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 150
    const-string v6, "DisplayManager.PersistentDataStore"

    .line 152
    if-eqz v0, :cond_f

    .line 154
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 157
    move-result v9

    .line 158
    :cond_5
    :goto_2
    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_f

    .line 164
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    const-string/jumbo v10, "display"

    .line 171
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_5

    .line 177
    const-string/jumbo v0, "unique-id"

    .line 180
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v10

    .line 184
    if-eqz v10, :cond_e

    .line 186
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 188
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_d

    .line 194
    new-instance v11, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 196
    invoke-direct {v11}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    .line 199
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 202
    move-result v12

    .line 203
    :goto_3
    invoke-static {v2, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 209
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 219
    move-result v13

    .line 220
    sparse-switch v13, :sswitch_data_0

    .line 223
    :goto_4
    const/4 v0, -0x1

    .line 224
    goto :goto_5

    .line 225
    :sswitch_0
    const-string/jumbo v13, "color-mode"

    .line 228
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_6

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

    .line 240
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_7

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

    .line 252
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_8

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

    .line 264
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_9

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

    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_a

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

    .line 285
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_b

    .line 291
    goto :goto_4

    .line 292
    :cond_b
    move v0, v5

    .line 293
    :goto_5
    packed-switch v0, :pswitch_data_0

    .line 296
    goto :goto_3

    .line 297
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 304
    move-result v0

    .line 305
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 307
    goto :goto_3

    .line 308
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 315
    move-result v0

    .line 316
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 318
    goto :goto_3

    .line 319
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 326
    move-result v0

    .line 327
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 329
    goto :goto_3

    .line 330
    :pswitch_3
    :try_start_0
    const-string/jumbo v0, "user-serial"

    .line 333
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 341
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const/4 v0, -0x1

    .line 345
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 348
    move-result-object v13

    .line 349
    :try_start_1
    iget-object v14, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 351
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 354
    move-result v13

    .line 355
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 358
    move-result-object v13

    .line 359
    invoke-virtual {v14, v0, v13}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    goto/16 :goto_3

    .line 364
    :catch_1
    move-exception v0

    .line 365
    const-string v13, "Failed to read brightness"

    .line 367
    invoke-static {v6, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    goto/16 :goto_3

    .line 372
    :pswitch_4
    iget-object v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 374
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 377
    goto/16 :goto_3

    .line 379
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 386
    move-result v0

    .line 387
    iput v0, v11, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 389
    goto/16 :goto_3

    .line 391
    :cond_c
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 393
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    goto/16 :goto_2

    .line 398
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 400
    const-string v1, "Found duplicate display."

    .line 402
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 405
    throw v0

    .line 406
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 408
    const-string v1, "Missing unique-id attribute on display."

    .line 410
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 413
    throw v0

    .line 414
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 418
    const-string/jumbo v9, "stable-device-values"

    .line 421
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_12

    .line 427
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 429
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 435
    move-result v9

    .line 436
    :goto_7
    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 439
    move-result v10

    .line 440
    if-eqz v10, :cond_12

    .line 442
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 445
    move-result-object v10

    .line 446
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    const-string/jumbo v11, "stable-display-height"

    .line 452
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    move-result v11

    .line 456
    if-nez v11, :cond_11

    .line 458
    const-string/jumbo v11, "stable-display-width"

    .line 461
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    move-result v10

    .line 465
    if-nez v10, :cond_10

    .line 467
    goto :goto_7

    .line 468
    :cond_10
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 471
    move-result-object v10

    .line 472
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    .line 480
    goto :goto_7

    .line 481
    :cond_11
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 484
    move-result-object v10

    .line 485
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

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

    .line 493
    goto :goto_7

    .line 494
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_13

    .line 504
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 506
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 509
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 512
    move-result-object v0

    .line 513
    const-string/jumbo v9, "brightness-nits-for-default-display"

    .line 516
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_14

    .line 522
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 529
    move-result v0

    .line 530
    iput v0, v1, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 532
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    const-string/jumbo v9, "remembered-active-display-fit-status"

    .line 539
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_15

    .line 545
    const-string v0, "activeDisplayFitStatus"

    .line 547
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    move-result-object v0

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    .line 553
    const-string/jumbo v10, "loadRememberedActiveDisplayFitStatusFromXml activeDisplayFitStatus : "

    .line 556
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object v9

    .line 566
    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string/jumbo v9, "true"

    .line 572
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    move-result v0

    .line 576
    iput-boolean v0, v1, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 578
    :cond_15
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 581
    move-result-object v0

    .line 582
    const-string/jumbo v9, "remembered-initiated-device"

    .line 585
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    move-result v0

    .line 589
    if-eqz v0, :cond_19

    .line 591
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 594
    move-result v0

    .line 595
    :cond_16
    :goto_a
    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 598
    move-result v9

    .line 599
    if-eqz v9, :cond_19

    .line 601
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 604
    move-result-object v9

    .line 605
    const-string/jumbo v10, "initiated-device"

    .line 608
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    move-result v9

    .line 612
    if-eqz v9, :cond_16

    .line 614
    const-string/jumbo v9, "macAddress"

    .line 617
    invoke-interface {v2, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    move-result-object v9

    .line 621
    if-eqz v9, :cond_18

    .line 623
    iget-object v10, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 625
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 631
    move-result v10

    .line 632
    if-nez v10, :cond_17

    .line 634
    const-string/jumbo v10, "remove invalid device  = "

    .line 637
    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    move-result-object v9

    .line 641
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    goto :goto_a

    .line 645
    :cond_17
    iget-object v10, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 647
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 652
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 655
    move-result v9

    .line 656
    if-le v9, v3, :cond_16

    .line 658
    iget-object v9, v1, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 660
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 663
    goto :goto_a

    .line 664
    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 666
    const-string v1, "Missing macAddress attribute on initiated-device."

    .line 668
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 671
    throw v0

    .line 672
    :cond_19
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 675
    move-result-object v0

    .line 676
    const-string/jumbo v6, "initiated-mirroring-uuid"

    .line 679
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_0

    .line 685
    const-string/jumbo v0, "uuid"

    .line 688
    invoke-interface {v2, v8, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    move-result-object v0

    .line 692
    iput-object v0, v1, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 694
    goto/16 :goto_0

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

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 15
    iget-object v1, v1, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 17
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 20
    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :goto_0
    :try_start_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

    .line 44
    const-string v4, "Failed to load display manager persistent store data!"

    .line 46
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 54
    goto :goto_0

    .line 55
    :goto_2
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 57
    const-string v4, "Failed to load display manager persistent store data."

    .line 59
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    goto :goto_0

    .line 68
    :goto_3
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 70
    const-string v4, "Failed to load display manager persistent store data."

    .line 72
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 19
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    new-instance v2, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v2, p0, v1}, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "DisplayManager.PersistentDataStore"

    .line 38
    const-string v2, "Failed to process the XML serializer."

    .line 40
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 46
    :cond_0
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 11

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 14
    const-string/jumbo v0, "display-manager-state"

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    const-string/jumbo v2, "remembered-wifi-displays"

    .line 23
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/hardware/display/WifiDisplay;

    .line 44
    const-string/jumbo v5, "wifi-display"

    .line 47
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    const-string/jumbo v7, "deviceAddress"

    .line 57
    invoke-interface {p1, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    const-string/jumbo v6, "deviceName"

    .line 63
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    invoke-interface {p1, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    if-eqz v6, :cond_0

    .line 76
    const-string/jumbo v6, "deviceAlias"

    .line 79
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    invoke-interface {p1, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_1

    .line 92
    const-string/jumbo v6, "deviceType"

    .line 95
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    invoke-interface {p1, v1, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    :cond_1
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string/jumbo v2, "display-states"

    .line 112
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v3

    .line 125
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v4

    .line 129
    const-string/jumbo v5, "brightness-configurations"

    .line 132
    if-eqz v4, :cond_4

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/lang/String;

    .line 146
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 152
    const-string/jumbo v7, "display"

    .line 155
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string/jumbo v8, "unique-id"

    .line 161
    invoke-interface {p1, v1, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    const-string/jumbo v6, "color-mode"

    .line 170
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    iget v8, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 178
    move-result-object v8

    .line 179
    invoke-interface {p1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_2
    iget-object v8, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 188
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 191
    move-result v8

    .line 192
    if-ge v6, v8, :cond_3

    .line 194
    const-string/jumbo v8, "brightness-value"

    .line 197
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v9, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 202
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 205
    move-result v9

    .line 206
    const-string/jumbo v10, "user-serial"

    .line 209
    invoke-interface {p1, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget-object v9, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 214
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Ljava/lang/Float;

    .line 220
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 223
    move-result v9

    .line 224
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 227
    move-result-object v9

    .line 228
    invoke-interface {p1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 236
    goto :goto_2

    .line 237
    :cond_3
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    iget-object v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 242
    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 245
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const-string/jumbo v5, "resolution-width"

    .line 251
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    iget v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 259
    move-result-object v6

    .line 260
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const-string/jumbo v5, "resolution-height"

    .line 269
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    iget v6, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 277
    move-result-object v6

    .line 278
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    const-string/jumbo v5, "refresh-rate"

    .line 287
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    iget v4, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 292
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 296
    invoke-interface {p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    goto/16 :goto_1

    .line 307
    :cond_4
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string/jumbo v2, "stable-device-values"

    .line 313
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 318
    iget v4, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 320
    if-lez v4, :cond_5

    .line 322
    iget v4, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 324
    if-lez v4, :cond_5

    .line 326
    const-string/jumbo v4, "stable-display-width"

    .line 329
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    iget v6, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 337
    move-result-object v6

    .line 338
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string/jumbo v4, "stable-display-height"

    .line 347
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    iget v3, v3, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 355
    move-result-object v3

    .line 356
    invoke-interface {p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    :cond_5
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 370
    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 373
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string/jumbo v2, "brightness-nits-for-default-display"

    .line 379
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    iget v3, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessNitsForDefaultDisplay:F

    .line 384
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 387
    move-result-object v3

    .line 388
    invoke-interface {p1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    const-string/jumbo v2, "remembered-active-display-fit-status"

    .line 397
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 402
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 405
    move-result-object v3

    .line 406
    const-string v4, "activeDisplayFitStatus"

    .line 408
    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v3, "saveToXml remembered active display fit status value:"

    .line 419
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 424
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object v2

    .line 435
    const-string v3, "DisplayManager.PersistentDataStore"

    .line 437
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string/jumbo v2, "remembered-changed-view-mode"

    .line 443
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const-string/jumbo v2, "remembered-initiated-device"

    .line 452
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 460
    move-result-object v3

    .line 461
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    move-result v4

    .line 465
    if-eqz v4, :cond_6

    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    move-result-object v4

    .line 471
    check-cast v4, Ljava/lang/String;

    .line 473
    const-string/jumbo v5, "initiated-device"

    .line 476
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    const-string/jumbo v6, "macAddress"

    .line 482
    invoke-interface {p1, v1, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    goto :goto_3

    .line 489
    :cond_6
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const-string/jumbo v2, "initiated-mirroring-uuid"

    .line 495
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 500
    if-eqz p0, :cond_7

    .line 502
    const-string/jumbo v3, "uuid"

    .line 505
    invoke-interface {p1, v1, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    :cond_7
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 517
    return-void
.end method

.method public final setBrightness(Lcom/android/server/display/DisplayDevice;FI)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 12
    if-nez p1, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 22
    const/4 v2, -0x1

    .line 23
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    invoke-virtual {p1, p3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness(I)F

    .line 29
    move-result v1

    .line 30
    cmpl-float v1, v1, p2

    .line 32
    if-nez v1, :cond_2

    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p1, p1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mPerUserBrightness:Landroid/util/SparseArray;

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 46
    :cond_3
    :goto_0
    return-void
.end method
