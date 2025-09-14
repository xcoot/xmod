.class public final Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public hotspotX:F

.field public hotspotY:F

.field public final mContext:Landroid/content/Context;

.field public final mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field public final mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field public final packageNameList:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 27
    .line 28
    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo p2, "pen_detachment_notification"

    .line 40
    .line 41
    .line 42
    const/4 v1, -0x2

    .line 43
    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v1, "read setting paths = "

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string v1, "SpenThemeManager"

    .line 63
    .line 64
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v2, "set paths = "

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const-string p2, ","

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    array-length p2, p0

    .line 101
    const/4 v1, 0x2

    .line 102
    if-ge p2, v1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 p2, 0x0

    .line 106
    aget-object p2, p0, p2

    .line 107
    .line 108
    iput-object p2, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 109
    .line 110
    const/4 p2, 0x1

    .line 111
    aget-object p0, p0, p2

    .line 112
    .line 113
    iput-object p0, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 114
    .line 115
    :cond_3
    :goto_0
    const-string p0, "/system/media/audio/ui/Pen_att_noti1.ogg"

    .line 116
    .line 117
    iput-object p0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 118
    .line 119
    const-string p0, "/system/media/audio/ui/Pen_det_noti1.ogg"

    .line 120
    .line 121
    iput-object p0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v1, "spen_theme_data_file"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    .line 23
    .line 24
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/io/File;

    .line 30
    .line 31
    const-string v3, ".tmp"

    .line 32
    .line 33
    invoke-static {p0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v3, "package"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v3, "hotspotX"

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v3, "hotspotY"

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v1, 0x3

    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "hover-icon"

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 87
    if-ne v0, v1, :cond_0

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method public final saveElements(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    .line 1
    const-string v0, "hotspotY"

    .line 2
    .line 3
    const-string v1, "hotspotX"

    .line 4
    .line 5
    const-string/jumbo v2, "package"

    .line 6
    .line 7
    .line 8
    const-string v3, "hover-icon"

    .line 9
    .line 10
    :try_start_0
    check-cast p1, Lcom/android/internal/util/FastXmlSerializer;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v4, v2}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aget-object v5, v5, v6

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v5}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p1, v4, v2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v0, "save = "

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "SpenThemeManager"

    .line 96
    .line 97
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final setAttachSoundPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "attach sound = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SpenThemeManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setDetachSoundPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "detach sound = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SpenThemeManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object p1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "icon package name = "

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aget-object v3, v3, v4

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "icon hotspotX = "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", hotspotY = "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 51
    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
