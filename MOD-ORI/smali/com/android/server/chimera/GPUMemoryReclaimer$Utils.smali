.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static readFileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/BufferedReader;

    .line 7
    .line 8
    const/16 v1, 0x800

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method
