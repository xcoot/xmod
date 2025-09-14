.class public abstract Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sReclaimerLogSupport:Z = true

.field public static sReclaimerLogSupportChecked:Z = false


# direct methods
.method public static write(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "UMR: "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "UMR"

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-boolean p1, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->sReclaimerLogSupportChecked:Z

    .line 11
    .line 12
    const-string v1, "/proc/reclaimer_log"

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    sput-boolean p1, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->sReclaimerLogSupportChecked:Z

    .line 18
    .line 19
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    sput-boolean v2, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->sReclaimerLogSupport:Z

    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    sget-boolean p1, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->sReclaimerLogSupport:Z

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v2, 0x0

    .line 45
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 46
    .line 47
    new-instance v4, Ljava/io/FileOutputStream;

    .line 48
    .line 49
    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v3, v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    move-object v2, v3

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    move-object v2, v3

    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-exception p0

    .line 85
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 91
    .line 92
    .line 93
    :catch_2
    :cond_4
    :goto_1
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :goto_2
    if-eqz v2, :cond_5

    .line 98
    .line 99
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 100
    .line 101
    .line 102
    :catch_3
    :cond_5
    throw p0
.end method
