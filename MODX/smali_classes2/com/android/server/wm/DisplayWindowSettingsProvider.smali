.class public final Lcom/android/server/wm/DisplayWindowSettingsProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

.field public final mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 10
    .line 11
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettingsStorage;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 17
    .line 18
    return-void
.end method

.method public static getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    return-object v0
.end method

.method public static getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    return-object v0
.end method

.method public static getVendorSettingsFile()Landroid/util/AtomicFile;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "etc/display_settings.xml"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 28
    .line 29
    const-string/jumbo v2, "wm-displays"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public static readConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 3

    .line 1
    const-string v0, "identifier"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mIdentifierType:I

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static readDisplay(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "windowingMode"

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {p0, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 25
    .line 26
    const-string/jumbo v3, "userRotationMode"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 34
    .line 35
    const-string/jumbo v3, "userRotation"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 43
    .line 44
    const-string v3, "forcedWidth"

    .line 45
    .line 46
    invoke-interface {p0, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 51
    .line 52
    const-string v3, "forcedHeight"

    .line 53
    .line 54
    invoke-interface {p0, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 59
    .line 60
    const-string v3, "forcedDensity"

    .line 61
    .line 62
    invoke-interface {p0, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 67
    .line 68
    const-string v3, "forcedScalingMode"

    .line 69
    .line 70
    invoke-static {p0, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 75
    .line 76
    const-string/jumbo v3, "removeContentMode"

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 84
    .line 85
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 93
    .line 94
    const-string/jumbo v0, "shouldShowSystemDecors"

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 102
    .line 103
    const-string/jumbo v0, "shouldShowIme"

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    xor-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "imePolicy"

    .line 126
    .line 127
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 132
    .line 133
    :goto_0
    const-string v0, "fixedToUserRotation"

    .line 134
    .line 135
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 140
    .line 141
    const-string v0, "ignoreOrientationRequest"

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 148
    .line 149
    const-string v0, "ignoreDisplayCutout"

    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 156
    .line 157
    const-string v0, "dontMoveToTop"

    .line 158
    .line 159
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Ljava/util/Map;

    .line 168
    .line 169
    check-cast p1, Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method


# virtual methods
.method public final getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getOverrideSettingsSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroid/util/ArrayMap;

    .line 23
    .line 24
    iget-object v3, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Landroid/util/ArrayMap;

    .line 37
    .line 38
    iget-object v4, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_2
    new-instance p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 67
    .line 68
    invoke-direct {p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 76
    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 94
    .line 95
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 110
    .line 111
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 112
    .line 113
    :cond_5
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 118
    .line 119
    if-eq v0, v1, :cond_6

    .line 120
    .line 121
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 122
    .line 123
    :cond_6
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 128
    .line 129
    if-eq v0, v1, :cond_7

    .line 130
    .line 131
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 132
    .line 133
    :cond_7
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 138
    .line 139
    if-eq v0, v1, :cond_8

    .line 140
    .line 141
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 142
    .line 143
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 156
    .line 157
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 158
    .line 159
    :cond_9
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 160
    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    iget v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 164
    .line 165
    if-eq v0, v1, :cond_a

    .line 166
    .line 167
    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 168
    .line 169
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 170
    .line 171
    if-eqz v0, :cond_b

    .line 172
    .line 173
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_b

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 182
    .line 183
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 184
    .line 185
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 186
    .line 187
    if-eqz v0, :cond_c

    .line 188
    .line 189
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_c

    .line 196
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 198
    .line 199
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 200
    .line 201
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 202
    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_d

    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 214
    .line 215
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 216
    .line 217
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 218
    .line 219
    if-eqz v0, :cond_e

    .line 220
    .line 221
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_e

    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 230
    .line 231
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 232
    .line 233
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 234
    .line 235
    if-eqz v0, :cond_f

    .line 236
    .line 237
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_f

    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 246
    .line 247
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 248
    .line 249
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 250
    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_10

    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 262
    .line 263
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 264
    .line 265
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 266
    .line 267
    if-eqz v0, :cond_11

    .line 268
    .line 269
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_11

    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 278
    .line 279
    iput-object v0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 280
    .line 281
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 282
    .line 283
    if-eqz v0, :cond_12

    .line 284
    .line 285
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_12

    .line 292
    .line 293
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 294
    .line 295
    iput-object p0, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 296
    .line 297
    :cond_12
    return-object p1
.end method

.method public final setBaseSettingsFilePath(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance p1, Landroid/util/AtomicFile;

    .line 19
    .line 20
    const-string/jumbo v1, "wm-displays"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "display settings "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " does not exist, using vendor defaults"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "WindowManager"

    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getVendorSettingsFile()Landroid/util/AtomicFile;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_1
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$AtomicFileStorage;-><init>(Landroid/util/AtomicFile;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setBaseSettingsStorage(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;-><init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$ReadableSettingsStorage;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mBaseSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;

    .line 7
    .line 8
    return-void
.end method

.method public final updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->getOrCreateSettingsEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->setTo(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->writeSettings()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
