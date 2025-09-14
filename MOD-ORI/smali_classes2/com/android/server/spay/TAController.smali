.class public final Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field public mContext:Landroid/content/Context;

.field public mNative:Lcom/android/server/spay/PaymentTZNative;

.field public mTAId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public static makeSysCallInternal(I)Z
    .locals 9

    .line 1
    const-string v0, "Error writting \""

    .line 2
    .line 3
    const-string v1, "/sys/class/mstldo/mst_drv/transmit"

    .line 4
    .line 5
    const-string v2, "1"

    .line 6
    .line 7
    const-string v3, "0"

    .line 8
    .line 9
    const-string v4, "/dev/mst_ctrl"

    .line 10
    .line 11
    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v7, "PaymentManagerService"

    .line 15
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const-string v0, "UNKNOWN Command ID: "

    .line 20
    .line 21
    invoke-static {p0, v0, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v6

    .line 25
    :pswitch_0
    const-string v2, "L0"

    .line 26
    .line 27
    :goto_0
    move-object v1, v5

    .line 28
    goto :goto_1

    .line 29
    :pswitch_1
    const-string v2, "b0"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    move-object v2, v3

    .line 33
    :pswitch_3
    move-object v1, v4

    .line 34
    goto :goto_1

    .line 35
    :pswitch_4
    move-object v2, v3

    .line 36
    :goto_1
    :pswitch_5
    sget-boolean p0, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Writting \""

    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "\" to -> "

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    const/4 p0, 0x0

    .line 66
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Ljava/io/FileWriter;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 78
    .line 79
    .line 80
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_1
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_3
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_8

    .line 108
    :catch_2
    move-exception p0

    .line 109
    goto :goto_5

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object v3, p0

    .line 112
    :goto_4
    move-object p0, v0

    .line 113
    goto :goto_8

    .line 114
    :catch_3
    move-exception v3

    .line 115
    move-object v8, v3

    .line 116
    move-object v3, p0

    .line 117
    move-object p0, v8

    .line 118
    goto :goto_5

    .line 119
    :catchall_2
    move-exception v0

    .line 120
    move-object v3, p0

    .line 121
    move-object v4, v3

    .line 122
    goto :goto_4

    .line 123
    :catch_4
    move-exception v3

    .line 124
    move-object v4, p0

    .line 125
    move-object p0, v3

    .line 126
    move-object v3, v4

    .line 127
    :goto_5
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, "\" to file -> "

    .line 136
    .line 137
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    .line 152
    .line 153
    if-eqz v3, :cond_1

    .line 154
    .line 155
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :catch_5
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_1
    :goto_6
    if-eqz v4, :cond_2

    .line 164
    .line 165
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :catch_6
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_7
    return v6

    .line 174
    :goto_8
    if-eqz v3, :cond_3

    .line 175
    .line 176
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 177
    .line 178
    .line 179
    goto :goto_9

    .line 180
    :catch_7
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :cond_3
    :goto_9
    if-eqz v4, :cond_4

    .line 185
    .line 186
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 187
    .line 188
    .line 189
    goto :goto_a

    .line 190
    :catch_8
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_a
    throw p0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .locals 4

    .line 1
    const-string p0, "checkCertInfo"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p0, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "PaymentManagerService"

    .line 11
    .line 12
    const-string v0, "TAController::checkCertInfo: Lets fetch them if exist"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p0, Landroid/spay/CertInfo;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/spay/CertInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object p0
.end method

.method public final clearDeviceCertificates(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string p0, "clearDeviceCertificates"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "PaymentManagerService"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 7

    .line 1
    const-string v0, "TA fd="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "loadTA"

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v2, "PaymentManagerService"

    .line 14
    .line 15
    const-string v3, "TAController::loadTA"

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_3

    .line 23
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, "PaymentManagerService"

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " offset="

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " size="

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    move-wide v3, p2

    .line 72
    move-wide v5, p4

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    .line 74
    .line 75
    .line 76
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    return p2

    .line 87
    :catchall_1
    move-exception p2

    .line 88
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_1
    move-exception p1

    .line 93
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_2
    throw p2

    .line 97
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    throw p1
.end method

.method public final makeSystemCall(I)Z
    .locals 8

    .line 1
    const-string/jumbo p0, "makeSystemCall: Successful, end time : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "makesystemcall - start time: "

    .line 5
    .line 6
    .line 7
    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 8
    .line 9
    const-string v2, "PaymentManagerService"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v3, "entered makeSystemCall in TAController - System Server process"

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string/jumbo v3, "makeSystemCall"

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, " ms"

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    const-string/jumbo p0, "makeSystemCall: failed to make system call"

    .line 61
    .line 62
    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_2
    if-eqz v1, :cond_3

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :cond_3
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return v3
.end method

.method public final processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 3

    .line 1
    const-string v0, "TAController::processTACommand: request = "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->isBinderAlive()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    const-string/jumbo v1, "processTACommand"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "PaymentManagerService"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "; request.mCommandId = "

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "; this.mTAId = "

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/android/server/spay/TAController;->mTAId:I

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    .line 61
    .line 62
    const v1, 0x90190

    .line 63
    .line 64
    .line 65
    if-ne v0, v1, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-object p1

    .line 81
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_2
    const-string p0, "PaymentManagerService"

    .line 84
    .line 85
    const-string p1, "binder for cmd is died"

    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method

.method public final unloadTA()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "unloadTA"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "PaymentManagerService"

    .line 13
    .line 14
    const-string v1, "TAController::unloadTA"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method
