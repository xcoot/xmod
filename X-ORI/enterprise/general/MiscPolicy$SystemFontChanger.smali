.class public final Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

.field public final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getFontString()[Ljava/lang/String;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/enterprise/general/font/TypefaceFinder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 10
    .line 11
    new-instance v1, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/util/Vector;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/Vector;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0x80

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    move v10, v7

    .line 46
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-ge v10, v11, :cond_2

    .line 51
    .line 52
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    const-string/jumbo v12, "com.monotype.android.font.droidserifitalic"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    const-string/jumbo v12, "com.monotype.android.font."

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-eqz v12, :cond_1

    .line 78
    .line 79
    invoke-virtual {v4, v11, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    iget-object v13, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 96
    .line 97
    invoke-virtual {v13, v12, v11}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_5

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 109
    .line 110
    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    move-object v2, v0

    .line 124
    :goto_3
    if-nez v2, :cond_3

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    new-array p0, p0, [Ljava/lang/String;

    .line 132
    .line 133
    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ge v7, v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/String;

    .line 144
    .line 145
    aput-object v0, p0, v7

    .line 146
    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    return-object p0

    .line 151
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    .line 153
    .line 154
    throw p0
.end method

.method public final savePreferences(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo v3, "com.android.settings"

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-nez v2, :cond_0

    .line 24
    .line 25
    const-string p0, "MiscPolicy"

    .line 26
    .line 27
    const-string p1, "Setting Context is Null"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string/jumbo v3, "prefs"

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "SelectDialogIsActive"

    .line 46
    .line 47
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    const-string v5, "SavedClickedItem"

    .line 51
    .line 52
    invoke-interface {v3, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string/jumbo v3, "flip_font_style"

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, "_preferences"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v2, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "MONOTYPE"

    .line 103
    .line 104
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    .line 106
    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    .line 109
    .line 110
    return-void
.end method
