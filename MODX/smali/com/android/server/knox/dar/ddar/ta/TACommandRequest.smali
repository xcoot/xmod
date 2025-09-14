.class public Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 13
    iput v0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 15
    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    .line 17
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Command ID = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    const-string v3, "TACommandRequest"

    .line 22
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "Version = "

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "Length = "

    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    new-array v2, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 71
    mul-int/lit8 v2, v2, 0x2

    .line 73
    add-int/lit8 v2, v2, 0x64

    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    const-string/jumbo v2, "{"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move v2, v1

    .line 85
    :goto_0
    iget v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 87
    if-ge v2, v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    .line 91
    aget-byte v4, v4, v2

    .line 93
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 96
    move-result-object v4

    .line 97
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    const-string v5, "0x%02X"

    .line 103
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 112
    if-eq v2, v4, :cond_0

    .line 114
    const-string v4, ", "

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const-string/jumbo p0, "}"

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    new-array v2, v1, [Ljava/lang/Object;

    .line 134
    invoke-static {v3, p0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 p0, 0x0

    .line 138
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    .line 140
    const-string v3, "/mnt/sdcard/sendbuf.txt"

    .line 142
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 144
    invoke-direct {v2, v3, v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 147
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 149
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 162
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    goto :goto_6

    .line 166
    :catch_0
    move-exception p0

    .line 167
    goto :goto_1

    .line 168
    :catch_1
    move-exception p0

    .line 169
    goto :goto_2

    .line 170
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    goto :goto_6

    .line 174
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    goto :goto_6

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    goto :goto_7

    .line 180
    :catch_2
    move-exception p0

    .line 181
    goto :goto_5

    .line 182
    :catchall_1
    move-exception v0

    .line 183
    move-object v1, p0

    .line 184
    :goto_3
    move-object p0, v0

    .line 185
    goto :goto_7

    .line 186
    :catch_3
    move-exception v0

    .line 187
    move-object v1, p0

    .line 188
    :goto_4
    move-object p0, v0

    .line 189
    goto :goto_5

    .line 190
    :catchall_2
    move-exception v0

    .line 191
    move-object v1, p0

    .line 192
    move-object v2, v1

    .line 193
    goto :goto_3

    .line 194
    :catch_4
    move-exception v0

    .line 195
    move-object v1, p0

    .line 196
    move-object v2, v1

    .line 197
    goto :goto_4

    .line 198
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    if-eqz v1, :cond_2

    .line 203
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 206
    :cond_2
    if-eqz v2, :cond_3

    .line 208
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 211
    :cond_3
    :goto_6
    return-void

    .line 212
    :goto_7
    if-eqz v1, :cond_4

    .line 214
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 217
    goto :goto_8

    .line 218
    :catch_5
    move-exception v0

    .line 219
    goto :goto_9

    .line 220
    :catch_6
    move-exception v0

    .line 221
    goto :goto_a

    .line 222
    :cond_4
    :goto_8
    if-eqz v2, :cond_5

    .line 224
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 227
    goto :goto_b

    .line 228
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    goto :goto_b

    .line 232
    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :cond_5
    :goto_b
    throw p0
.end method

.method public init(I[BI[B)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mVersion:I

    .line 3
    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mMagicNum:[B

    .line 5
    iput p3, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    .line 7
    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mRequest:[B

    .line 9
    if-eqz p4, :cond_0

    .line 11
    array-length p1, p4

    .line 12
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mLength:I

    .line 18
    :goto_0
    return-void
.end method
