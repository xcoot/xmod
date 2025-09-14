.class public final Lcom/android/server/Watchdog$2;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/Watchdog;

.field public final synthetic val$dropboxTag:Ljava/lang/String;

.field public final synthetic val$errorId:Ljava/util/UUID;

.field public final synthetic val$report:Ljava/lang/StringBuilder;

.field public final synthetic val$stack:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/Watchdog$2;->val$dropboxTag:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/Watchdog$2;->val$report:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/Watchdog$2;->val$stack:Ljava/io/File;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/Watchdog$2;->val$errorId:Ljava/util/UUID;

    .line 10
    .line 11
    const-string/jumbo p1, "watchdogWriteToDropbox"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/Watchdog$2;->this$0:Lcom/android/server/Watchdog;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/Watchdog$2;->val$dropboxTag:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/Watchdog$2;->val$report:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    iget-object v11, v0, Lcom/android/server/Watchdog$2;->val$stack:Ljava/io/File;

    .line 18
    .line 19
    iget-object v15, v0, Lcom/android/server/Watchdog$2;->val$errorId:Ljava/util/UUID;

    .line 20
    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const-string/jumbo v5, "system_server"

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
