.class public final Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

.field public final mIsPortInDisplayLayoutEnabled:Z

.field public final mLayoutMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "system/displayconfig/display_layout_configuration.xml"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v1, "etc/displayconfig/display_layout_configuration.xml"

    .line 28
    .line 29
    .line 30
    filled-new-array {v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput-boolean p2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, -0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final createLayout(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Attempted to create a second layout for state "

    .line 10
    .line 11
    const-string v0, "DeviceStateToLayoutMap"

    .line 12
    .line 13
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lcom/android/server/display/layout/Layout;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final get(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/display/layout/Layout;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    move-object p1, p0

    .line 19
    check-cast p1, Lcom/android/server/display/layout/Layout;

    .line 20
    .line 21
    :cond_0
    return-object p1
.end method

.method public final getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/display/config/layout/Display;->address_optional:Ljava/math/BigInteger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/server/display/config/layout/Display;->port_optional:Ljava/math/BigInteger;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    long-to-int p0, p0

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "Must specify a display identifier in display layout configuration: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public loadLayoutsFromConfig(Ljava/io/File;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Display layout config not found: "

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "Loading display layouts from "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "DeviceStateToLayoutMap"

    .line 29
    .line 30
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 34
    .line 35
    new-instance v5, Ljava/io/FileInputStream;

    .line 36
    .line 37
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-static {v3}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto/16 :goto_a

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v2, v0

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_1
    :try_start_3
    iget-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 85
    .line 86
    :cond_2
    iget-object v2, v5, Lcom/android/server/display/config/layout/Layouts;->layout:Ljava/util/List;

    .line 87
    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_a

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/android/server/display/config/layout/Layout;

    .line 105
    .line 106
    iget-object v6, v5, Lcom/android/server/display/config/layout/Layout;->state:Ljava/math/BigInteger;

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-virtual {v0, v6}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iget-object v7, v5, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 117
    .line 118
    if-nez v7, :cond_3

    .line 119
    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v7, v5, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 126
    .line 127
    :cond_3
    iget-object v5, v5, Lcom/android/server/display/config/layout/Layout;->display:Ljava/util/List;

    .line 128
    .line 129
    check-cast v5, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_9

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    check-cast v7, Lcom/android/server/display/config/layout/Display;

    .line 146
    .line 147
    invoke-virtual {v0, v7}, Lcom/android/server/display/DeviceStateToLayoutMap;->getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iget-object v9, v7, Lcom/android/server/display/config/layout/Display;->position:Ljava/lang/String;

    .line 152
    .line 153
    const-string/jumbo v10, "front"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    const/4 v11, 0x0

    .line 161
    if-eqz v10, :cond_4

    .line 162
    .line 163
    move v13, v11

    .line 164
    goto :goto_3

    .line 165
    :cond_4
    const-string/jumbo v10, "rear"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_5

    .line 173
    .line 174
    const/4 v9, 0x1

    .line 175
    :goto_2
    move v13, v9

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    const/4 v9, -0x1

    .line 178
    goto :goto_2

    .line 179
    :goto_3
    iget-object v9, v7, Lcom/android/server/display/config/layout/Display;->leadDisplayAddress:Ljava/math/BigInteger;

    .line 180
    .line 181
    if-nez v9, :cond_6

    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    :goto_4
    move-object v14, v9

    .line 185
    goto :goto_5

    .line 186
    :cond_6
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v9

    .line 190
    invoke-static {v9, v10}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    goto :goto_4

    .line 195
    :goto_5
    iget-object v9, v7, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    .line 196
    .line 197
    if-nez v9, :cond_7

    .line 198
    .line 199
    move v9, v11

    .line 200
    goto :goto_6

    .line 201
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    :goto_6
    iget-object v10, v7, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    .line 206
    .line 207
    if-nez v10, :cond_8

    .line 208
    .line 209
    move v10, v11

    .line 210
    goto :goto_7

    .line 211
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    :goto_7
    iget-object v11, v7, Lcom/android/server/display/config/layout/Display;->displayGroup:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v12, v0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 218
    .line 219
    iget-object v15, v7, Lcom/android/server/display/config/layout/Display;->brightnessThrottlingMapId:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v0, v7, Lcom/android/server/display/config/layout/Display;->refreshRateZoneId:Ljava/lang/String;

    .line 222
    .line 223
    move-object/from16 v19, v2

    .line 224
    .line 225
    iget-object v2, v7, Lcom/android/server/display/config/layout/Display;->refreshRateThermalThrottlingMapId:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v7, v7, Lcom/android/server/display/config/layout/Display;->powerThrottlingMapId:Ljava/lang/String;

    .line 228
    .line 229
    move-object/from16 v18, v7

    .line 230
    .line 231
    move-object v7, v6

    .line 232
    move-object/from16 v16, v0

    .line 233
    .line 234
    move-object/from16 v17, v2

    .line 235
    .line 236
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v0, p0

    .line 240
    .line 241
    move-object/from16 v2, v19

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_9
    move-object/from16 v19, v2

    .line 245
    .line 246
    invoke-virtual {v6}, Lcom/android/server/display/layout/Layout;->postProcessLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    .line 249
    move-object/from16 v0, p0

    .line 250
    .line 251
    move-object/from16 v2, v19

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_a
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 256
    .line 257
    .line 258
    goto :goto_b

    .line 259
    :goto_8
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    .line 261
    .line 262
    goto :goto_9

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    move-object v3, v0

    .line 265
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_9
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 269
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v3, "Encountered an error while reading/parsing display layout config file: "

    .line 272
    .line 273
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    :goto_b
    return-void
.end method
