.class public final Lcom/android/server/am/OomConnection$OomConnectionThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OomConnection;->-$$Nest$smwaitOom()[Landroid/os/OomKillRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/ProcessList$1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList$1;->handleOomEvent([Landroid/os/OomKillRecord;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "failed waiting for OOM events: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "OomConnection"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method
