.class public final Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;
.super Landroid/os/FileObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProviderSec;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "CTS restrict mode : event ="

    .line 3
    const-string v0, "GnssLocationProvider_ex"

    .line 5
    invoke-static {p1, p2, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 p2, 0x2

    .line 9
    if-ne p1, p2, :cond_2

    .line 11
    const-string p1, "CTS restrict mode : file modified!"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Ljava/io/File;

    .line 18
    const-string p2, "/sys/class/sensors/ssc_core/operation_mode"

    .line 20
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    const-string p2, ""

    .line 25
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    .line 32
    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 37
    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    .line 53
    goto :goto_6

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_5

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception v2

    .line 59
    goto :goto_1

    .line 60
    :catchall_2
    move-exception v3

    .line 61
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 64
    goto :goto_0

    .line 65
    :catchall_3
    move-exception v2

    .line 66
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 70
    :goto_1
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 73
    goto :goto_2

    .line 74
    :catchall_4
    move-exception p1

    .line 75
    :try_start_a
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :goto_2
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 79
    :goto_3
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 82
    goto :goto_4

    .line 83
    :catchall_5
    move-exception v1

    .line 84
    :try_start_c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :goto_4
    throw p1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1

    .line 88
    :catch_1
    const-string p1, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IllegalArgumentException"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_6

    .line 94
    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    goto :goto_6

    .line 98
    :catch_2
    const-string p1, "Could not access file /sys/class/sensors/ssc_core/operation_mode"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    goto :goto_6

    .line 104
    :catch_3
    const-string p1, "Could not open File /sys/class/sensors/ssc_core/operation_mode"

    .line 106
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_6
    if-nez p2, :cond_0

    .line 111
    goto :goto_7

    .line 112
    :cond_0
    const-string p1, "CTS sensorservice restrict_mode = "

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo p1, "restrict"

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_1

    .line 130
    const-string/jumbo p1, "normal"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_2

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProviderSec$CtsRestrictModeFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 141
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;

    .line 143
    const/4 v1, 0x2

    .line 144
    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/location/gnss/GnssLocationProviderSec$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 150
    :cond_2
    :goto_7
    return-void
.end method
