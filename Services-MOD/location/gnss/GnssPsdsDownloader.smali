.class public final Lcom/android/server/location/gnss/GnssPsdsDownloader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONNECTION_TIMEOUT_MS:I

.field public static final READ_TIMEOUT_MS:I


# instance fields
.field public mFailReason:I

.field public final mLongTermPsdsServers:[Ljava/lang/String;

.field public mNextServerIndex:I

.field public final mPsdsServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x1e

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v1

    .line 9
    long-to-int v1, v1

    .line 10
    sput v1, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 12
    const-wide/16 v1, 0x3c

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    sput v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    .line 7
    const-string v1, "LONGTERM_PSDS_SERVER_1"

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "LONGTERM_PSDS_SERVER_2"

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "LONGTERM_PSDS_SERVER_3"

    .line 21
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 29
    move v6, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v6, v5

    .line 32
    :goto_0
    if-eqz v2, :cond_1

    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 36
    :cond_1
    if-eqz v3, :cond_2

    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 40
    :cond_2
    if-nez v6, :cond_3

    .line 42
    const-string v1, "GnssPsdsDownloader"

    .line 44
    const-string v2, "No Long-Term PSDS servers were specified in the GnssConfiguration"

    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    new-array v6, v6, [Ljava/lang/String;

    .line 55
    iput-object v6, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    .line 57
    if-eqz v1, :cond_4

    .line 59
    aput-object v1, v6, v5

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    move v4, v5

    .line 63
    :goto_1
    if-eqz v2, :cond_5

    .line 65
    add-int/lit8 v1, v4, 0x1

    .line 67
    aput-object v2, v6, v4

    .line 69
    move v4, v1

    .line 70
    :cond_5
    if-eqz v3, :cond_6

    .line 72
    add-int/lit8 v1, v4, 0x1

    .line 74
    aput-object v3, v6, v4

    .line 76
    move v4, v1

    .line 77
    :cond_6
    new-instance v1, Ljava/util/Random;

    .line 79
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    .line 85
    move-result v1

    .line 86
    iput v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 88
    :goto_2
    const-string v1, "NORMAL_PSDS_SERVER"

    .line 90
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    const-string v2, "REALTIME_PSDS_SERVER"

    .line 96
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 104
    const/4 p0, 0x2

    .line 105
    aput-object v1, v0, p0

    .line 107
    const/4 p0, 0x3

    .line 108
    aput-object p1, v0, p0

    .line 110
    return-void
.end method


# virtual methods
.method public final doDownload(Ljava/lang/String;)[B
    .locals 9

    .line 1
    const-string v0, "HTTP error downloading gnss PSDS: "

    .line 3
    const-string v1, "Downloading PSDS data from "

    .line 5
    const-string v2, "GnssPsdsDownloader"

    .line 7
    invoke-static {v1, p1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 13
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 22
    :try_start_1
    const-string v3, "Accept"

    .line 24
    const-string v4, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    .line 26
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v3, "x-wap-profile"

    .line 32
    const-string/jumbo v4, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    .line 35
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 40
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 43
    sget v3, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    .line 45
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 54
    move-result v3

    .line 55
    const/16 v4, 0xc8

    .line 57
    if-eq v3, v4, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    return-object v1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    move-object v1, p1

    .line 83
    goto :goto_3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 89
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 92
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    const/16 v4, 0x400

    .line 97
    new-array v4, v4, [B

    .line 99
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    .line 102
    move-result v5

    .line 103
    const/4 v6, -0x1

    .line 104
    if-eq v5, v6, :cond_2

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 110
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 113
    move-result v5

    .line 114
    int-to-long v5, v5

    .line 115
    const-wide/32 v7, 0xf4240

    .line 118
    cmp-long v5, v5, v7

    .line 120
    if-lez v5, :cond_1

    .line 122
    const-string v3, "PSDS file too large"

    .line 124
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x3

    .line 128
    iput v3, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    return-object v1

    .line 137
    :catchall_1
    move-exception v3

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 142
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    return-object v3

    .line 150
    :goto_0
    if-eqz v0, :cond_3

    .line 152
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 155
    goto :goto_1

    .line 156
    :catchall_2
    move-exception v0

    .line 157
    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 160
    :cond_3
    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 161
    :catchall_3
    move-exception p0

    .line 162
    goto :goto_3

    .line 163
    :catch_1
    move-exception v0

    .line 164
    move-object p1, v1

    .line 165
    :goto_2
    :try_start_9
    const-string v3, "Error downloading gnss PSDS: "

    .line 167
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 170
    if-eqz p1, :cond_4

    .line 172
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    :cond_4
    const/4 p1, 0x4

    .line 176
    iput p1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mFailReason:I

    .line 178
    return-object v1

    .line 179
    :goto_3
    if-eqz v1, :cond_5

    .line 181
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 184
    :cond_5
    throw p0
.end method
