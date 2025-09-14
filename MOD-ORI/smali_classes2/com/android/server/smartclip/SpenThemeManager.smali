.class public final Lcom/android/server/smartclip/SpenThemeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMonitor:Lcom/android/server/smartclip/SpenThemeManager$1;

.field public final mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

.field public final mRegistered:Z

.field public final mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenThemeManager$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/server/smartclip/SpenThemeManager$1;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$2;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenThemeManager$2;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    const-string v4, "SpenThemeManager"

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    const-string p1, "There\'s no data file to load"

    .line 48
    .line 49
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 54
    .line 55
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v6, 0x2

    .line 76
    if-ne v5, v6, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-string v7, "hover-icon"

    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    if-ne v5, v3, :cond_1

    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v2

    .line 109
    :try_start_4
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v5, "failed parsing "

    .line 116
    .line 117
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catch_1
    const-string/jumbo p1, "no current wallpaper -- first boot?"

    .line 132
    .line 133
    .line 134
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "load = "

    .line 140
    .line 141
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :goto_5
    const/4 p1, 0x0

    .line 163
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    .line 164
    .line 165
    invoke-static {v0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 173
    .line 174
    .line 175
    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 176
    goto :goto_6

    .line 177
    :catch_2
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    move-object v0, p1

    .line 182
    :goto_6
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 183
    .line 184
    iget v2, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 185
    .line 186
    iget v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 187
    .line 188
    invoke-static {v0, v2, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    .line 189
    .line 190
    .line 191
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 192
    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/server/smartclip/SpenThemeManager$1;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v0, v1, p1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 201
    .line 202
    .line 203
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 204
    .line 205
    const-string/jumbo p0, "package monitor registered."

    .line 206
    .line 207
    .line 208
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :goto_7
    return-void
.end method

.method public static getRootDir()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "/overlays"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    const-string v2, "/spen_theme"

    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/16 v2, 0x1f9

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 54
    .line 55
    .line 56
    :cond_0
    return-object v1
.end method

.method public static getThemeFile(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    const-string/jumbo v0, "spen_theme_pen_hover_icon"

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo p0, "spen_theme_pen_detach_sound"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string/jumbo p0, "spen_theme_pen_attach_sound"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    new-instance p0, Ljava/io/File;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public static setPenHoverIcon(Ljava/io/FileDescriptor;FF)V
    .locals 4

    .line 11
    const-string v0, "SpenThemeManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0, v1, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set icon image = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 14
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v1

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "set icon pointer icon = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x1

    .line 16
    invoke-static {p0, v1, p1}, Landroid/view/PointerIcon;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;Z)V

    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 15
    .line 16
    aget-object p2, p2, p3

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 27
    .line 28
    aput-object v0, p1, p3

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    move p1, v1

    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-static {p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 40
    .line 41
    invoke-direct {v2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    invoke-static {p2, p4}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception p2

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p2

    .line 58
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p4

    .line 63
    :try_start_4
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :goto_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :goto_2
    iget-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 73
    .line 74
    aput-object p1, p2, p3

    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    const/4 p1, 0x1

    .line 82
    :goto_3
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :try_start_5
    new-instance p3, Ljava/io/FileOutputStream;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-direct {p3, p4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 95
    .line 96
    .line 97
    :try_start_6
    new-instance p4, Ljava/io/BufferedOutputStream;

    .line 98
    .line 99
    invoke-direct {p4, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 100
    .line 101
    .line 102
    :try_start_7
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, p4, v2}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveElements(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 128
    .line 129
    .line 130
    invoke-static {p3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 134
    .line 135
    .line 136
    :try_start_8
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 137
    .line 138
    .line 139
    :try_start_9
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :catchall_2
    move-exception p0

    .line 144
    goto :goto_5

    .line 145
    :catchall_3
    move-exception p0

    .line 146
    :try_start_a
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catchall_4
    move-exception p4

    .line 151
    :try_start_b
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_4
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 155
    :goto_5
    :try_start_c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :catchall_5
    move-exception p3

    .line 160
    :try_start_d
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :goto_6
    throw p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 164
    :catch_1
    invoke-virtual {p2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 165
    .line 166
    .line 167
    :goto_7
    return p1
.end method

.method public final deleteFile(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    return-void
.end method

.method public final setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "set attach sound package = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", file = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", file name = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SpenThemeManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 p2, 0x0

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-static {v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-nez p3, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public final setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "set detach sound package = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", file = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", file name = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SpenThemeManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-static {v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "set icon package = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iput p3, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 4
    iput p4, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-static {v1, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 10
    invoke-static {v1, p0, p0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    :goto_1
    return-void
.end method
