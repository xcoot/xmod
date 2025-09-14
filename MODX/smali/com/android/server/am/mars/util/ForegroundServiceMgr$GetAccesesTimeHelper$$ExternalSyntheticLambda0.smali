.class public final synthetic Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 6
    iput p2, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 3
    iget v2, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 12
    new-instance v13, Landroid/os/RemoteCallback;

    .line 14
    new-instance p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {p0, v0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;)V

    .line 19
    invoke-direct {v13, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 22
    const/4 v7, 0x3

    .line 23
    const-wide/16 v8, 0x0

    .line 25
    const-wide v10, 0x7fffffffffffffffL

    .line 30
    const/16 v12, 0x1f

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x3

    .line 35
    invoke-interface/range {v1 .. v13}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    sget v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    .line 42
    const-string v0, "ForegroundServiceMgr"

    .line 44
    const-string/jumbo v1, "exception"

    .line 47
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    return-void
.end method
