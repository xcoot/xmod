.class public final Lcom/android/server/pm/ProcessLoggingHandler$1;
.super Landroid/content/pm/IOnChecksumsReadyListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/pm/ApkChecksum;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getValue()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "ProcessLoggingHandler"

    .line 41
    .line 42
    const-string/jumbo v0, "requestChecksums() failed to return SHA256, see logs for details."

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-static {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method
