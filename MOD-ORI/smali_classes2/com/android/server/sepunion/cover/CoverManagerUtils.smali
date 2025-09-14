.class public final Lcom/android/server/sepunion/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final isSupportWirelessCharge:Z

.field public static sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public static sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field public static sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "/sys/class/power_supply/wireless/present"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "CoverManager_CoverManagerUtils"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "Feature for Wireless Charge is NOT existed"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v0, "Wireless Charge is NOT Supported"

    .line 31
    .line 32
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "Wireless Charge is Supported: Type "

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    :goto_0
    sput-boolean v3, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    .line 47
    .line 48
    return-void
.end method

.method public static fileWriteInt(I)V
    .locals 4

    .line 1
    const-string v0, "/sys/class/power_supply/battery/led_cover"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "fileWriteInt to /sys/class/power_supply/battery/led_cover, "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "CoverManager_CoverManagerUtils"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq p0, v1, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Invalid value : "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 47
    .line 48
    new-instance v3, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p0

    .line 72
    move-object v1, v2

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    move-exception p0

    .line 75
    goto :goto_0

    .line 76
    :catch_2
    move-exception p0

    .line 77
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_3
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static getValueFromSysFS(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0xf

    .line 3
    :try_start_1
    new-array p1, p1, [C

    .line 4
    invoke-virtual {v1, p1}, Ljava/io/FileReader;->read([C)I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-object v0, v1

    goto :goto_4

    .line 6
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 7
    :catch_2
    :cond_1
    throw p0

    :catch_3
    :goto_2
    if-eqz v0, :cond_2

    .line 8
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_4
    :goto_4
    if-eqz v0, :cond_2

    goto :goto_3

    :catch_5
    :cond_2
    :goto_5
    return p0
.end method

.method public static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 9
    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0xf

    .line 11
    :try_start_1
    new-array p0, p0, [C

    .line 12
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-object v0, v1

    goto :goto_4

    .line 14
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 15
    :catch_2
    :cond_1
    throw p0

    :catch_3
    :goto_2
    if-eqz v0, :cond_2

    .line 16
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catch_4
    :goto_4
    if-eqz v0, :cond_2

    goto :goto_3

    :catch_5
    :cond_2
    :goto_5
    return-object p1
.end method

.method public static isBackCover(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xe

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xd

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xc

    .line 22
    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static performCPUBoostCover(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "COVER_BOOSTER"

    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    invoke-static {p0, v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v2, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 25
    .line 26
    aget v0, v0, v1

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 32
    .line 33
    const-string v2, "CoverManager_CoverManagerUtils"

    .line 34
    .line 35
    const/16 v3, 0x7d0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string/jumbo v4, "sCoverCpuBooster.acquire is failed"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string v0, "COVER_CORE_BOOSTER"

    .line 55
    .line 56
    const/16 v4, 0xe

    .line 57
    .line 58
    invoke-static {p0, v0, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    array-length v4, v0

    .line 73
    if-lez v4, :cond_2

    .line 74
    .line 75
    aget v0, v0, v1

    .line 76
    .line 77
    const/4 v4, 0x2

    .line 78
    if-lt v0, v4, :cond_2

    .line 79
    .line 80
    sget-object v4, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string/jumbo v4, "sCoverCoreNumLockHelper.acquire is failed"

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 101
    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    const-string v0, "COVER_BUS_BOOSTER"

    .line 105
    .line 106
    const/16 v4, 0x13

    .line 107
    .line 108
    invoke-static {p0, v0, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    sput-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 113
    .line 114
    if-eqz p0, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_4

    .line 121
    .line 122
    array-length v0, p0

    .line 123
    if-lez v0, :cond_4

    .line 124
    .line 125
    sget-object v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 126
    .line 127
    aget p0, p0, v1

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    sget-object p0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 133
    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_2
    move-exception p0

    .line 141
    const-string/jumbo v0, "sCoverBusBooster.acquire is failed"

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_2
    return-void
.end method
