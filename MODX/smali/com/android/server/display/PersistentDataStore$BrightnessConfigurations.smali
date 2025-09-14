.class public final Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigurations:Landroid/util/SparseArray;

.field public final mPackageNames:Landroid/util/SparseArray;

.field public final mSetConfigurations:Landroid/util/SparseArray;

.field public final mSetPackageNames:Landroid/util/SparseArray;

.field public final mSetTimeStamps:Landroid/util/SparseLongArray;

.field public final mTimeStamps:Landroid/util/SparseLongArray;


# direct methods
.method public static -$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    .line 9
    if-eqz p1, :cond_2

    .line 11
    if-nez p3, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    :cond_2
    :goto_1
    if-eq v0, p1, :cond_6

    .line 55
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 63
    :cond_3
    if-eqz p1, :cond_5

    .line 65
    if-nez p3, :cond_4

    .line 67
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    :goto_2
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    move-result-wide v0

    .line 84
    invoke-virtual {p3, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 87
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 95
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 100
    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 103
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 105
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    :goto_3
    const/4 p0, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 p0, 0x0

    .line 111
    :goto_4
    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseLongArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseLongArray;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 46
    return-void
.end method

.method public static fileWriteInt(I)V
    .locals 4

    .line 1
    const-string v0, "/data/log/BC_Position"

    .line 3
    const-string/jumbo v1, "fileWriteInt : /data/log/BC_Position  value : "

    .line 6
    const-string v2, "DisplayManager.PersistentDataStore"

    .line 8
    invoke-static {p0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 14
    new-instance v3, Ljava/io/File;

    .line 16
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    goto :goto_1

    .line 50
    :catch_2
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    :catch_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    const-string v2, "  "

    .line 10
    if-ge v0, v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 20
    const-wide/16 v3, -0x1

    .line 22
    invoke-virtual {v2, v1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 25
    move-result-wide v5

    .line 26
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 34
    const-string v7, "      User "

    .line 36
    const-string v8, ":"

    .line 38
    invoke-static {v1, p1, v7, v8}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    cmp-long v1, v5, v3

    .line 43
    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "        set at: "

    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    :cond_0
    if-eqz v2, :cond_1

    .line 68
    const-string v1, "        set by: "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    const-string v2, "        "

    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string p0, "UTF-8"

    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\n\n dumpSetBrightnessConfiguration_1"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/io/File;

    .line 127
    const-string v1, "/data/log/Brightness_Configurations_1"

    .line 129
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 138
    new-instance v1, Ljava/util/Scanner;

    .line 140
    invoke-direct {v1, v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    :goto_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_3

    .line 163
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 166
    :cond_4
    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "\n\n dumpSetBrightnessConfiguration_2"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/io/File;

    .line 188
    const-string v1, "/data/log/Brightness_Configurations_2"

    .line 190
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 199
    new-instance v1, Ljava/util/Scanner;

    .line 201
    invoke-direct {v1, v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    :goto_4
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_5

    .line 210
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    goto :goto_4

    .line 218
    :catch_1
    move-exception p0

    .line 219
    goto :goto_5

    .line 220
    :cond_5
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    goto :goto_6

    .line 224
    :goto_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 227
    :cond_6
    :goto_6
    return-void
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 10

    .line 1
    const-string v0, "DisplayManager.PersistentDataStore"

    .line 3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 6
    move-result v1

    .line 7
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 13
    const-string/jumbo v2, "brightness-configuration"

    .line 16
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 27
    :try_start_0
    const-string/jumbo v3, "user-serial"

    .line 30
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v3

    .line 36
    const-string v4, "Failed to read in brightness configuration"

    .line 38
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v3, -0x1

    .line 42
    :goto_1
    const-string/jumbo v4, "package-name"

    .line 45
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    const-string/jumbo v5, "timestamp"

    .line 52
    const-wide/16 v6, -0x1

    .line 54
    invoke-interface {p1, v2, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 57
    move-result-wide v8

    .line 58
    :try_start_1
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    .line 61
    move-result-object v2

    .line 62
    if-ltz v3, :cond_0

    .line 64
    if-eqz v2, :cond_0

    .line 66
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    cmp-long v2, v8, v6

    .line 73
    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 77
    invoke-virtual {v2, v3, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v2

    .line 82
    goto :goto_3

    .line 83
    :cond_1
    :goto_2
    if-eqz v4, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 87
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    goto :goto_0

    .line 91
    :goto_3
    const-string v3, "Failed to load brightness configuration!"

    .line 93
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public final saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, "\n  set at: "

    .line 4
    const-string/jumbo v0, "readFromFile /data/log/BC_Position: "

    .line 7
    const-string v3, "/data/log/BC_Position"

    .line 9
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v7, "DisplayManager.PersistentDataStore"

    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v4, :cond_2

    .line 20
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 22
    new-instance v9, Ljava/io/File;

    .line 24
    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v3, "r"

    .line 30
    invoke-direct {v4, v9, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-object v3, v8

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-object v3, v8

    .line 59
    move-object v4, v3

    .line 60
    :catch_2
    :goto_0
    const-string v0, "IOException in readFromFile"

    .line 62
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v4, :cond_0

    .line 67
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 70
    goto :goto_1

    .line 71
    :catch_3
    const-string v0, "Exception in readFromFile"

    .line 73
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 78
    const-string v0, "/data/log/BC_Position : data is null."

    .line 80
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, -0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_1
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 89
    goto :goto_3

    .line 90
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    const-string v4, "/data/log/BC_Position : data is \""

    .line 94
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "\""

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string/jumbo v0, "make new position file"

    .line 116
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V

    .line 122
    :goto_2
    move v0, v6

    .line 123
    :goto_3
    const-string v3, "/data/log/Brightness_Configurations_1"

    .line 125
    if-eqz v0, :cond_7

    .line 127
    const v4, 0x186a0

    .line 130
    const-string v9, "/data/log/Brightness_Configurations_2"

    .line 132
    const/4 v10, 0x2

    .line 133
    if-eq v0, v5, :cond_5

    .line 135
    if-eq v0, v10, :cond_3

    .line 137
    :try_start_5
    const-string v0, "Error case"

    .line 139
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 143
    :catch_5
    move-exception v0

    .line 144
    move-object v3, v8

    .line 145
    goto/16 :goto_7

    .line 147
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 149
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v7, Ljava/io/FileInputStream;

    .line 154
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 157
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    .line 160
    move-result v9

    .line 161
    if-gt v9, v4, :cond_4

    .line 163
    new-instance v3, Ljava/io/FileOutputStream;

    .line 165
    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 168
    :goto_4
    move-object v8, v7

    .line 169
    goto :goto_8

    .line 170
    :catch_6
    move-exception v0

    .line 171
    :goto_5
    move-object v3, v7

    .line 172
    goto :goto_7

    .line 173
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 175
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/io/FileOutputStream;

    .line 180
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 183
    :try_start_7
    invoke-static {v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 186
    goto :goto_4

    .line 187
    :catch_7
    move-exception v0

    .line 188
    move-object v8, v3

    .line 189
    goto :goto_5

    .line 190
    :cond_5
    :try_start_8
    new-instance v0, Ljava/io/File;

    .line 192
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v3, Ljava/io/FileInputStream;

    .line 197
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 200
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    .line 203
    move-result v7

    .line 204
    if-gt v7, v4, :cond_6

    .line 206
    new-instance v4, Ljava/io/FileOutputStream;

    .line 208
    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 211
    :goto_6
    move-object v8, v3

    .line 212
    move-object v3, v4

    .line 213
    goto :goto_8

    .line 214
    :catch_8
    move-exception v0

    .line 215
    goto :goto_7

    .line 216
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 218
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    new-instance v4, Ljava/io/FileOutputStream;

    .line 223
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 226
    :try_start_a
    invoke-static {v10}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 229
    goto :goto_6

    .line 230
    :catch_9
    move-exception v0

    .line 231
    move-object v8, v4

    .line 232
    goto :goto_7

    .line 233
    :cond_7
    :try_start_b
    new-instance v0, Ljava/io/File;

    .line 235
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v3, Ljava/io/FileOutputStream;

    .line 240
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 243
    goto :goto_8

    .line 244
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    move-object v14, v8

    .line 248
    move-object v8, v3

    .line 249
    move-object v3, v14

    .line 250
    :goto_8
    if-eqz v3, :cond_f

    .line 252
    :goto_9
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 254
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 257
    move-result v0

    .line 258
    if-ge v6, v0, :cond_f

    .line 260
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 262
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 265
    move-result v0

    .line 266
    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 268
    const-wide/16 v9, -0x1

    .line 270
    invoke-virtual {v4, v0, v9, v10}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 273
    move-result-wide v4

    .line 274
    iget-object v7, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    .line 276
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v7

    .line 280
    check-cast v7, Ljava/lang/String;

    .line 282
    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    .line 284
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    const-string v10, "\n\n User "

    .line 289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v0, ":"

    .line 297
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v0

    .line 304
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 306
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 324
    move-result-object v10

    .line 325
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 339
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    .line 346
    move-result v0

    .line 347
    int-to-long v10, v0

    .line 348
    const-wide/32 v12, 0x36ee80

    .line 351
    div-long v12, v10, v12

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-long/2addr v4, v10

    .line 362
    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v4, " GMT : "

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    const-string v4, "\n  set by: "

    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 416
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 418
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 421
    move-result-object v0

    .line 422
    if-nez v0, :cond_8

    .line 424
    const-string v0, "\n   Same Configuration"

    .line 426
    goto/16 :goto_d

    .line 428
    :catch_a
    move-exception v0

    .line 429
    goto/16 :goto_e

    .line 431
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    const-string v4, "\n   "

    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v4, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 443
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 461
    const-string v4, "),"

    .line 463
    const-string v5, " ("

    .line 465
    if-eqz p1, :cond_a

    .line 467
    :try_start_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 470
    move-result v7

    .line 471
    if-eqz v7, :cond_a

    .line 473
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 476
    move-result-object v0

    .line 477
    const-string v7, "\n   weight: "

    .line 479
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 486
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    move-result v9

    .line 490
    if-eqz v9, :cond_9

    .line 492
    new-instance v7, Ljava/lang/StringBuilder;

    .line 494
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    move-result-object v9

    .line 504
    check-cast v9, Ljava/lang/String;

    .line 506
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object v7

    .line 516
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 518
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 521
    move-result-object v9

    .line 522
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 525
    goto :goto_a

    .line 526
    :cond_9
    move-object v0, v7

    .line 527
    :cond_a
    if-eqz p2, :cond_c

    .line 529
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_c

    .line 535
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 538
    move-result-object v0

    .line 539
    const-string v7, "\n   timeWeights: "

    .line 541
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 543
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 546
    move-result-object v9

    .line 547
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 550
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    move-result v9

    .line 554
    if-eqz v9, :cond_b

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    .line 558
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    move-result-object v9

    .line 568
    check-cast v9, Ljava/lang/String;

    .line 570
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    move-result-object v7

    .line 580
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 582
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 585
    move-result-object v9

    .line 586
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 589
    goto :goto_b

    .line 590
    :cond_b
    move-object v0, v7

    .line 591
    :cond_c
    if-eqz p3, :cond_e

    .line 593
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 596
    move-result v7

    .line 597
    if-eqz v7, :cond_e

    .line 599
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 602
    move-result-object v0

    .line 603
    const-string v7, "\n   continuityWeights: "

    .line 605
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 607
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 610
    move-result-object v9

    .line 611
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 614
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    move-result v9

    .line 618
    if-eqz v9, :cond_d

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    .line 622
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    move-result-object v9

    .line 632
    check-cast v9, Ljava/lang/String;

    .line 634
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    move-result-object v7

    .line 644
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 646
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 649
    move-result-object v9

    .line 650
    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 653
    goto :goto_c

    .line 654
    :cond_d
    move-object v0, v7

    .line 655
    :cond_e
    :goto_d
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 657
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 664
    goto :goto_f

    .line 665
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 670
    goto/16 :goto_9

    .line 672
    :cond_f
    if-eqz v3, :cond_10

    .line 674
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 677
    goto :goto_10

    .line 678
    :catch_b
    move-exception v0

    .line 679
    move-object v1, v0

    .line 680
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 683
    :cond_10
    :goto_10
    if-eqz v8, :cond_11

    .line 685
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 688
    goto :goto_11

    .line 689
    :catch_c
    move-exception v0

    .line 690
    move-object v1, v0

    .line 691
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    :cond_11
    :goto_11
    return-void
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    .line 24
    const/4 v3, 0x0

    .line 25
    const-string/jumbo v4, "brightness-configuration"

    .line 28
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    const-string/jumbo v5, "user-serial"

    .line 34
    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/String;

    .line 45
    if-eqz v5, :cond_0

    .line 47
    const-string/jumbo v6, "package-name"

    .line 50
    invoke-interface {p1, v3, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 55
    const-wide/16 v6, -0x1

    .line 57
    invoke-virtual {v5, v1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 60
    move-result-wide v8

    .line 61
    cmp-long v1, v8, v6

    .line 63
    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "timestamp"

    .line 68
    invoke-interface {p1, v3, v1, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    :cond_1
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 74
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method
