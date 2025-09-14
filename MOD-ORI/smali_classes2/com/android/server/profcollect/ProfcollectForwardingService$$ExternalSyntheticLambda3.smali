.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBatchDexoptStart(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "dex2oat_trace_freq"

    .line 9
    .line 10
    const/16 p2, 0x19

    .line 11
    .line 12
    const-string/jumbo p3, "profcollect_native_boot"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p1, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/16 p3, 0x64

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ge p2, p1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 p3, 0x3

    .line 42
    invoke-direct {p2, p3, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p3, 0x3e8

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
