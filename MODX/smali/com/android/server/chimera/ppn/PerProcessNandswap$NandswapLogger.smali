.class public abstract Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mHistory:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->mHistory:Ljava/util/ArrayList;

    .line 8
    return-void
.end method

.method public static saveSwapOutLog(Ljava/lang/String;IIIJJJ)V
    .locals 3

    .line 1
    const-string v0, "[OUT] "

    .line 3
    const-string v1, " "

    .line 5
    const-string v2, " "

    .line 7
    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object p0

    .line 11
    const-string p1, " "

    .line 13
    const-string v0, " "

    .line 15
    invoke-static {p2, p3, p1, v0, p0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 18
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, " "

    .line 23
    const-string p2, " "

    .line 25
    invoke-static {p0, p1, p6, p7, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    invoke-virtual {p0, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    sget-object p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->mHistory:Ljava/util/ArrayList;

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 40
    const-string p3, "MM-dd HH:mm:ss.SSS"

    .line 42
    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance p3, Ljava/util/Date;

    .line 47
    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 50
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string p2, " "

    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result p0

    .line 81
    const/16 p2, 0x80

    .line 83
    if-le p0, p2, :cond_0

    .line 85
    const/4 p0, 0x0

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p1

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method
