.class public final Lcom/android/server/location/nsflp/NSKmlWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSixtyRadian:D

.field public static final sThirtyRadian:D


# instance fields
.field public final mDebugInfoList:Ljava/util/List;

.field public final mNmeaKmlInfoList:Ljava/util/List;

.field public final mPositionKmlInfoMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/android/server/location/nsflp/NSKmlWriter;->sThirtyRadian:D

    .line 9
    const-wide v0, 0x4056800000000000L    # 90.0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Lcom/android/server/location/nsflp/NSKmlWriter;->sSixtyRadian:D

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    .line 25
    return-void
.end method

.method public static createZipFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 12
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 15
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 17
    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 22
    invoke-direct {v1, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 30
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipEntry;

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v3, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 42
    const/16 p0, 0x400

    .line 44
    new-array p0, p0, [B

    .line 46
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_1

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v1, p0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 62
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 68
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 74
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    goto :goto_7

    .line 80
    :catchall_2
    move-exception p0

    .line 81
    goto :goto_5

    .line 82
    :catchall_3
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 87
    goto :goto_2

    .line 88
    :catchall_4
    move-exception v2

    .line 89
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 93
    :goto_3
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 96
    goto :goto_4

    .line 97
    :catchall_5
    move-exception v1

    .line 98
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    :goto_4
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 102
    :goto_5
    :try_start_b
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 105
    goto :goto_6

    .line 106
    :catchall_6
    move-exception p1

    .line 107
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    :goto_6
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 111
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 114
    goto :goto_8

    .line 115
    :catchall_7
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :goto_8
    throw p0
.end method

.method public static getCourseArrow(Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    .line 6
    cmpg-float v1, v2, v1

    .line 8
    if-gtz v1, :cond_0

    .line 10
    const-string v0, ""

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget v1, v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->course:F

    .line 15
    float-to-double v3, v1

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 19
    move-result-wide v3

    .line 20
    float-to-double v1, v2

    .line 21
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 23
    div-double/2addr v1, v5

    .line 24
    const-wide v5, 0x40f86a0000000000L    # 100000.0

    .line 29
    div-double/2addr v1, v5

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 33
    move-result-wide v5

    .line 34
    mul-double/2addr v5, v1

    .line 35
    iget-wide v7, v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 37
    add-double/2addr v5, v7

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 41
    move-result-wide v9

    .line 42
    mul-double/2addr v9, v1

    .line 43
    iget-wide v11, v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    .line 45
    add-double/2addr v9, v11

    .line 46
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    .line 48
    div-double/2addr v1, v13

    .line 49
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 51
    add-double/2addr v3, v13

    .line 52
    sget-wide v13, Lcom/android/server/location/nsflp/NSKmlWriter;->sThirtyRadian:D

    .line 54
    sub-double v13, v3, v13

    .line 56
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 59
    move-result-wide v15

    .line 60
    mul-double/2addr v15, v1

    .line 61
    move-wide/from16 v17, v11

    .line 63
    sub-double v11, v5, v15

    .line 65
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 68
    move-result-wide v13

    .line 69
    mul-double/2addr v13, v1

    .line 70
    sub-double v13, v9, v13

    .line 72
    sget-wide v15, Lcom/android/server/location/nsflp/NSKmlWriter;->sSixtyRadian:D

    .line 74
    sub-double/2addr v3, v15

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 78
    move-result-wide v15

    .line 79
    mul-double/2addr v15, v1

    .line 80
    move-wide/from16 v19, v13

    .line 82
    sub-double v13, v5, v15

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 87
    move-result-wide v3

    .line 88
    mul-double/2addr v3, v1

    .line 89
    sub-double v0, v9, v3

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, ","

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    move-wide/from16 v7, v17

    .line 106
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, ",0.0 "

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-wide/from16 v7, v19

    .line 134
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ",0.0"

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    const-string v2, "<LineString><coordinates>\n"

    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, "\n"

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, "</coordinates></LineString>\n"

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    return-object v0
.end method

.method public static getDebugKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;
    .locals 13

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    const-string/jumbo p0, "getDebugKmlInfo, wrong data length : "

    .line 9
    const-string v1, "NSKmlWriter"

    .line 11
    invoke-static {v0, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    aget-object v4, p0, v2

    .line 19
    const/4 v2, 0x1

    .line 20
    aget-object v5, p0, v2

    .line 22
    const/4 v2, 0x2

    .line 23
    aget-object v2, p0, v2

    .line 25
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 28
    move-result-wide v6

    .line 29
    const/4 v2, 0x3

    .line 30
    aget-object v8, p0, v2

    .line 32
    const/4 v2, 0x4

    .line 33
    aget-object v9, p0, v2

    .line 35
    const/4 v2, 0x5

    .line 36
    aget-object v10, p0, v2

    .line 38
    const/4 v2, 0x6

    .line 39
    aget-object v11, p0, v2

    .line 41
    aget-object v1, p0, v1

    .line 43
    const-string v2, "ENGINE_OFF"

    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    const/16 v2, 0xa

    .line 53
    if-le v0, v2, :cond_1

    .line 55
    aget-object p0, p0, v2

    .line 57
    const-string v0, "/"

    .line 59
    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    move-object v12, p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v12, v1

    .line 66
    :goto_0
    new-instance p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    .line 68
    move-object v3, p0

    .line 69
    invoke-direct/range {v3 .. v12}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0
.end method

.method public static getNmeaKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x9

    .line 7
    if-lt v1, v3, :cond_8

    .line 9
    const/4 v1, 0x1

    .line 10
    aget-object v4, v0, v1

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 15
    move-result v4

    .line 16
    const/16 v5, 0x8

    .line 18
    if-ge v4, v5, :cond_0

    .line 20
    goto/16 :goto_7

    .line 22
    :cond_0
    const/4 v4, 0x2

    .line 23
    aget-object v4, v0, v4

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string v6, "A"

    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 37
    return-object v2

    .line 38
    :cond_1
    const/4 v2, 0x3

    .line 39
    aget-object v2, v0, v2

    .line 41
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    move-result-wide v6

    .line 45
    const/4 v2, 0x4

    .line 46
    aget-object v2, v0, v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const/4 v4, 0x5

    .line 53
    aget-object v8, v0, v4

    .line 55
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 58
    move-result-wide v8

    .line 59
    const/4 v10, 0x6

    .line 60
    aget-object v10, v0, v10

    .line 62
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 65
    move-result-object v10

    .line 66
    const/4 v11, 0x7

    .line 67
    aget-object v12, v0, v11

    .line 69
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 72
    move-result v12

    .line 73
    const/4 v13, 0x0

    .line 74
    if-eqz v12, :cond_2

    .line 76
    move/from16 v20, v13

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    aget-object v12, v0, v11

    .line 81
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    move-result v12

    .line 85
    const v14, 0x3fed0e56    # 1.852f

    .line 88
    mul-float/2addr v12, v14

    .line 89
    move/from16 v20, v12

    .line 91
    :goto_0
    aget-object v12, v0, v5

    .line 93
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 96
    move-result v12

    .line 97
    if-eqz v12, :cond_3

    .line 99
    :goto_1
    move/from16 v21, v13

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    aget-object v12, v0, v5

    .line 104
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 107
    move-result v13

    .line 108
    goto :goto_1

    .line 109
    :goto_2
    aget-object v3, v0, v3

    .line 111
    aget-object v0, v0, v1

    .line 113
    const/4 v12, 0x0

    .line 114
    invoke-virtual {v0, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    const-string v12, "."

    .line 120
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_5

    .line 126
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 129
    move-result-object v12

    .line 130
    new-instance v13, Ljava/text/SimpleDateFormat;

    .line 132
    const-string v14, "HHmmss"

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 137
    move-result-object v15

    .line 138
    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 141
    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 144
    move-result-object v13

    .line 145
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 151
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    move-result v0

    .line 159
    const/16 v5, 0xd

    .line 161
    if-lt v0, v4, :cond_4

    .line 163
    invoke-virtual {v12, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 166
    goto :goto_3

    .line 167
    :catch_0
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 172
    move-result-object v0

    .line 173
    const-string v1, "%02d%02d%02d"

    .line 175
    const/16 v4, 0xb

    .line 177
    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    .line 180
    move-result v4

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v4

    .line 185
    const/16 v11, 0xc

    .line 187
    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    .line 190
    move-result v11

    .line 191
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    .line 198
    move-result v5

    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v5

    .line 203
    filled-new-array {v4, v11, v5}, [Ljava/lang/Object;

    .line 206
    move-result-object v4

    .line 207
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_5

    .line 212
    :goto_4
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 215
    const-string v0, ""

    .line 217
    :cond_5
    :goto_5
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v22

    .line 221
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 226
    mul-double/2addr v6, v0

    .line 227
    double-to-int v3, v6

    .line 228
    int-to-double v3, v3

    .line 229
    sub-double/2addr v6, v3

    .line 230
    const-wide v11, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    .line 235
    mul-double/2addr v6, v11

    .line 236
    add-double/2addr v6, v3

    .line 237
    const-string v3, "S"

    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v2

    .line 243
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 245
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 247
    if-eqz v2, :cond_6

    .line 249
    move-wide v15, v13

    .line 250
    goto :goto_6

    .line 251
    :cond_6
    move-wide v15, v3

    .line 252
    :goto_6
    mul-double v16, v6, v15

    .line 254
    mul-double/2addr v8, v0

    .line 255
    double-to-int v0, v8

    .line 256
    int-to-double v0, v0

    .line 257
    sub-double/2addr v8, v0

    .line 258
    mul-double/2addr v8, v11

    .line 259
    add-double/2addr v8, v0

    .line 260
    const-string v0, "W"

    .line 262
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_7

    .line 268
    move-wide v3, v13

    .line 269
    :cond_7
    mul-double v18, v8, v3

    .line 271
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 273
    const-string/jumbo v15, "gps"

    .line 276
    const/16 v23, 0x0

    .line 278
    move-object v14, v0

    .line 279
    invoke-direct/range {v14 .. v23}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;-><init>(Ljava/lang/String;DDFFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V

    .line 282
    return-object v0

    .line 283
    :cond_8
    :goto_7
    return-object v2
.end method

.method public static getPositionKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
    .locals 14

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x8

    .line 5
    if-ge v0, v2, :cond_0

    .line 7
    const-string/jumbo p0, "getPositionKmlInfo, wrong data length : "

    .line 10
    const-string v2, "NSKmlWriter"

    .line 12
    invoke-static {v0, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    return-object v1

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    aget-object v12, p0, v3

    .line 19
    const/4 v3, 0x1

    .line 20
    aget-object v5, p0, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    aget-object v3, p0, v3

    .line 25
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 28
    move-result-wide v6

    .line 29
    const/4 v3, 0x3

    .line 30
    aget-object v3, p0, v3

    .line 32
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 35
    move-result-wide v8

    .line 36
    const/4 v3, 0x5

    .line 37
    aget-object v3, p0, v3

    .line 39
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 42
    move-result v10

    .line 43
    const/4 v3, 0x7

    .line 44
    aget-object v3, p0, v3

    .line 46
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    move-result v11

    .line 50
    const-string/jumbo v3, "gps"

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 59
    if-le v0, v2, :cond_1

    .line 61
    aget-object p0, p0, v2

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    move-result p0

    .line 67
    if-ltz p0, :cond_1

    .line 69
    invoke-static {}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 72
    move-result-object v0

    .line 73
    array-length v0, v0

    .line 74
    if-ge p0, v0, :cond_1

    .line 76
    invoke-static {}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 79
    move-result-object v0

    .line 80
    aget-object v1, v0, p0

    .line 82
    :cond_1
    move-object v13, v1

    .line 83
    new-instance p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 85
    move-object v4, p0

    .line 86
    invoke-direct/range {v4 .. v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;-><init>(Ljava/lang/String;DDFFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V

    .line 89
    return-object p0
.end method

.method public static getStyle(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "gps"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const-string p0, "#lineStyleRed"

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "#pointStyleRed"

    .line 17
    :goto_0
    return-object p0

    .line 18
    :cond_1
    const-string/jumbo v0, "network"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_3

    .line 27
    if-eqz p1, :cond_2

    .line 29
    const-string p0, "#lineStyleYellow"

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const-string p0, "#pointStyleYellow"

    .line 34
    :goto_1
    return-object p0

    .line 35
    :cond_3
    if-eqz p1, :cond_4

    .line 37
    const-string p0, "#lineStyleGreen"

    .line 39
    goto :goto_2

    .line 40
    :cond_4
    const-string p0, "#pointStyleGreen"

    .line 42
    :goto_2
    return-object p0
.end method
