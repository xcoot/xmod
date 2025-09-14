.class public final Lcom/android/server/om/wallpapertheme/OverlayGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

.field public mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

.field public mThemePalette:Landroid/content/om/wallpapertheme/ThemePalette;


# virtual methods
.method public final createMonetOverlay()Ljava/util/ArrayList;
    .locals 13

    .line 1
    new-instance v0, Landroid/content/om/FabricatedOverlay$Builder;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    const-string v2, "SemWT_MonetPalette"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v1}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Landroid/content/om/FabricatedOverlay$Builder;

    .line 15
    .line 16
    const-string v3, "SemWT_G_MonetPalette"

    .line 17
    .line 18
    invoke-direct {v2, v1, v3, v1}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    const/4 v4, 0x5

    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v6, 0x1

    .line 30
    if-ge v3, v4, :cond_5

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    if-ge v3, v4, :cond_0

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v7, "accent"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v4, v3, -0x2

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string/jumbo v7, "neutral"

    .line 51
    .line 52
    .line 53
    :goto_1
    move v8, v2

    .line 54
    :goto_2
    const/16 v9, 0xd

    .line 55
    .line 56
    if-ge v8, v9, :cond_4

    .line 57
    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v10, "android:color/system_"

    .line 61
    .line 62
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v10, 0x5f

    .line 72
    .line 73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    if-eqz v8, :cond_3

    .line 77
    .line 78
    if-eq v8, v6, :cond_2

    .line 79
    .line 80
    if-eq v8, v5, :cond_1

    .line 81
    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v11, v8, -0x2

    .line 88
    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v11, "00"

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    const-string v10, "50"

    .line 106
    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    const-string v10, "10"

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    const-string v10, "0"

    .line 118
    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iget-object v10, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 127
    .line 128
    invoke-virtual {v10, v3, v8}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorSS(II)I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    const/16 v11, 0x1c

    .line 133
    .line 134
    const/4 v12, 0x0

    .line 135
    invoke-virtual {v0, v9, v11, v10, v12}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v10, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mThemePalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 139
    .line 140
    invoke-virtual {v10, v3, v8}, Landroid/content/om/wallpapertheme/ThemePalette;->getMonetColorGG(II)I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    invoke-virtual {v1, v9, v11, v10, v12}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v8, v8, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/content/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    const-string v8, "Multi window"

    .line 180
    .line 181
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_6

    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {p0, v4, v0}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v4, v1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 199
    .line 200
    new-array v3, v5, [Landroid/content/om/FabricatedOverlay;

    .line 201
    .line 202
    aput-object v0, v3, v2

    .line 203
    .line 204
    aput-object v1, v3, v6

    .line 205
    .line 206
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .line 212
    .line 213
    return-object p0
.end method

.method public final createOverlayForPkg(Landroid/content/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getUidList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "SemWT_"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Landroid/content/om/FabricatedOverlay$Builder;

    .line 24
    .line 25
    const-string v3, "android"

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v2, v3, v1, p1}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method public final createThemeOverlays()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "SESL"

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    const-string v3, "Multi window"

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createOverlayForPkg(Landroid/content/om/wallpapertheme/MetaDataManager$Package;)Landroid/content/om/FabricatedOverlay;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object v0
.end method

.method public final writeResources(Ljava/util/List;Landroid/content/om/FabricatedOverlay;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getDestAttribName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v3, ","

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string/jumbo v4, "night"

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eq v3, v7, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    if-eq v3, v0, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    if-eq v3, v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/om/wallpapertheme/TemplateManager;->getBooleans(Ljava/lang/String;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    array-length v1, v2

    .line 68
    move v3, v6

    .line 69
    :goto_1
    if-ge v3, v1, :cond_0

    .line 70
    .line 71
    aget-object v8, v2, v3

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const-string v9, "bool/"

    .line 78
    .line 79
    invoke-static {v9, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    const/16 v10, 0x12

    .line 94
    .line 95
    invoke-virtual {p2, v8, v10, v9, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    invoke-virtual {p2, v8, v10, v9, v4}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/content/om/wallpapertheme/TemplateManager;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    array-length v1, v2

    .line 123
    :goto_2
    if-ge v6, v1, :cond_0

    .line 124
    .line 125
    aget-object v3, v2, v6

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v4, "integer/"

    .line 132
    .line 133
    invoke-static {v4, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const/16 v4, 0x10

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-virtual {p2, v3, v4, v7, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v6, v6, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getOpacity()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/16 v3, 0x64

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getOpacity()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move v1, v3

    .line 167
    :goto_3
    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->getUidValue()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v8, v0}, Landroid/content/om/wallpapertheme/TemplateManager;->getColors(Ljava/lang/String;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    if-eq v1, v3, :cond_6

    .line 180
    .line 181
    int-to-float v1, v1

    .line 182
    const/high16 v3, 0x42c80000    # 100.0f

    .line 183
    .line 184
    div-float/2addr v1, v3

    .line 185
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-static {v1, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-interface {v0, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-static {v1, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    :cond_6
    array-length v1, v2

    .line 220
    move v3, v6

    .line 221
    :goto_4
    if-ge v3, v1, :cond_0

    .line 222
    .line 223
    aget-object v8, v2, v3

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    const-string v9, "color/"

    .line 230
    .line 231
    invoke-static {v9, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    check-cast v9, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    const/16 v10, 0x1c

    .line 246
    .line 247
    invoke-virtual {p2, v8, v10, v9, v5}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    invoke-virtual {p2, v8, v10, v9, v4}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_7
    return-void
.end method
