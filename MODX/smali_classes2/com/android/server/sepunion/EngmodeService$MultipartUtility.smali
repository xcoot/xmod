.class public final Lcom/android/server/sepunion/EngmodeService$MultipartUtility;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final boundary:Ljava/lang/String;

.field public final httpConn:Ljava/net/HttpURLConnection;

.field public final outputStream:Ljava/io/OutputStream;

.field public final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "==="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/net/URL;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v3, "multipart/form-data; boundary="

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "Content-Type"

    .line 67
    .line 68
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/16 v0, 0x2710

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    .line 84
    .line 85
    if-nez p2, :cond_0

    .line 86
    .line 87
    const-string p2, "ISO-8859-1"

    .line 88
    .line 89
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    .line 90
    .line 91
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 92
    .line 93
    invoke-direct {v2, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final addByteArrayPart([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "--"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "\r\n"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 29
    .line 30
    const-string v2, "Content-Disposition: form-data; name=\"tokenreq\"; filename=\"tokenreq\""

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 40
    .line 41
    const-string v2, "Content-Type: multipart/form-data"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 51
    .line 52
    const-string v2, "Content-Transfer-Encoding: binary"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final finish()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 2
    .line 3
    const-string v1, "\r\n"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "--"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0xc8

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, -0x1

    .line 77
    if-eq v2, v3, :cond_0

    .line 78
    .line 79
    int-to-byte v2, v2

    .line 80
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_2
    return-object v0

    .line 108
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 109
    .line 110
    const-string v1, "Server returned non-OK status: "

    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method
