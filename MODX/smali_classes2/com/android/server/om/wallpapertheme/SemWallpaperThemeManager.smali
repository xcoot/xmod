.class public final Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentMonetOverlays:Ljava/util/ArrayList;

.field public mCurrentThemeOverlays:Ljava/util/ArrayList;

.field public final mExceptionHandler:Landroid/os/Handler;

.field public final mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

.field public final mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

.field public final mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/om/wallpapertheme/ThemePalette;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/om/wallpapertheme/ThemePalette;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 10
    .line 11
    new-instance v1, Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 17
    .line 18
    new-instance v2, Landroid/content/om/wallpapertheme/TemplateManager;

    .line 19
    .line 20
    invoke-direct {v2, v1, v0}, Landroid/content/om/wallpapertheme/TemplateManager;-><init>(Landroid/content/om/wallpapertheme/MetaDataManager;Landroid/content/om/wallpapertheme/ThemePalette;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v3, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 31
    .line 32
    iput-object v2, v3, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 33
    .line 34
    iput-object v0, v3, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 35
    .line 36
    iput-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 37
    .line 38
    new-instance v0, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    return-void
.end method

.method public static readLastPalette()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/data/overlays/wallpapertheme/last_palette.txt"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 21
    .line 22
    new-instance v4, Ljava/io/InputStreamReader;

    .line 23
    .line 24
    new-instance v5, Ljava/io/FileInputStream;

    .line 25
    .line 26
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "UTF-8"

    .line 30
    .line 31
    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    .line 37
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    move-object v2, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_1
    move-exception v1

    .line 67
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_2
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_2
    return-object v0
.end method

.method public static splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x41

    .line 10
    .line 11
    if-le v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    const/16 p0, 0x82

    .line 21
    .line 22
    invoke-virtual {v0, v3, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 p1, 0x1

    .line 40
    if-ne p0, p1, :cond_0

    .line 41
    .line 42
    move v2, p1

    .line 43
    :cond_0
    return v2

    .line 44
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    return v2
.end method


# virtual methods
.method public final applyDynamicColor()V
    .locals 9

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorSS(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x5

    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorSS(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 31
    .line 32
    iget-boolean v2, v2, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v2, "MONOCHROMATIC"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v2, "TONAL_SPOT"

    .line 40
    .line 41
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v5, Ljava/sql/Timestamp;

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    const-string v6, "_applied_timestamp"

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/sql/Timestamp;->getTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v5, "android.theme.customization.color_index"

    .line 65
    .line 66
    const-string v6, "0"

    .line 67
    .line 68
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v5, "android.theme.customization.system_palette"

    .line 72
    .line 73
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v5, "android.theme.customization.accent_color"

    .line 77
    .line 78
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v1, "android.theme.customization.color_source"

    .line 82
    .line 83
    const-string/jumbo v5, "preset"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v1, "android.theme.customization.theme_style"

    .line 90
    .line 91
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v5, "setDynamicColorPalette, e : "

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    array-length v5, v2

    .line 127
    :goto_3
    if-ge v3, v5, :cond_2

    .line 128
    .line 129
    aget v6, v2, v3

    .line 130
    .line 131
    const-string/jumbo v7, "theme_customization_overlay_packages"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-static {v1, v7, v8, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_1
    move-exception v1

    .line 145
    const-string v2, "applyDynamicColor posted delay, due: "

    .line 146
    .line 147
    invoke-static {v1, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 151
    .line 152
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-direct {v1, p0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    .line 156
    .line 157
    .line 158
    const-wide/16 v2, 0x3e8

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    .line 162
    .line 163
    :cond_2
    return-void
.end method

.method public final disableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 9

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    const-wide/16 v1, 0x2000

    .line 4
    .line 5
    :try_start_0
    const-string v3, "SWT:disableMonetOverlay"

    .line 6
    .line 7
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v3, p0

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v5, v3, :cond_0

    .line 20
    .line 21
    aget v6, p0, v5

    .line 22
    .line 23
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    .line 24
    .line 25
    const-string v8, "SemWT_MonetPalette"

    .line 26
    .line 27
    invoke-direct {v7, v0, v8}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v7, v4, v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 31
    .line 32
    .line 33
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    .line 34
    .line 35
    const-string v8, "SemWT_G_MonetPalette"

    .line 36
    .line 37
    invoke-direct {v7, v0, v8}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v7, v4, v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string p0, "SWT_ThemeManager"

    .line 49
    .line 50
    const-string p1, "disable palette theme overlay"

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final disableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:disableThemeOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    const/4 v5, 0x0

    .line 44
    move v6, v5

    .line 45
    :goto_1
    if-ge v6, v4, :cond_1

    .line 46
    .line 47
    aget v7, v2, v6

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {p1, v8, v5, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string p0, "SWT_ThemeManager"

    .line 60
    .line 61
    const-string p1, "disable color theme overlay"

    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final enableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 9

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    const-wide/16 v1, 0x2000

    .line 4
    .line 5
    :try_start_0
    const-string v3, "SWT:enableMonetOverlay"

    .line 6
    .line 7
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateMonetOverlay()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    array-length v3, p0

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_1
    if-ge v4, v3, :cond_1

    .line 37
    .line 38
    aget v5, p0, v4

    .line 39
    .line 40
    new-instance v6, Landroid/content/om/OverlayIdentifier;

    .line 41
    .line 42
    const-string v7, "SemWT_MonetPalette"

    .line 43
    .line 44
    invoke-direct {v6, v0, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-virtual {p1, v6, v7, v5}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 49
    .line 50
    .line 51
    new-instance v6, Landroid/content/om/OverlayIdentifier;

    .line 52
    .line 53
    const-string v8, "SemWT_G_MonetPalette"

    .line 54
    .line 55
    invoke-direct {v6, v0, v8}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v6, v7, v5}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string p0, "SWT_ThemeManager"

    .line 65
    .line 66
    const-string p1, "enable palette theme overlay"

    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:enableThemeOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_1
    if-ge v5, v4, :cond_1

    .line 45
    .line 46
    aget v6, v2, v5

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const/4 v8, 0x1

    .line 53
    invoke-virtual {p1, v7, v8, v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string p0, "SWT_ThemeManager"

    .line 60
    .line 61
    const-string p1, "enable color theme overlay"

    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final generateMonetOverlay()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:generateMonetOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "SWT_ThemeManager"

    .line 9
    .line 10
    const-string v3, "generate palette theme overlay"

    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createMonetOverlay()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/ThemePalette;->writeLastPalette()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final generateThemeOverlay()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:generateThemeOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "SWT_ThemeManager"

    .line 9
    .line 10
    const-string v3, "generate color theme overlay"

    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createThemeOverlays()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final registerMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:registerMonetOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateMonetOverlay()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/om/FabricatedOverlay;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string p0, "SWT_ThemeManager"

    .line 36
    .line 37
    const-string/jumbo p1, "register palette theme overlay"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:registerThemeOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/om/FabricatedOverlay;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string p0, "SWT_ThemeManager"

    .line 36
    .line 37
    const-string/jumbo p1, "register color theme overlay"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final restoreMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayInfo;)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:restoreMonetOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    const-string v2, "android"

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    :try_start_1
    new-instance p2, Landroid/content/om/OverlayIdentifier;

    .line 13
    .line 14
    const-string v3, "MonetPalette"

    .line 15
    .line 16
    invoke-direct {p2, v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createMonetOverlay()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    array-length p2, p0

    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_2
    if-ge v3, p2, :cond_2

    .line 62
    .line 63
    aget v4, p0, v3

    .line 64
    .line 65
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    .line 66
    .line 67
    const-string v6, "SemWT_MonetPalette"

    .line 68
    .line 69
    invoke-direct {v5, v2, v6}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    invoke-virtual {p1, v5, v6, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 74
    .line 75
    .line 76
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    .line 77
    .line 78
    const-string v7, "SemWT_G_MonetPalette"

    .line 79
    .line 80
    invoke-direct {v5, v2, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v5, v6, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final saveThemeParkSingleThemeState()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget v4, v0, v3

    .line 13
    .line 14
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string/jumbo v6, "themepark_singletheme_state"

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v6, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "[ThemePark FRRO] saveThemeParkSingleThemeState posted delay, due: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "SWT_ThemeManager"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x3e8

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final saveWallpaperThemeColor()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteGG()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteGG()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 39
    .line 40
    iget-boolean v3, v3, Landroid/content/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v0, ""

    .line 44
    .line 45
    move-object v2, v0

    .line 46
    move v3, v1

    .line 47
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    array-length v6, v5

    .line 60
    :goto_1
    if-ge v1, v6, :cond_2

    .line 61
    .line 62
    aget v7, v5, v1

    .line 63
    .line 64
    const-string/jumbo v8, "wallpapertheme_color"

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v8, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    const-string/jumbo v8, "wallpapertheme_color_for_g"

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v8, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    const-string/jumbo v8, "wallpapertheme_color_isgray"

    .line 77
    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    const-string v9, "1"

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    const-string v9, "0"

    .line 87
    .line 88
    :goto_2
    invoke-static {v4, v8, v9, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_3
    const-string/jumbo v1, "saveWallpaperThemeColor posted delay, due: "

    .line 95
    .line 96
    .line 97
    const-string v2, "SWT_ThemeManager"

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 103
    .line 104
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-direct {v1, p0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    .line 108
    .line 109
    .line 110
    const-wide/16 v2, 0x3e8

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public final saveWallpaperThemeState(I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget v3, v0, v2

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string/jumbo v5, "wallpapertheme_state"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v1, "saveWallpaperThemeState posted delay, due: "

    .line 30
    .line 31
    .line 32
    const-string v2, "SWT_ThemeManager"

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;II)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p0, 0x3e8

    .line 46
    .line 47
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final setTemplateAsColorTheme()Z
    .locals 6

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2, v3}, Landroid/content/om/wallpapertheme/TemplateManager;->loadStaticTemplate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "loading template, error = "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move v2, v1

    .line 32
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 33
    .line 34
    const-wide/16 v4, 0x2280

    .line 35
    .line 36
    invoke-interface {v3, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    const-string p0, "Couldn\'t get package list properly, stop setTemplateAsColorTheme"

    .line 43
    .line 44
    invoke-static {v0, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :catch_2
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 71
    .line 72
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    invoke-static {v5}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeTemplate(Landroid/content/pm/ApplicationInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 81
    .line 82
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Landroid/content/om/wallpapertheme/TemplateManager;->update(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    return v2

    .line 89
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string/jumbo v3, "setTemplateAsColorTheme, ex = "

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v3, "Couldn\'t get package list properly, stop setTemplateAsColorTheme. ex = "

    .line 111
    .line 112
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v0, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v1
.end method

.method public final syncWallpaperThemeStateForUser(I)V
    .locals 11

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    const-string/jumbo v1, "wallpapertheme_color_isgray"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "wallpapertheme_color_for_g"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "wallpapertheme_color"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "wallpapertheme_state"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "syncWallpaperThemeStateForUser for user:"

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, -0x1

    .line 25
    invoke-static {v6, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/4 v8, 0x1

    .line 30
    if-ne v7, v8, :cond_1

    .line 31
    .line 32
    invoke-static {v6, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-static {v6, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v6, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-static {v6, v4, v7, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 45
    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    if-eqz v9, :cond_0

    .line 50
    .line 51
    if-eqz v10, :cond_0

    .line 52
    .line 53
    invoke-static {v6, v3, v8, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v2, v9, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    invoke-static {v6, v1, v10, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", state:"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_1
    const-string/jumbo v2, "syncWallpaperThemeStateForUser posted delay, due: "

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;II)V

    .line 101
    .line 102
    .line 103
    const-wide/16 p0, 0x3e8

    .line 104
    .line 105
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    :cond_1
    :goto_2
    return-void
.end method

.method public final unregisterNotExistedOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    const-wide/16 v0, 0x2000

    .line 2
    .line 3
    :try_start_0
    const-string v2, "SWT:unregisterNotExistedOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v5, "SWT_ThemeManager"

    .line 21
    .line 22
    if-eqz v4, :cond_4

    .line 23
    .line 24
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/content/om/OverlayIdentifier;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    const-string v7, "SemWT_MonetPalette"

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_0

    .line 43
    .line 44
    const-string v7, "SemWT_G_MonetPalette"

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v7, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_3

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Landroid/content/om/FabricatedOverlay;

    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8, v4}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v8, "unregister not existed overlay : "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v5, v6}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string/jumbo p1, "unregisterNotExistedOverlay, dur:"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide p1

    .line 124
    sub-long/2addr p1, v2

    .line 125
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public final updateTemplateMetadataFromPkg(Landroid/content/pm/PackageInfo;)V
    .locals 9

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    const-string/jumbo v1, "updateTemplateMetadataFromPkg, packageName = "

    .line 4
    .line 5
    .line 6
    const-string v2, "Update installed package\'s metadata : "

    .line 7
    .line 8
    const-string v3, "Update installed package\'s template : "

    .line 9
    .line 10
    const-string v4, "SWT:updateTemplateMetadataFromPkg, pkg:"

    .line 11
    .line 12
    const-wide/16 v5, 0x2000

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    :try_start_0
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeNotSupport(Landroid/content/pm/ApplicationInfo;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    sget-object p0, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :try_start_1
    sget-object v8, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeTemplate(Landroid/content/pm/ApplicationInfo;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/content/om/wallpapertheme/TemplateManager;->update(Landroid/content/pm/ApplicationInfo;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-static {v4}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeMeta(Landroid/content/pm/ApplicationInfo;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 115
    .line 116
    invoke-virtual {p0, v4}, Landroid/content/om/wallpapertheme/MetaDataManager;->update(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, ", ex = "

    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v0, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :goto_2
    return-void

    .line 150
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_4
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final updateThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/lang/String;I)V
    .locals 10

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    const-string v1, "SWT:updateThemeOverlay : "

    .line 4
    .line 5
    const-wide/16 v2, 0x2000

    .line 6
    .line 7
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq p3, v1, :cond_5

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 26
    .line 27
    iget-object v4, v1, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/content/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createOverlayForPkg(Landroid/content/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v5, "update color theme overlay, pkg = "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, ", overlay = "

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    const/4 v5, 0x0

    .line 101
    if-ne p3, v4, :cond_2

    .line 102
    .line 103
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 104
    .line 105
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    array-length v6, p3

    .line 110
    move v7, v5

    .line 111
    :goto_1
    if-ge v7, v6, :cond_2

    .line 112
    .line 113
    aget v8, p3, v7

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {p1, v9, v4, v8}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 120
    .line 121
    .line 122
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_4

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string p3, "SemWT_"

    .line 137
    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_2
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-ge v5, p3, :cond_4

    .line 155
    .line 156
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    check-cast p3, Landroid/content/om/FabricatedOverlay;

    .line 163
    .line 164
    invoke-virtual {p3}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    if-eqz p3, :cond_3

    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string p3, "Remove old one from array, pkg = "

    .line 189
    .line 190
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method
