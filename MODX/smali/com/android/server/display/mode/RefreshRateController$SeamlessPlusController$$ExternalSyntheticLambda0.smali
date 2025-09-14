.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$SeamlessPlusController$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "client=disp scope=normal,lpm "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Ljava/io/File;

    .line 35
    const-string v1, "/sys/class/lcd/panel/vrr_lfd"

    .line 37
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 49
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :goto_2
    return-void
.end method
