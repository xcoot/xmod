.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/SystemServer;->$r8$lambda$0ek3wX68xKbgZMUwZfiBRkUNTFs()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/android/server/SystemServer;->$r8$lambda$CJLFlg8wnqihjN12r-2Qq_1qSd8()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_1
    sget-object p0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 15
    .line 16
    const-string p0, "SecondaryZygotePreload"

    .line 17
    .line 18
    const-string v0, "SystemServer"

    .line 19
    .line 20
    :try_start_0
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 31
    .line 32
    array-length v2, p0

    .line 33
    if-lez v2, :cond_0

    .line 34
    .line 35
    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aget-object p0, p0, v3

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    const-string p0, "Unable to preload default resources for secondary"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    const-string v1, "Exception preloading default resources"

    .line 59
    .line 60
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void

    .line 64
    :pswitch_2
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
