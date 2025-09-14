.class public final Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static SERVER_URI:Ljava/lang/String; = "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"


# direct methods
.method public static -$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[BI)[B
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p2, p0, :cond_0

    .line 3
    .line 4
    const-string p0, "https://kwb.secmobilesvc.com:7788/requestapi/trq/5/token.kwb"

    .line 5
    .line 6
    sput-object p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x2

    .line 10
    if-ne p2, p0, :cond_1

    .line 11
    .line 12
    const-string p0, "https://kwb.secmobilesvc.com:7788/requestapi/tak/5/token.kwb"

    .line 13
    .line 14
    sput-object p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 17
    :try_start_0
    new-instance p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p2, v0, p0}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->addByteArrayPart([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->finish()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-array v0, v0, [B

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v1, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Byte;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object p0, v0

    .line 62
    goto :goto_3

    .line 63
    :catch_1
    move-exception p1

    .line 64
    move-object p2, p0

    .line 65
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    :try_start_2
    iget-object p1, p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 73
    .line 74
    .line 75
    iget-object p1, p2, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_3
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
