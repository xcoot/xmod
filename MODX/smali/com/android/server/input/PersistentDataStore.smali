.class public final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDirty:Z

.field public mDirtyEtc:Z

.field public mDirtyGamePadProfiles:Z

.field public final mGamePadProfiles:Ljava/util/Map;

.field public final mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

.field public final mInputDevices:Ljava/util/HashMap;

.field public final mKeyRemapping:Ljava/util/Map;

.field public mLoaded:Z

.field public mLoadedEtc:Z

.field public mLoadedGamePadProfiles:Z

.field public mNumLockState:Z


# direct methods
.method public constructor <init>(Lcom/android/server/input/PersistentDataStore$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 27
    return-void
.end method


# virtual methods
.method public final clearMappedKey(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 4
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 32
    :cond_0
    return-void
.end method

.method public final clearStateGamePadProfiles()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    const/4 v1, 0x5

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 20
    invoke-direct {v3, p0, v0}, Lcom/android/server/input/PersistentDataStore$GamePadProfile;-><init>(Lcom/android/server/input/PersistentDataStore;I)V

    .line 23
    check-cast v1, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final getNumLockState()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoadedEtc:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "InputManager"

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 12
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileEtc:Landroid/util/AtomicFile;

    .line 14
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 17
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 18
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/server/input/PersistentDataStore;->loadFromXmlEtc(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 28
    goto :goto_4

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v3

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v3

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    :try_start_2
    const-string v4, "Failed to load input manager persistent store data etC."

    .line 37
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 42
    goto :goto_0

    .line 43
    :goto_2
    const-string v4, "Failed to load input manager persistent store data eTc."

    .line 45
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 54
    throw p0

    .line 55
    :catch_2
    :goto_4
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoadedEtc:Z

    .line 58
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 60
    return p0
.end method

.method public final getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 4
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 16
    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 21
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 27
    :cond_0
    return-object v0
.end method

.method public final getStickForGamePadProfiles(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    .line 4
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 18
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p2, v1, v1, v1}, Lcom/android/server/input/PersistentDataStore$GamePadStick;-><init>(IZZZ)V

    .line 30
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 36
    iget p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 38
    iget-boolean p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseH:Z

    .line 40
    if-eqz p2, :cond_0

    .line 42
    const p2, 0x8000

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p2, v1

    .line 47
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseV:Z

    .line 49
    if-eqz v0, :cond_1

    .line 51
    const/16 v0, 0x4000

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v0, v1

    .line 55
    :goto_1
    iget-boolean p0, p0, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseRot:Z

    .line 57
    if-eqz p0, :cond_2

    .line 59
    const/16 v1, 0x1000

    .line 61
    :cond_2
    or-int p0, p1, p2

    .line 63
    or-int/2addr p0, v0

    .line 64
    or-int/2addr p0, v1

    .line 65
    return p0
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string/jumbo v2, "input-manager-state"

    .line 8
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 14
    move-result v2

    .line 15
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1f

    .line 21
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    const-string/jumbo v4, "key-remapping"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 35
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 38
    move-result v3

    .line 39
    :cond_1
    :goto_1
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    const-string/jumbo v6, "remap"

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 58
    const-string/jumbo v5, "from-key"

    .line 61
    invoke-interface {v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-result v5

    .line 65
    const-string/jumbo v6, "to-key"

    .line 68
    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-result v6

    .line 72
    iget-object v7, v0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v5

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v6

    .line 82
    check-cast v7, Ljava/util/HashMap;

    .line 84
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    const-string/jumbo v5, "input-devices"

    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1e

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 104
    move-result v3

    .line 105
    const/4 v6, 0x0

    .line 106
    :goto_2
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_1e

    .line 112
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    const-string/jumbo v8, "input-device"

    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_3

    .line 125
    const-string/jumbo v7, "descriptor"

    .line 128
    invoke-interface {v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v7

    .line 132
    if-eqz v7, :cond_1d

    .line 134
    iget-object v8, v0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 139
    move-result v8

    .line 140
    const-string v9, "InputManager"

    .line 142
    if-eqz v8, :cond_5

    .line 144
    if-eqz v6, :cond_4

    .line 146
    const-string v8, "Found duplicate input device: "

    .line 148
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v7

    .line 152
    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    const/16 v18, 0x0

    .line 157
    goto/16 :goto_a

    .line 159
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 161
    const-string v1, "Found duplicate input device."

    .line 163
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 166
    throw v0

    .line 167
    :cond_5
    const-string v8, ",languageTag:und"

    .line 169
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    move-result v10

    .line 173
    const-string v12, ""

    .line 175
    if-eqz v10, :cond_6

    .line 177
    const-string/jumbo v6, "loadInputDevicesFromXml: removing languageTag from "

    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v7

    .line 191
    const/4 v6, 0x1

    .line 192
    :cond_6
    new-instance v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 194
    invoke-direct {v10}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>()V

    .line 197
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 200
    move-result v13

    .line 201
    :goto_3
    invoke-static {v1, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 204
    move-result v14

    .line 205
    if-eqz v14, :cond_1c

    .line 207
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 210
    move-result-object v14

    .line 211
    const-string/jumbo v15, "keyed-keyboard-layout"

    .line 214
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v14

    .line 218
    const-string/jumbo v15, "layout"

    .line 221
    if-eqz v14, :cond_a

    .line 223
    const-string/jumbo v14, "key"

    .line 226
    invoke-interface {v1, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v14

    .line 230
    if-eqz v14, :cond_9

    .line 232
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    move-result v16

    .line 236
    if-eqz v16, :cond_7

    .line 238
    const-string/jumbo v11, "loadFromXml: removing languageTag from "

    .line 241
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object v11

    .line 245
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v14, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v14

    .line 252
    :cond_7
    invoke-interface {v1, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v11

    .line 256
    if-eqz v11, :cond_8

    .line 258
    iget-object v15, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 260
    check-cast v15, Landroid/util/ArrayMap;

    .line 262
    invoke-virtual {v15, v14, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    goto :goto_3

    .line 266
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 268
    const-string v1, "Missing layout attribute on keyed-keyboard-layout."

    .line 270
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 273
    throw v0

    .line 274
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 276
    const-string v1, "Missing key attribute on keyed-keyboard-layout."

    .line 278
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 281
    throw v0

    .line 282
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 285
    move-result-object v11

    .line 286
    const-string/jumbo v14, "selected-keyboard-layout"

    .line 289
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_d

    .line 295
    invoke-interface {v1, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object v11

    .line 299
    if-eqz v11, :cond_c

    .line 301
    iget-object v14, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 303
    if-nez v14, :cond_b

    .line 305
    new-instance v14, Ljava/util/HashSet;

    .line 307
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 310
    iput-object v14, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 312
    :cond_b
    iget-object v14, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 314
    check-cast v14, Ljava/util/HashSet;

    .line 316
    invoke-virtual {v14, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    goto :goto_3

    .line 320
    :cond_c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 322
    const-string v1, "Missing layout attribute on selected-keyboard-layout."

    .line 324
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 327
    throw v0

    .line 328
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 331
    move-result-object v11

    .line 332
    const-string/jumbo v14, "light-info"

    .line 335
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result v11

    .line 339
    if-eqz v11, :cond_e

    .line 341
    const-string/jumbo v11, "light-id"

    .line 344
    invoke-interface {v1, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-result v11

    .line 348
    const-string/jumbo v14, "light-brightness"

    .line 351
    invoke-interface {v1, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-result v14

    .line 355
    iget-object v15, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 357
    invoke-virtual {v15, v11, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    goto/16 :goto_3

    .line 362
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 365
    move-result-object v11

    .line 366
    const-string/jumbo v14, "calibration"

    .line 369
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    move-result v11

    .line 373
    if-eqz v11, :cond_1b

    .line 375
    const-string/jumbo v11, "format"

    .line 378
    invoke-interface {v1, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    move-result-object v11

    .line 382
    const-string/jumbo v14, "rotation"

    .line 385
    invoke-interface {v1, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    move-result-object v14

    .line 389
    if-eqz v11, :cond_1a

    .line 391
    const-string v15, "affine"

    .line 393
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result v11

    .line 397
    if-eqz v11, :cond_19

    .line 399
    if-eqz v14, :cond_13

    .line 401
    :try_start_0
    const-string v15, "0"

    .line 403
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    move-result v15

    .line 407
    if-eqz v15, :cond_f

    .line 409
    const/4 v14, 0x0

    .line 410
    goto :goto_4

    .line 411
    :cond_f
    const-string v15, "90"

    .line 413
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v15

    .line 417
    if-eqz v15, :cond_10

    .line 419
    const/4 v14, 0x1

    .line 420
    goto :goto_4

    .line 421
    :cond_10
    const-string v15, "180"

    .line 423
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v15

    .line 427
    if-eqz v15, :cond_11

    .line 429
    const/4 v14, 0x2

    .line 430
    goto :goto_4

    .line 431
    :cond_11
    const-string v15, "270"

    .line 433
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    move-result v15

    .line 437
    if-eqz v15, :cond_12

    .line 439
    const/4 v14, 0x3

    .line 440
    goto :goto_4

    .line 441
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 443
    const-string v1, "Unsupported surface rotation string \'"

    .line 445
    const-string v2, "\'"

    .line 447
    invoke-static {v1, v14, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    move-result-object v1

    .line 451
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 454
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :catch_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 457
    const-string v1, "Unsupported rotation for calibration."

    .line 459
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 462
    throw v0

    .line 463
    :cond_13
    const/4 v14, -0x1

    .line 464
    :goto_4
    sget-object v15, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    .line 466
    invoke-virtual {v15}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    .line 469
    move-result-object v15

    .line 470
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 473
    move-result v4

    .line 474
    :goto_5
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 477
    move-result v17

    .line 478
    if-eqz v17, :cond_16

    .line 480
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 483
    move-result-object v17

    .line 484
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 487
    move-result-object v5

    .line 488
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    .line 491
    move-result-object v17

    .line 492
    const/4 v11, 0x0

    .line 493
    :goto_6
    array-length v1, v15

    .line 494
    if-ge v11, v1, :cond_15

    .line 496
    const/4 v1, 0x6

    .line 497
    if-ge v11, v1, :cond_15

    .line 499
    sget-object v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    .line 501
    aget-object v1, v1, v11

    .line 503
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_14

    .line 509
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 512
    move-result v1

    .line 513
    aput v1, v15, v11

    .line 515
    goto :goto_7

    .line 516
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 518
    goto :goto_6

    .line 519
    :cond_15
    :goto_7
    move-object/from16 v1, p1

    .line 521
    goto :goto_5

    .line 522
    :cond_16
    const/4 v5, 0x3

    .line 523
    const/4 v11, 0x2

    .line 524
    const/4 v1, -0x1

    .line 525
    if-ne v14, v1, :cond_18

    .line 527
    const/4 v1, 0x0

    .line 528
    :goto_8
    iget-object v14, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 530
    array-length v4, v14

    .line 531
    if-ge v1, v4, :cond_17

    .line 533
    new-instance v4, Landroid/hardware/input/TouchCalibration;

    .line 535
    const/16 v18, 0x0

    .line 537
    aget v21, v15, v18

    .line 539
    const/16 v16, 0x1

    .line 541
    aget v22, v15, v16

    .line 543
    aget v23, v15, v11

    .line 545
    aget v24, v15, v5

    .line 547
    const/16 v19, 0x4

    .line 549
    aget v25, v15, v19

    .line 551
    const/16 v17, 0x5

    .line 553
    aget v26, v15, v17

    .line 555
    move-object/from16 v20, v4

    .line 557
    invoke-direct/range {v20 .. v26}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    .line 560
    aput-object v4, v14, v1

    .line 562
    add-int/lit8 v1, v1, 0x1

    .line 564
    goto :goto_8

    .line 565
    :cond_17
    const/16 v16, 0x1

    .line 567
    const/16 v18, 0x0

    .line 569
    goto :goto_9

    .line 570
    :cond_18
    iget-object v1, v10, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 572
    new-instance v4, Landroid/hardware/input/TouchCalibration;

    .line 574
    const/16 v18, 0x0

    .line 576
    aget v21, v15, v18

    .line 578
    const/16 v16, 0x1

    .line 580
    aget v22, v15, v16

    .line 582
    aget v23, v15, v11

    .line 584
    aget v24, v15, v5

    .line 586
    const/4 v5, 0x4

    .line 587
    aget v25, v15, v5

    .line 589
    const/4 v5, 0x5

    .line 590
    aget v26, v15, v5

    .line 592
    move-object/from16 v20, v4

    .line 594
    invoke-direct/range {v20 .. v26}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    .line 597
    aput-object v4, v1, v14

    .line 599
    :goto_9
    move-object/from16 v1, p1

    .line 601
    const/4 v4, 0x0

    .line 602
    goto/16 :goto_3

    .line 604
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 606
    const-string v1, "Unsupported format for calibration."

    .line 608
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 611
    throw v0

    .line 612
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 614
    const-string v1, "Missing format attribute on calibration."

    .line 616
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 619
    throw v0

    .line 620
    :cond_1b
    const/16 v16, 0x1

    .line 622
    move-object/from16 v1, p1

    .line 624
    goto/16 :goto_3

    .line 626
    :cond_1c
    const/16 v18, 0x0

    .line 628
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 630
    invoke-virtual {v1, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :goto_a
    move-object/from16 v1, p1

    .line 635
    const/4 v4, 0x0

    .line 636
    goto/16 :goto_2

    .line 638
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 640
    const-string v1, "Missing descriptor attribute on input-device."

    .line 642
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 645
    throw v0

    .line 646
    :cond_1e
    move-object/from16 v1, p1

    .line 648
    goto/16 :goto_0

    .line 650
    :cond_1f
    return-void
.end method

.method public final loadFromXmlEtc(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "input-manager-state-etc"

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 10
    move-result v0

    .line 11
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const-string/jumbo v2, "keyboard-meta-info"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    const-string/jumbo v1, "numLock"

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {p1, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    move-result v1

    .line 39
    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final loadFromXmlGamePadProfiles(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string/jumbo v1, "input-manager-state-gamepad-profiles"

    .line 6
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 12
    move-result v1

    .line 13
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_6

    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    const-string/jumbo v3, "profiles"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_5

    .line 32
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 35
    move-result v2

    .line 36
    :goto_1
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_5

    .line 42
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    const-string/jumbo v4, "profile"

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 55
    const/4 v3, 0x0

    .line 56
    const-string/jumbo v4, "id"

    .line 59
    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-result v4

    .line 63
    const-string/jumbo v5, "name"

    .line 66
    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    const-string/jumbo v6, "used"

    .line 73
    invoke-interface {v0, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    move-result v6

    .line 77
    move-object/from16 v7, p0

    .line 79
    iget-object v8, v7, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v9

    .line 85
    check-cast v8, Ljava/util/HashMap;

    .line 87
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 93
    if-eqz v8, :cond_3

    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 98
    move-result v9

    .line 99
    invoke-virtual {v8}, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->clearData()V

    .line 102
    :cond_0
    :goto_2
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_2

    .line 108
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 111
    move-result-object v10

    .line 112
    const-string/jumbo v11, "simpleButton"

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v10

    .line 119
    const-string/jumbo v11, "toCode"

    .line 122
    const-string/jumbo v12, "fromCode"

    .line 125
    if-eqz v10, :cond_1

    .line 127
    invoke-interface {v0, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move-result v10

    .line 131
    invoke-interface {v0, v3, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-result v11

    .line 135
    iget-object v12, v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v10

    .line 141
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v11

    .line 145
    check-cast v12, Landroid/util/ArrayMap;

    .line 147
    invoke-virtual {v12, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    goto :goto_2

    .line 151
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 154
    move-result-object v10

    .line 155
    const-string/jumbo v13, "simpleStick"

    .line 158
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_0

    .line 164
    invoke-interface {v0, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-result v10

    .line 168
    invoke-interface {v0, v3, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-result v11

    .line 172
    const-string/jumbo v12, "inverseH"

    .line 175
    const/4 v13, 0x0

    .line 176
    invoke-interface {v0, v3, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 179
    move-result v12

    .line 180
    const-string/jumbo v14, "inverseV"

    .line 183
    invoke-interface {v0, v3, v14, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 186
    move-result v14

    .line 187
    const-string/jumbo v15, "inverseRot"

    .line 190
    invoke-interface {v0, v3, v15, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 193
    move-result v13

    .line 194
    iget-object v15, v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 196
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v10

    .line 200
    new-instance v3, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 202
    invoke-direct {v3, v11, v12, v14, v13}, Lcom/android/server/input/PersistentDataStore$GamePadStick;-><init>(IZZZ)V

    .line 205
    check-cast v15, Landroid/util/ArrayMap;

    .line 207
    invoke-virtual {v15, v10, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v3, 0x0

    .line 211
    goto :goto_2

    .line 212
    :cond_2
    iput v4, v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 214
    iput-object v5, v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 216
    iput-boolean v6, v8, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 218
    goto/16 :goto_1

    .line 220
    :cond_3
    const-string/jumbo v3, "wrong profile id : "

    .line 223
    const-string v5, "InputManager"

    .line 225
    invoke-static {v4, v3, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    goto/16 :goto_1

    .line 230
    :cond_4
    move-object/from16 v7, p0

    .line 232
    goto/16 :goto_1

    .line 234
    :cond_5
    move-object/from16 v7, p0

    .line 236
    goto/16 :goto_0

    .line 238
    :cond_6
    return-void
.end method

.method public final loadIfNeeded()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "Failed to load input manager persistent store data."

    .line 7
    const-string v1, "InputManager"

    .line 9
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 11
    check-cast v2, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 16
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 23
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 25
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 28
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 39
    goto :goto_4

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception v3

    .line 45
    goto :goto_2

    .line 46
    :goto_1
    :try_start_2
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 51
    check-cast v0, Ljava/util/HashMap;

    .line 53
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    goto :goto_0

    .line 62
    :goto_2
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 67
    check-cast v0, Ljava/util/HashMap;

    .line 69
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 74
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 81
    throw p0

    .line 82
    :catch_2
    :goto_4
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    .line 85
    :cond_0
    return-void
.end method

.method public final loadIfNeededGamePadProfiles()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoadedGamePadProfiles:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "InputManager"

    .line 7
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearStateGamePadProfiles()V

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 12
    iget-object v1, v1, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;

    .line 14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 17
    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 18
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2}, Lcom/android/server/input/PersistentDataStore;->loadFromXmlGamePadProfiles(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 28
    goto :goto_4

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v2

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    :try_start_2
    const-string v3, "Failed to load input manager persistent store data GamepadProfiles."

    .line 37
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearStateGamePadProfiles()V

    .line 43
    goto :goto_0

    .line 44
    :goto_2
    const-string v3, "Failed to load input manager persistent store data GamePadProfiles."

    .line 46
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearStateGamePadProfiles()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    throw p0

    .line 57
    :catch_2
    :goto_4
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoadedGamePadProfiles:Z

    .line 60
    :cond_0
    return-void
.end method

.method public final removeUninstalledKeyboardLayouts(Ljava/util/Set;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_4

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v5, v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 35
    check-cast v5, Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v5

    .line 45
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_2

    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 57
    iget-object v7, v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 59
    check-cast v7, Landroid/util/ArrayMap;

    .line 61
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    move-object v8, p1

    .line 66
    check-cast v8, Ljava/util/HashSet;

    .line 68
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_1

    .line 74
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_0

    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v1

    .line 88
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_3

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;

    .line 100
    iget-object v5, v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 102
    check-cast v5, Landroid/util/ArrayMap;

    .line 104
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move v1, v3

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    if-eqz v1, :cond_5

    .line 112
    iput-boolean v3, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 114
    :cond_5
    return-void
.end method

.method public final saveIfNeeded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 20
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 35
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "InputManager"

    .line 39
    const-string v2, "Failed to save input manager persistent store data."

    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 47
    :cond_0
    return-void
.end method

.method public final saveIfNeededEtc()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyEtc:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileEtc:Landroid/util/AtomicFile;

    .line 9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-interface {v2, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 30
    const-string/jumbo v3, "input-manager-state-etc"

    .line 33
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    const-string/jumbo v5, "keyboard-meta-info"

    .line 39
    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    const-string/jumbo v6, "numLock"

    .line 45
    iget-boolean v7, p0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    .line 47
    invoke-interface {v2, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 59
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileEtc:Landroid/util/AtomicFile;

    .line 64
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileEtc:Landroid/util/AtomicFile;

    .line 71
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 74
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "InputManager"

    .line 78
    const-string v2, "Failed to save input manager persistent store data Etc."

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_0
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyEtc:Z

    .line 86
    :cond_0
    return-void
.end method

.method public final saveIfNeededGamePadProfiles()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInjector:Lcom/android/server/input/PersistentDataStore$Injector;

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;

    .line 9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXmlGamePadProfiles(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 20
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;

    .line 25
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFileGamePadProfiles:Landroid/util/AtomicFile;

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 35
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "InputManager"

    .line 39
    const-string v2, "Failed to save input manager persistent store data GamePadprofiles."

    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 47
    :cond_0
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 13

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
    const-string/jumbo v0, "input-manager-state"

    .line 17
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    const-string/jumbo v3, "key-remapping"

    .line 23
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 28
    check-cast v4, Ljava/util/HashMap;

    .line 30
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v4

    .line 38
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v6

    .line 54
    iget-object v7, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    .line 56
    check-cast v7, Ljava/util/HashMap;

    .line 58
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v5

    .line 68
    const-string/jumbo v7, "remap"

    .line 71
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string/jumbo v8, "from-key"

    .line 77
    invoke-interface {p1, v1, v8, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    const-string/jumbo v6, "to-key"

    .line 83
    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string/jumbo v3, "input-devices"

    .line 96
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 101
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p0

    .line 109
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_b

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/String;

    .line 127
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 133
    const-string/jumbo v6, "input-device"

    .line 136
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const-string/jumbo v7, "descriptor"

    .line 142
    invoke-interface {p1, v1, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget-object v5, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 147
    check-cast v5, Landroid/util/ArrayMap;

    .line 149
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 152
    move-result-object v5

    .line 153
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v5

    .line 157
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v7

    .line 161
    const-string/jumbo v8, "layout"

    .line 164
    if-eqz v7, :cond_1

    .line 166
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Ljava/lang/String;

    .line 172
    const-string/jumbo v9, "keyed-keyboard-layout"

    .line 175
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    const-string/jumbo v10, "key"

    .line 181
    invoke-interface {p1, v1, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    iget-object v10, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 186
    check-cast v10, Landroid/util/ArrayMap;

    .line 188
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-result-object v7

    .line 192
    check-cast v7, Ljava/lang/String;

    .line 194
    invoke-interface {p1, v1, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    goto :goto_2

    .line 201
    :cond_1
    iget-object v5, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 203
    if-eqz v5, :cond_2

    .line 205
    check-cast v5, Ljava/util/HashSet;

    .line 207
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v5

    .line 211
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_2

    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Ljava/lang/String;

    .line 223
    const-string/jumbo v9, "selected-keyboard-layout"

    .line 226
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {p1, v1, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {p1, v1, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    goto :goto_3

    .line 236
    :cond_2
    const/4 v5, 0x0

    .line 237
    move v7, v5

    .line 238
    :goto_4
    iget-object v8, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 240
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    .line 243
    move-result v8

    .line 244
    if-ge v7, v8, :cond_3

    .line 246
    const-string/jumbo v8, "light-info"

    .line 249
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    iget-object v9, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 254
    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 257
    move-result v9

    .line 258
    const-string/jumbo v10, "light-id"

    .line 261
    invoke-interface {p1, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    iget-object v9, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardBacklightBrightnessMap:Landroid/util/SparseIntArray;

    .line 266
    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 269
    move-result v9

    .line 270
    const-string/jumbo v10, "light-brightness"

    .line 273
    invoke-interface {p1, v1, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    add-int/lit8 v7, v7, 0x1

    .line 281
    goto :goto_4

    .line 282
    :cond_3
    move v7, v5

    .line 283
    :goto_5
    iget-object v8, v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    .line 285
    array-length v9, v8

    .line 286
    if-ge v7, v9, :cond_a

    .line 288
    aget-object v8, v8, v7

    .line 290
    if-eqz v8, :cond_9

    .line 292
    if-eqz v7, :cond_7

    .line 294
    if-eq v7, v2, :cond_6

    .line 296
    const/4 v9, 0x2

    .line 297
    if-eq v7, v9, :cond_5

    .line 299
    const/4 v9, 0x3

    .line 300
    if-ne v7, v9, :cond_4

    .line 302
    const-string v9, "270"

    .line 304
    goto :goto_6

    .line 305
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 307
    const-string p1, "Unsupported surface rotation value"

    .line 309
    invoke-static {v7, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 312
    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    throw p0

    .line 317
    :cond_5
    const-string v9, "180"

    .line 319
    goto :goto_6

    .line 320
    :cond_6
    const-string v9, "90"

    .line 322
    goto :goto_6

    .line 323
    :cond_7
    const-string v9, "0"

    .line 325
    :goto_6
    invoke-virtual {v8}, Landroid/hardware/input/TouchCalibration;->getAffineTransform()[F

    .line 328
    move-result-object v8

    .line 329
    const-string/jumbo v10, "calibration"

    .line 332
    invoke-interface {p1, v1, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string/jumbo v11, "format"

    .line 338
    const-string v12, "affine"

    .line 340
    invoke-interface {p1, v1, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const-string/jumbo v11, "rotation"

    .line 346
    invoke-interface {p1, v1, v11, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    move v9, v5

    .line 350
    :goto_7
    array-length v11, v8

    .line 351
    if-ge v9, v11, :cond_8

    .line 353
    const/4 v11, 0x6

    .line 354
    if-ge v9, v11, :cond_8

    .line 356
    sget-object v11, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->CALIBRATION_NAME:[Ljava/lang/String;

    .line 358
    aget-object v12, v11, v9

    .line 360
    invoke-interface {p1, v1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    aget v12, v8, v9

    .line 365
    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 368
    move-result-object v12

    .line 369
    invoke-interface {p1, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    aget-object v11, v11, v9

    .line 374
    invoke-interface {p1, v1, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    add-int/lit8 v9, v9, 0x1

    .line 379
    goto :goto_7

    .line 380
    :cond_8
    invoke-interface {p1, v1, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 385
    goto :goto_5

    .line 386
    :cond_a
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    goto/16 :goto_1

    .line 391
    :cond_b
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 400
    return-void
.end method

.method public final saveToXmlGamePadProfiles(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 16
    const-string/jumbo v1, "input-manager-state-gamepad-profiles"

    .line 19
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    const-string/jumbo v3, "profiles"

    .line 25
    invoke-interface {v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    const-string/jumbo v4, "maxNum"

    .line 31
    const/4 v5, 0x5

    .line 32
    invoke-interface {v0, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v5, :cond_2

    .line 38
    move-object/from16 v6, p0

    .line 40
    iget-object v7, v6, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v8

    .line 46
    check-cast v7, Ljava/util/HashMap;

    .line 48
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 54
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string/jumbo v8, "profile"

    .line 60
    invoke-interface {v0, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string/jumbo v9, "id"

    .line 66
    iget v10, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    .line 68
    invoke-interface {v0, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v9, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    .line 73
    const-string/jumbo v10, "name"

    .line 76
    invoke-interface {v0, v2, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string/jumbo v9, "used"

    .line 82
    iget-boolean v10, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 84
    invoke-interface {v0, v2, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    iget-object v9, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 89
    check-cast v9, Landroid/util/ArrayMap;

    .line 91
    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 94
    move-result v9

    .line 95
    const-string/jumbo v10, "toCode"

    .line 98
    const-string/jumbo v11, "to"

    .line 101
    const-string/jumbo v12, "fromCode"

    .line 104
    const-string/jumbo v13, "from"

    .line 107
    if-nez v9, :cond_0

    .line 109
    iget-object v9, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 111
    check-cast v9, Landroid/util/ArrayMap;

    .line 113
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 116
    move-result-object v9

    .line 117
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v9

    .line 121
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_0

    .line 127
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Ljava/lang/Integer;

    .line 133
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 136
    move-result v15

    .line 137
    const-string/jumbo v5, "simpleButton"

    .line 140
    invoke-interface {v0, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-static {v15}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 147
    invoke-interface {v0, v2, v13, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    invoke-interface {v0, v2, v12, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v6, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeButtonMap:Ljava/util/Map;

    .line 155
    check-cast v6, Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 166
    move-result v6

    .line 167
    invoke-static {v6}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 170
    move-result-object v14

    .line 171
    invoke-interface {v0, v2, v11, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-interface {v0, v2, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    invoke-interface {v0, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const/4 v5, 0x5

    .line 181
    move-object/from16 v6, p0

    .line 183
    goto :goto_1

    .line 184
    :cond_0
    iget-object v5, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 186
    check-cast v5, Landroid/util/ArrayMap;

    .line 188
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 191
    move-result v5

    .line 192
    if-nez v5, :cond_1

    .line 194
    iget-object v5, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 196
    check-cast v5, Landroid/util/ArrayMap;

    .line 198
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 201
    move-result-object v5

    .line 202
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    move-result-object v5

    .line 206
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_1

    .line 212
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Ljava/lang/Integer;

    .line 218
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 221
    move-result v9

    .line 222
    const-string/jumbo v14, "simpleStick"

    .line 225
    invoke-interface {v0, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    invoke-static {v9}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 231
    move-result-object v15

    .line 232
    invoke-interface {v0, v2, v13, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    invoke-interface {v0, v2, v12, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    iget-object v9, v7, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 240
    check-cast v9, Landroid/util/ArrayMap;

    .line 242
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 248
    iget v9, v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 250
    invoke-static {v9}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    .line 253
    move-result-object v9

    .line 254
    invoke-interface {v0, v2, v11, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    iget v9, v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mToStick:I

    .line 259
    invoke-interface {v0, v2, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    const-string/jumbo v9, "inverseH"

    .line 265
    iget-boolean v15, v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseH:Z

    .line 267
    invoke-interface {v0, v2, v9, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const-string/jumbo v9, "inverseV"

    .line 273
    iget-boolean v15, v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseV:Z

    .line 275
    invoke-interface {v0, v2, v9, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string/jumbo v9, "inverseRot"

    .line 281
    iget-boolean v6, v6, Lcom/android/server/input/PersistentDataStore$GamePadStick;->mInverseRot:Z

    .line 283
    invoke-interface {v0, v2, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    invoke-interface {v0, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    goto :goto_2

    .line 290
    :cond_1
    invoke-interface {v0, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    add-int/lit8 v4, v4, 0x1

    .line 295
    const/4 v5, 0x5

    .line 296
    goto/16 :goto_0

    .line 298
    :cond_2
    invoke-interface {v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 307
    return-void
.end method

.method public final updateStickForGamePadProfiles(IIIZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    .line 15
    new-instance v0, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 17
    invoke-direct {v0, p3, p4, p5, p6}, Lcom/android/server/input/PersistentDataStore$GamePadStick;-><init>(IZZZ)V

    .line 20
    iget-object p3, p1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p4

    .line 26
    new-instance p5, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 28
    const/4 p6, 0x0

    .line 29
    invoke-direct {p5, p2, p6, p6, p6}, Lcom/android/server/input/PersistentDataStore$GamePadStick;-><init>(IZZZ)V

    .line 32
    invoke-interface {p3, p4, p5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/android/server/input/PersistentDataStore$GamePadStick;

    .line 38
    invoke-virtual {p3, v0}, Lcom/android/server/input/PersistentDataStore$GamePadStick;->isSame(Lcom/android/server/input/PersistentDataStore$GamePadStick;)Z

    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_0

    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p3, p1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpeStickMap:Ljava/util/Map;

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p2

    .line 51
    check-cast p3, Landroid/util/ArrayMap;

    .line 53
    invoke-virtual {p3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    .line 59
    invoke-virtual {v0, v0}, Lcom/android/server/input/PersistentDataStore$GamePadStick;->isSame(Lcom/android/server/input/PersistentDataStore$GamePadStick;)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 65
    iput-boolean p2, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    .line 70
    return-void
.end method
